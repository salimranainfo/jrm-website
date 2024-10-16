<template>
  <v-app-bar app color="white" height="100">
    <v-avatar tile class="mr-3" color="grey lighten-5" size="70">
      <v-img
        contain
        max-height="60%"
        :src="require('../assets/logo-web.png')"
        alt="JRM Logo"
        @click="$vuetify.goTo('#home')"
        style="cursor: pointer;"
      ></v-img>
    </v-avatar>

    <v-toolbar-title class="font-weight-black headline">
      SR Clothing Studio
    </v-toolbar-title>

    <v-spacer></v-spacer>

    <div class="text-center d-lg-none">
      <v-menu offset-y>
        <template v-slot:activator="{ on, attrs }">
          <v-app-bar-nav-icon text v-bind="attrs" v-on="on">
          </v-app-bar-nav-icon>
        </template>
        <v-list>
          <v-list-item @click="$vuetify.goTo('/')">
            <v-list-item-title>Home</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#about-us')">
            <v-list-item-title>About Us</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#teams')">
            <v-list-item-title>Our Team</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#services')">
            <v-list-item-title>Our Services</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#products')">
            <v-list-item-title>Products</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#brands')">
            <v-list-item-title>Brands</v-list-item-title>
          </v-list-item>
          <v-list-item @click="$vuetify.goTo('/#contact')">
            <v-list-item-title>Contact</v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
    </div>

    <div class="d-none d-lg-flex">
      <v-btn text @click="$vuetify.goTo('#home')">Home</v-btn>
      <v-btn text @click="$vuetify.goTo('#about-us')">About Us</v-btn>
      <v-btn text @click="$vuetify.goTo('#teams')">Our Team</v-btn>
      <v-btn text @click="$vuetify.goTo('#services')">Our Services</v-btn>
      <v-btn text @click="$vuetify.goTo('#products')">Products</v-btn>
      <v-btn text @click="$vuetify.goTo('#brands')">Brands</v-btn>
      <v-btn text @click="$vuetify.goTo('#contact')">Contact</v-btn>
    </div>
  </v-app-bar>
</template>

<script>
export default {
  name: 'Header'
}
</script>

<style></style>
