<template>
  <v-main>
    <Banner />
    <About />
    <Team />
    <Services />
    <Stats />
    <Products @show-modal="showModal = true" />
    <Brands />
    <Contact />
    <Product v-if="showModal" @close-modal="showModal = false" />
  </v-main>
</template>

<script>
// @ is an alias to /src
import Product from '../components/product/Product.vue'
import Banner from '../components/home/Banner.vue'
import About from '../components/home/About.vue'
import Team from '../components/home/Team.vue'
import Services from '../components/home/Services.vue'
import Stats from '../components/home/Stats.vue'
import Products from '../components/home/Products.vue'
import Brands from '../components/home/Brands.vue'
import Contact from '../components/home/Contact.vue'

export default {
  name: 'Home',

  components: {
    Banner,
    About,
    Team,
    Services,
    Stats,
    Products,
    Brands,
    Contact,
    Product
  },

  data() {
    return {
      showModal: false
    }
  }
}
</script>
