<script setup>
import { ref, provide } from 'vue'
import App from "./App.vue"
const list_data = ref([{ name1: 'Bluemap Creative', image1: "https://avatars.githubusercontent.com/u/42522657?s=200&v=4", url1:"https://bluemap.darrenmc.dev", urls1:"https://bluemap.darrenmc.dev", name2: 'Homeassistant', image2: "https://hass.darren.my.eu.org/static/icons/favicon-192x192.png", url2:"https://hass.darrenmc.ee.eu.org", urls2:"https://hass.darrenmc.ee.eu.org", name3: "Crafty Controller", image3:"https://crafty.darren.my.eu.org/static/assets/images/logo_small.svg", url3:"https://crafty.darren.my.eu.org",urls3:"https://crafty.darren.my.eu.org",name4:"Nginx Proxy Manager", image4:"https://nginxm.darren.my.eu.org/images/favicons/favicon-32x32.png", url4:"https://nginxm.darren.my.eu.org/", urls4:"https://nginxm.darren.my.eu.org/",name5:"Pihole",image5:"https://pihole.darren.my.eu.org/admin/img/logo.svg",url5:"https://pihole.darren.my.eu.org/admin/",urls5:"https://pihole.darren.my.eu.org/admin"},{name1:"Plan",image1:"https://plan.darrenmc.dev/img/Flaticon_circle.png",url1:"https://plan.darrenmc.dev",urls1:"https://plan.darrenmc.dev",name2:"Uptime Kuma",image2:"https://uptime.darren.my.eu.org/icon.svg",url2:"https://uptime.darren.my.eu.org/",urls2:"https://uptime.darren.my.eu.org/",name3:"Status Page",image3:"https://uptime.darren.my.eu.org/icon.svg",url3:"https://status.darrenmc.dev",urls3:"https://status.darrenmc.dev",name4:"Jellyfin",image4:"https://test.darren.my.eu.org/web/assets/img/icon-transparent.png",url4:"https://test.darren.my.eu.org",urls4:"https://test.darren.my.eu.org"}])
provide('list_items', list_data)
</script>

<template>
<App/>
</template>
