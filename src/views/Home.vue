<template>
  <v-content>
    <Banner />
    <About />
    <Team />
    <Services />
    <Stats />
    <Products />
    <Brands />
    <Contact />
  </v-content>
</template>

<script>
// @ is an alias to /src
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
    Contact
  }
}
</script>
