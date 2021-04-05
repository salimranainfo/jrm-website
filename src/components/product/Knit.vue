<template>
  <div
    class="w-full space-y-4 md:space-y-0 md:grid md:grid-flow-row md:grid-cols-2 md:gap-y-8 md:justify-items-center lg:grid-cols-3"
  >
    <!-- Card -->
    <div
      v-for="(product, i) in products"
      :key="i"
      class="w-72 mx-auto md:mx-0 flex flex-col justify-center items-center rounded-lg overflow-hidden shadow-box"
    >
      <!-- Card Image -->
      <div class="p-4">
        <img :src="product.img" :alt="product.name" class="h-32" />
      </div>

      <!-- Card Details -->
      <div class="w-full bg-blue-300 p-4">
        <ul class=" w-full pl-0 space-y-1">
          <li class="flex justify-between">
            <span class="w-1/2">Product Name</span>
            <span class="w-1/2">: {{ product.name }}</span>
          </li>
          <li class="flex justify-between">
            <span class="w-1/2">Fabrication</span>
            <span class="w-1/2">: {{ product.fabrication }}</span>
          </li>
          <li class="flex justify-between">
            <span class="w-1/2">MOQ</span>
            <span class="w-1/2">: {{ product.moq }}</span>
          </li>
          <li class="flex justify-between">
            <span class="w-1/2">Lead Time</span>
            <span class="w-1/2">: {{ product.leadTime }}</span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Knit',
  data() {
    return {
      products: [
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '900 days',
          img: require('../../assets/product_image/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '900 days',
          img: require('../../assets/product_image/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '900 days',
          img: require('../../assets/product_image/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '900 days',
          img: require('../../assets/product_image/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '900 days',
          img: require('../../assets/product_image/t-shirt.png')
        }
      ]
    }
  }
}
</script>

<style>
.shadow-box {
  box-shadow: 0px 0px 12px -2px rgba(0, 0, 0, 0.75);
}
</style>
