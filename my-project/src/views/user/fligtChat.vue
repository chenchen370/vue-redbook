<template>
  <div>
    <div>
      <label for="flight-search">搜索航班号:</label>
      <input
        type="text"
        id="flight-search"
        v-model="searchQuery"
        @input="filterFlights"
        placeholder="输入航班号，例如: AA123"
        style="font-size: 16px; padding: 10px; width: 300px; margin-right: 10px;"
      />
      <button 
        @click="showSearchResult" 
        style="font-size: 16px; padding: 10px 20px;"
      >
        搜索
      </button>
    </div>

    <div v-if="searchResult" class="search-result">
      当前搜索的航班号: {{ searchResult }}
    </div>

    <div class="grid-container">
      <div v-for="(flight, index) in filteredFlights" :key="index" class="grid-item">
        <img :src="flight.image" :alt="`${flight.flightNumber} 的图片`" />
        <div class="flight-info">
          <h3>{{ flight.flightNumber }}</h3>
          <p>终点站: {{ flight.destination }}</p>
          <p>日期: {{ flight.date }}</p>
          <p>航空公司: {{ flight.airline }}</p>
          <router-link :to="`/groupChat?flightNumber=${flight.flightNumber}&flightDate=${flight.date}`">
            <button>进入聊天群组</button>
          </router-link>
        </div>
      </div>
    </div>

    <div v-if="filteredFlights.length === 0" class="no-results">
      没有找到与 "{{ searchQuery }}" 匹配的航班。
    </div>
  </div>
</template>

<script setup>
import { ref, computed } from 'vue';

// 模拟航班数据
const flights = ref([
  {
    "flightNumber": "AA123",
    "destination": "纽约",
    "date": "2024-10-14",
    "airline": "美国航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005821.png"
  },
  {
    "flightNumber": "BB456",
    "destination": "洛杉矶",
    "date": "2024-10-14",
    "airline": "达美航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005832.png"
  },
  {
    "flightNumber": "CC789",
    "destination": "芝加哥",
    "date": "2024-10-15",
    "airline": "联合航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005841.png"
  },
  {
    "flightNumber": "DD321",
    "destination": "旧金山",
    "date": "2024-10-15",
    "airline": "西南航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005849.png"
  },
  {
    "flightNumber": "EE654",
    "destination": "迈阿密",
    "date": "2024-10-16",
    "airline": "美国航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005855.png"
  },
  {
    "flightNumber": "FF987",
    "destination": "西雅图",
    "date": "2024-10-16",
    "airline": "达美航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005903.png"
  },
  {
    "flightNumber": "GG234",
    "destination": "波士顿",
    "date": "2024-10-17",
    "airline": "联合航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005910.png"
  },
  {
    "flightNumber": "AH876",
    "destination": "亚特兰大",
    "date": "2024-10-17",
    "airline": "西南航空",
    "image": "http://localhost:3000/api/flights/QQ截图20241013005917.png"
  }
]);

const searchQuery = ref('');
const searchResult = ref('');
const filteredFlights = computed(() => {
  if (!searchQuery.value) {
    return flights.value;
  }
  return flights.value.filter(flight => flight.flightNumber.includes(searchQuery.value.toUpperCase()));
});

// 显示搜索结果
const showSearchResult = () => {
  searchResult.value = searchQuery.value;
};
</script>

<style scoped>
.grid-container {
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* 每行两个 */
  gap: 16px; /* 网格间距 */
  padding: 16px; /* 内边距 */
}

.grid-item {
  background: #f9f9f9; /* 项目背景 */
  border: 1px solid #ddd; /* 边框 */
  border-radius: 8px; /* 圆角 */
  padding: 10px; /* 内部填充 */
  display: flex;
  flex-direction: column; /* 垂直排列内容 */
  align-items: center; /* 水平居中 */
}

.grid-item img {
  width: 100%; /* 图片宽度 */
  height: auto; /* 自适应高度 */
  border-radius: 4px; /* 圆角 */
}

.flight-info {
  text-align: center; /* 文本居中 */
}

.search-result {
  margin: 16px 0;
  font-size: 1.2em;
  color: #333;
}

.no-results {
  margin: 16px 0;
  font-size: 1.2em;
  color: red; /* 提示色 */
}
</style>
