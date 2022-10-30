<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref } from 'vue'
const items = ref([{ name1: 'Foo', image1: "https://rv.darren.ee.eu.org/thumbs/bluemap.jpg", url1:"https://rv.darren.ee.eu.org/bluemapcreative/", name2: 'Homeassistant', image2: "https://rv.darren.ee.eu.org/thumbs/homeassistant.jpg", url2:"https://hass.darrenmc.ee.eu.org"}])
</script>

<template>
	<table class="links">
	  <li v-for="(item, index) in items">
	  <div>
      <div id="box" style="display: table-cell;" ><a :href="item.url1"><div class="box"><img :src="item.image1" alt="" height="70" width="70"/><div class="txt">{{ item.name1 }}</div></div></a></div>
       <div id="box" style="display: table-cell;" ><a :href="item.url2"><div class="box"><img :src="item.image2" alt="" height="70" width="70"/><div class="txt">{{ item.name2 }}</div></div></a></div>
        <div id="box" style="display: table-cell;" ><a :href="item.url3"><div class="box"><img :src="item.image3" alt="" height="70" width="70"/><div class="txt">{{ item.name3 }}</div></div></a></div>
         <div id="box" style="display: table-cell;" ><a :href="item.url4"><div class="box"><img :src="item.image4" alt="" height="70" width="70"/><div class="txt">{{ item.name4 }}</div></div></a></div>
          <div id="box" style="display: table-cell;" ><a :href="item.url5"><div class="box"><img :src="item.image5" alt="" height="70" width="70"/><div class="txt">{{ item.name5 }}</div></div></a></div>
          </div>
	  </li>
	</table>
</template>
