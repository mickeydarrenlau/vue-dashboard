<script setup>
import { ref, provide } from 'vue'
import { app } from "./App.vue"
const list_data = ref([{ name1: 'Bluemap Creative', image1: "https://rv.darren.ee.eu.org/thumbs/bluemap.jpg", url1:"https://rv.darren.ee.eu.org/bluemapcreative/", name2: 'Homeassistant', image2: "https://rv.darren.ee.eu.org/thumbs/homeassistant.jpg", url2:"https://hass.darrenmc.ee.eu.org"}])
provide('list_items', list_data)
</script>

<template>
<App/>
</template>
