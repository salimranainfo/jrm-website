<template>
  <section id="hero">
    <v-row no-gutters>
      <v-img
        :min-height="'calc(100vh - ' + $vuetify.application.top + 'px)'"
        max-height="100"
        :src="require('../../assets/featured01.jpg')"
        alt="An apparel showroom featured picture"
      >
        <v-theme-provider dark>
          <v-container fill-height>
            <v-row align="center" class="white--text mx-auto" justify="center">
              <v-col class="white--text text-center" cols="12" tag="h1">
                <span
                  :class="[
                    $vuetify.breakpoint.smAndDown ? 'display-1' : 'display-2'
                  ]"
                  class="font-weight-light"
                >
                  Welcome To
                </span>

                <br />

                <span
                  :elevation="24"
                  :class="[
                    $vuetify.breakpoint.smAndDown ? 'display-3' : 'display-4'
                  ]"
                  class="font-weight-black"
                >
                  JRM Global Sourcing
                </span>
              </v-col>

              <v-btn
                class="align-self-end mt-16"
                fab
                outlined
                @click="$vuetify.goTo('#about-us')"
              >
                <v-icon>mdi-chevron-double-down</v-icon>
              </v-btn>
            </v-row>
          </v-container>
        </v-theme-provider>
      </v-img>
    </v-row>
  </section>
</template>

<script>
export default {
  name: 'Banner'
}
</script>

<style></style>
