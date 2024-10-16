<template>
  <v-footer class="justify-center" color="#292929" height="100">
    <div class="title font-weight-light grey--text text--lighten-1 text-center">
      &copy; {{ new Date().getFullYear() }} — SR Clothing Studio — Made with 💜
      by
      <a
        href="https://srwebstudio.com"
        target="_blank"
        style="text-decoration: none;"
        >SR Web Studio</a
      >
    </div>
  </v-footer>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style></style>
