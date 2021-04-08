<template>
  <div>
    <card v-if="windowWidth < 1024" :products="products" />
    <Table v-else :products="products" />
  </div>
</template>

<script>
import Card from './Card.vue'
import Table from './Table.vue'

export default {
  components: { Card, Table },
  name: 'Knit',
  data() {
    return {
      windowWidth: null,
      products: [
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '90 days',
          img: require('../../assets/product_image/knit/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '90 days',
          img: require('../../assets/product_image/knit/polo.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '90 days',
          img: require('../../assets/product_image/knit/t-shirt.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '90 days',
          img: require('../../assets/product_image/knit/polo.png')
        },
        {
          name: 'T-shirt',
          fabrication: '100% Cotton',
          moq: '200 pcs',
          leadTime: '90 days',
          img: require('../../assets/product_image/knit/t-shirt.png')
        }
      ]
    }
  },

  mounted() {
    this.windowWidth = window.innerWidth

    window.addEventListener('resize', () => {
      this.windowWidth = window.innerWidth
    })
  }
}
</script>

<style scoped>
.shadow-box {
  box-shadow: 0px 0px 12px -2px rgba(0, 0, 0, 0.75);
}
</style>
