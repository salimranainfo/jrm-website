<template>
  <div
    class="fixed top-0 left-0 w-screen h-screen bg-gray-900 z-50 bg-opacity-70 overflow-y-auto py-4 lg:py-16"
  >
    <div class="mx-auto bg-white p-2 lg:p-6 relative width rounded-md">
      <span
        class="absolute top-0 right-0 text-4xl font-mono pt-2 pr-4 cursor-pointer"
        @click="$emit('close-modal')"
        >&times;</span
      >
      <h1 class="text-2xl font-bold mb-4">Product Details</h1>
      <tab />
    </div>
  </div>
</template>

<script>
import Tab from './Tab.vue'
export default {
  components: { Tab },
  name: 'Product'
}
</script>

<style scoped>
.width {
  max-width: 80%;
}

@media (max-width: 1023px) {
  .width {
    max-width: 95%;
  }
}
</style>
