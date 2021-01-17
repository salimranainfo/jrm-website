<template>
  <section id="products">
    <div class="py-6"></div>

    <v-container>
      <h2 class="display-2 font-weight-bold text-uppercase text-center">
        OUR PRODUCTS
      </h2>

      <v-responsive class="mx-auto" width="56">
        <v-divider class="mb-1"></v-divider>

        <v-divider></v-divider>
      </v-responsive>

      <v-row>
        <v-col
          v-for="({ src, text, title }, i) in articles"
          :key="i"
          cols="12"
          md="4"
        >
          <v-img
            :src="src"
            class="mb-4"
            height="275"
            max-width="100%"
            contain
          ></v-img>

          <h3 class="font-weight-black mb-4 text-uppercase" v-text="title"></h3>

          <div class="title font-weight-light mb-5" v-text="text"></div>
        </v-col>
      </v-row>
    </v-container>

    <div class="py-12"></div>
  </section>
</template>

<script>
export default {
  name: 'Products',

  data() {
    return {
      articles: [
        {
          src: './product_image/woven.jpg',
          title: 'Woven',
          text:
            'Formal & Casual Shirts, 5 pocket and Chino Long Pants, Denim Pants, Shorts, Trousers, Bermuda, Boxers, Tie, Bow Tie, Shawl Tie and many more items. We are capable of producing these products. Please contact us for your inquiries.'
        },
        {
          src: './product_image/knit.jpg',
          title: 'Knit',
          text:
            'T Shirts, Polo Shirts, Sweatshirt, Knitted Jacket, Hoodies, Jogger Pants, Shorts, Kids Apparels, Knitted Underwears and many more items. We are capable of producing these products. Please contact us for your inquiries.'
        },
        {
          src: './product_image/sweater.jpg',
          title: 'Sweater',
          text:
            'Sweaters, Cardigan, Vest, Pull Over, Scarf and many more items. We are capable of producing these products. Please contact us for your inquiries.'
        }
      ]
    }
  }
}
</script>

<style></style>
