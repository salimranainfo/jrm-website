<template>
  <section id="stats" class="grey lighten-3">
    <v-parallax
      :height="$vuetify.breakpoint.smAndDown ? 700 : 500"
      :src="require('../../assets/featured02.jpeg')"
    >
      <v-container fill-height>
        <v-row class="mx-auto">
          <v-col v-for="[value, title] of stats" :key="title" cols="12" md="3">
            <div class="text-center">
              <div
                class="display-3 font-weight-black mb-4"
                v-text="value"
              ></div>

              <div
                class="title font-weight-regular text-uppercase"
                v-text="title"
              ></div>
            </div>
          </v-col>
        </v-row>
      </v-container>
    </v-parallax>
  </section>
</template>

<script>
export default {
  name: 'Stats',

  data() {
    return {
      stats: [
        ['25+', 'Years Experience'],
        ['15+', 'Factories'],
        ['1m+', 'Capacity/Month'],
        ['20+', 'Happy Clients']
      ]
    }
  }
}
</script>

<style></style>
