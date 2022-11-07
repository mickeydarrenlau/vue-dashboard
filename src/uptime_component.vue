<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
const props = defineProps(['url'])
async function makeRequest() {
  try {
    const response = await fetch('https://randomuser.me/api/');

    return response.status;

  } catch (err) {
    return err;
  }
}

</script>



