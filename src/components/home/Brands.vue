<template>
  <section id="brands" class="grey lighten-3">
    <div class="grey lighten-3" style="height: 50px;"></div>
    <v-container>
      <h2 class="display-2 font-weight-bold text-uppercase text-center">
        BRANDS WHO TRUST US
      </h2>
      <v-sheet class="my-5">
        <v-slide-group multiple show-arrows class="grey lighten-3">
          <v-slide-item v-for="item in brands" :key="item.src" class="mx-6">
            <v-avatar size="150" tile>
              <v-img
                :src="item.src"
                contain
                style="object-fit: cover;"
                max-height="75px"
              ></v-img>
            </v-avatar>
          </v-slide-item>
        </v-slide-group>
      </v-sheet>
    </v-container>
  </section>
</template>

<script>
export default {
  name: 'Brands',

  data() {
    return {
      brands: [
        {
          src: require('../../assets/brand_logos/greenhawk.png')
        },
        {
          src: require('../../assets/brand_logos/aerion.png')
        },
        {
          src: require('../../assets/brand_logos/gangstas.png')
        },
        {
          src: require('../../assets/brand_logos/jsgroup.svg')
        },
        {
          src: require('../../assets/brand_logos/laagam.png')
        },
        {
          src: require('../../assets/brand_logos/ldb.png')
        },
        {
          src: require('../../assets/brand_logos/legit.png')
        },
        {
          src: require('../../assets/brand_logos/idexe.png')
        },
        {
          src: require('../../assets/brand_logos/elcorte.png')
        }
      ]
    }
  }
}
</script>

<style></style>
