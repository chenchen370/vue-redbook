<template>
    <!-- <h3>我的谷歌地图</h3> -->
    <div id="map" style="width: 100%; height: 70vh;"></div>
</template>

<script setup>
import { onMounted } from 'vue';
import { useRoute } from 'vue-router';

const route = useRoute();
/* global google */
onMounted(() => {
    // 初始化并添加地图
    initMap();
});






// 初始化地图
function initMap() {
    // 地图的中心坐标（示例为北京）
      // 从 URL 中读取参数并赋值
      const center = { lat: 39.915, lng: 116.404 };
    const lat = parseFloat(route.query.lat);
    const lng = parseFloat(route.query.lng);
    
    if (!isNaN(lat) && !isNaN(lng)) {
        center.value = { lat, lng };
    }
    
    
    // 创建地图，指定中心和缩放级别
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 18,
        center: center,
    });

    // 定义图钉位置
    const locations  = [
    { lat: 39.9042, lng: 116.4074, title: "北京", content: "欢迎来到北京！" },
    { lat: 39.914749, lng: 116.405111, title: "乾清宫", content: "欢迎来到乾清宫！" },
    { lat: 39.915, lng: 116.404, title: "天安门广场", content: "天安门广场是中国的标志性地点。" },
    { lat: 39.908, lng: 116.397, title: "故宫博物院", content: "故宫是中国古代皇宫，现为博物馆。" },
    { lat: 39.9925, lng: 116.3909, title: "颐和园", content: "颐和园是中国最大的皇家园林。" },
    { lat: 39.913, lng: 116.391, title: "天坛", content: "天坛是明清两代皇帝祭天的地方。" },
    { lat: 40.004, lng: 116.328, title: "八达岭长城", content: "八达岭长城是长城最著名的部分之一。" },
    { lat: 39.925, lng: 116.397, title: "王府井", content: "王府井是北京著名的购物区。" },
    { lat: 39.941, lng: 116.328, title: "北京动物园", content: "北京动物园是中国最大的动物园之一。" },
    { lat: 39.9133, lng: 116.392, title: "北海公园", content: "北海公园是北京最古老的皇家园林之一。" },
    { lat: 39.9045, lng: 116.418, title: "胡同", content: "胡同是北京传统的巷子，有着丰富的文化。" },
    { lat: 39.916, lng: 116.397, title: "国家大剧院", content: "国家大剧院是一座现代化的艺术表演场所。" },
    { lat: 39.9085, lng: 116.3852, title: "中国科技馆", content: "中国科技馆是展示科技成果的重要场所。" },
    { lat: 39.907, lng: 116.391, title: "毛主席纪念堂", content: "毛主席纪念堂是纪念毛泽东的地方。" },
    { lat: 39.9408, lng: 116.364, title: "景山公园", content: "景山公园是观赏故宫全景的最佳地点。" },
    { lat: 39.915, lng: 116.384, title: "798艺术区", content: "798艺术区是北京著名的当代艺术中心。" },
    { lat: 39.929, lng: 116.433, title: "长安街", content: "长安街是北京的主要干道之一。" },
    { lat: 39.902, lng: 116.394, title: "中国国家博物馆", content: "中国国家博物馆是展示中国历史与文化的重要场所。" },
    { lat: 40.002, lng: 116.335, title: "圆明园", content: "圆明园是清代皇家园林，以其风景如画而闻名。" },
    { lat: 39.916, lng: 116.376, title: "南锣鼓巷", content: "南锣鼓巷是北京著名的文化街区。" },
    { lat: 39.935, lng: 116.392, title: "北京欢乐谷", content: "北京欢乐谷是大型主题乐园，适合家庭游玩。" }
];


    // 添加图钉和信息窗口
    locations.forEach(location => {
        const marker = new google.maps.Marker({
            position: { lat: location.lat, lng: location.lng },
            map: map,
            title: location.title,
        });

        const infoWindow = new google.maps.InfoWindow({
            content: `<h4>${location.title}</h4><p>${location.content}</p>`,
        });

        marker.addListener("click", () => {
            infoWindow.open(map, marker);
        });
    });
}
</script>

<style scoped>
#map {
    width: 100%;
    height: 70vh; /* 高度占满 70% */
}
</style>
