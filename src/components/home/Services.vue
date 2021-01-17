<template>
  <section id="services" class="grey lighten-3">
    <div class="py-6"></div>

    <v-container class="text-center">
      <h2 class="display-2 font-weight-bold mb-3">OUR SERVICES</h2>

      <v-responsive class="mx-auto mb-12" width="56">
        <v-divider class="mb-1"></v-divider>

        <v-divider></v-divider>
      </v-responsive>

      <v-row align="start" justify="center" wrap>
        <v-col
          v-for="({ icon, title, text }, i) in features"
          :key="i"
          cols="12"
          xs="12"
          md="6"
          lg="4"
        >
          <v-card
            class="py-12 px-4 d-flex flex-column flex-wrap fix-height"
            min-height="600"
            color="grey lighten-5"
            flat
          >
            <v-theme-provider dark>
              <div>
                <v-avatar color="primary" size="88">
                  <v-icon large v-text="icon"></v-icon>
                </v-avatar>
              </div>
            </v-theme-provider>

            <v-card-title
              class="justify-center font-weight-black text-uppercase"
              v-text="title"
            ></v-card-title>

            <v-card-text class="subtitle-1" v-text="text"> </v-card-text>
          </v-card>
        </v-col>
      </v-row>
    </v-container>

    <div class="py-12"></div>
  </section>
</template>

<script>
export default {
  name: 'Services',

  data() {
    return {
      features: [
        {
          icon: 'fa-plane',
          title: 'Garments Export',
          text:
            'We export all kind of Apparel/Clothing Products. We cover Mens, Ladies, Kids, Babies, Woven, Knitted, Sweater all categories. We are capable of producing volume orders from certified factories with strict quality control. For small quantities, we have our own sample factory so we are very flexible about MOQ'
        },
        {
          icon: 'fa-shopping-cart',
          title: 'Buying Agency',
          text:
            'We work as buying agent for importers, wholesalers and retailers. We help Apparel companies source their products from Bangladesh garments sector. We act as eyes and ears for our buyers during the production. Our office controls quality on behalf of buyers, source factories following buying company policy, manage all merchandising works and monitor/followup productions and sample. You can consider our office as your hub office in Bangladesh.'
        },
        {
          icon: 'fa-check-circle',
          title: 'Quality Control',
          text:
            'We have very experienced team of in-house quality controllers for Woven and Knit categories. We strictly follow buyers quality standard and ensure that the same are followed in every step of execution and production. We make several in-line inspection, pre-final inspection and final inspection in AQL standard before shipment.'
        }
      ]
    }
  }
}
</script>

<style></style>
