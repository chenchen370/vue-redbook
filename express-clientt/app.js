const express = require('express');
const apiRoutes = require('./routes/api');
const path = require('path');
const app = express();
const multer = require('multer');
const cors = require('cors');
const fs = require('fs');
const PORT = process.env.PORT || 3000;
const pool = require('./config/db');
const router = express.Router();
// 设置静态文件目录
app.use('/images', express.static(path.join(__dirname, 'assets/images')));
// 使用路由
app.use('/api', apiRoutes);

app.use(cors());
app.use(express.json({ limit: '10mb' })); // 支持大数据体
app.use(express.urlencoded({ extended: true }));



app.get('/api/images/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets/images', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});

app.get('/api/author_avatars/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets/author_avatars', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});

app.get('/api/places/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets/places', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});

app.get('/api/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});


app.get('/api/flights/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets/flights/', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});


app.get('/api/groups/:imageName', (req, res) => {
    const imageName = req.params.imageName;
    const imagePath = path.join(__dirname, 'assets/groups/', imageName);

    // 发送图片文件
    res.sendFile(imagePath, (err) => {
        if (err) {
            res.status(err.status).end();
        }
    });
});

app.post('/api/uploadNote', async (req, res) => {
    const { title, content, image,username } = req.body;

    // 保存图片
    const base64Data = image.replace(/^data:image\/\w+;base64,/, "");
    const fileName = `${Date.now()}.png`; // 使用时间戳作为文件名
    const filePath = path.join(__dirname, 'assets/images', fileName);

    try {
        // 保存图片到文件系统
        await fs.promises.writeFile(filePath, base64Data, 'base64');
        
        // 将数据添加到数据库
        const [result] = await pool.query(
            'INSERT INTO user_info (caption, content, images,username) VALUES (?, ?, ?,?)', 
            [title, content, "images/"+fileName,username]
        );



        // 返回成功响应
        res.json({ message: '上传成功', id: result.insertId, title, content, imagePath: filePath,username:username });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: '保存图片或添加数据失败' });
    }
});




app.post('/api/updateUserData', async (req, res) => {
    const { username, password, sex, description, age, img_src, red_id } = req.body;

    console.log('Updating user:', username);

    let fileName = null;
    
    // 如果有图片，则处理图片
    if (img_src) {
        const base64Data = img_src.replace(/^data:image\/\w+;base64,/, ""); // 清理 base64 数据头
        fileName = `${Date.now()}.png`; // 使用时间戳作为文件名
        const filePath = path.join(__dirname, 'assets', fileName); // 设置保存路径

        try {
            // 保存图片到文件系统
            await fs.promises.writeFile(filePath, base64Data, 'base64');
        } catch (err) {
            console.error('Error saving image:', err);
            return res.status(500).json({ message: '保存图片失败' });
        }
    }

    // 更新用户信息
    try {
        const updateQuery = `
            UPDATE login 
            SET username = ?, password = ?, sex = ?, description = ?, age = ?, img_src = ?
            WHERE red_id = ?
        `;

        const params = [
            username,
            password,
            sex,
            description,
            age,
            fileName, // 如果有 img_src，则添加到参数中
            red_id
        ];

        await pool.query(updateQuery, params);
        res.json({ message: '用户信息更新成功' });
    } catch (err) {
        console.error('Error updating user:', err);
        res.status(500).json({ message: '更新用户信息失败' });
    }
});

// 关注用户
app.post('/follow', async (req, res) => {
    const { username, bloggerId } = req.body;

    try {
        await pool.query(
            'INSERT INTO focus (username, bloger) VALUES (?, ?)',
            [username, bloggerId]
        );
        res.json({ message: '关注成功' });
    } catch (err) {
        console.error('关注用户失败:', err);
        res.status(500).json({ message: '关注失败' });
    }
});

// 取消关注用户
app.post('/unfollow', async (req, res) => {
    const { username, bloggerId } = req.body;

    try {
        await pool.query(
            'DELETE FROM focus WHERE username = ? AND bloger = ?',
            [username, bloggerId]
        );
        res.json({ message: '取消关注成功' });
    } catch (err) {
        console.error('取消关注用户失败:', err);
        res.status(500).json({ message: '取消关注失败' });
    }
});




















app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
