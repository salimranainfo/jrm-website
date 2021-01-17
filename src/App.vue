<template>
  <v-app id="home">
    <!-- Loader - When website loads this will be displayed. Once lading completes, this will disappear -->
    <div class="loader">
      <img src="./assets/logo-web.png" alt="JRM Logo" />
      <img src="./assets/loader.gif" alt="Loading...." />
    </div>
    <!-- Header - Logo and Menu -->
    <Header />
    <!-- Views will be injected here -->
    <router-view />
    <!-- Footer - Coyright info -->
    <Footer />
  </v-app>
</template>

<script>
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'
export default {
  name: 'App',

  components: {
    Header,
    Footer
  },

  data() {
    return {}
  },

  mounted() {
    window.addEventListener('load', () => {
      const loader = document.getElementsByClassName('loader')[0]
      loader.className += ' hidden'
    })
  }
}
</script>

<style>
.google-maps {
  position: relative;
  padding-bottom: 75%; /*This is the aspect ratio*/
  height: 0;
  overflow: hidden;
}
.google-maps iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100% !important;
  height: 100% !important;
}

.loader {
  top: 0;
  left: 0;
  position: fixed;
  width: 100%;
  height: 100%;
  background: white;
  z-index: 999;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.loader img {
  margin-bottom: 15px;
}

.loader img:first-child {
  width: 150px;
}

.loader.hidden {
  animation: hide-loader 1s;
  animation-fill-mode: forwards;
}

@keyframes hide-loader {
  100% {
    opacity: 0;
    visibility: hidden;
  }
}

@media screen and (max-width: 960px) {
  .fix-height {
    min-height: 100px !important;
  }
}

@media screen and (min-width: 961px and max-width: 1264px) {
  .fix-height {
    min-height: 575px !important;
  }
}
</style>
