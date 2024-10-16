<template>
  <section id="teams">
    <div class="py-6"></div>

    <v-container class="text-center">
      <h2 class="display-2 font-weight-bold mb-3">MEET THE TEAM LEADERS</h2>

      <v-responsive class="mx-auto mb-8" width="56">
        <v-divider class="mb-1"></v-divider>

        <v-divider></v-divider>
      </v-responsive>

      <v-row align-content="center" justify="center">
        <v-col
          v-for="team in teams"
          :key="team.name"
          cols="12"
          xs="12"
          sm="6"
          md="4"
        >
          <v-card
            class="mx-auto d-flex flex-column flex-wrap"
            align="center"
            justify="center"
            max-width="375"
            min-height="475"
          >
            <div style="height: 20px;"></div>

            <div>
              <v-avatar contain size="200">
                <v-img
                  :src="team.src"
                  :alt="team.src"
                  style="object-fit:cover;"
                ></v-img>
              </v-avatar>
              <v-card-title class="text-left">{{ team.name }}</v-card-title>
              <v-card-subtitle
                class="text-left font-weight-light"
                style="color:#212121"
                >{{ team.designation }}</v-card-subtitle
              >
              <v-card-text class="text-left" style="color:#424242">{{
                team.details
              }}</v-card-text>
            </div>

            <!--
              <div class="align-self-center">
                <v-btn icon>
                  <v-icon>fab fa-linkedin</v-icon>
                </v-btn>
                <v-btn icon>
                  <v-icon>fab fa-twitter-square</v-icon>
                </v-btn>
                <v-btn icon>
                  <v-icon>fab fa-facebook-square</v-icon>
                </v-btn>
              </div> 
            -->
          </v-card>
        </v-col>
      </v-row>
    </v-container>
    <div class="py-12"></div>
  </section>
</template>

<script>
export default {
  name: 'Team',

  data() {
    return {
      teams: [
        {
          src: require('../../assets/team_image/mamun.jpg'),
          alt: 'Md Mahedi Hasan Mamun Picture',
          name: 'Md Mahedi Hasan Mamun',
          designation: 'Manager Operations',
          details:
            'Mamun has more than 10 years of experience in Apparel Merchandising, Marketing & Production. He has experience of running a whole factory in management level. He has also worked in big factories in Merchandising, Marketing and Production.'
        },
        {
          src: require('../../assets/team_image/zakir.jpg'),
          alt: 'Md Zakir Hossain Picture',
          name: 'Md Zakir Hossain',
          designation: 'Co-Founder and Managing Director',
          details:
            'Zakir has more than 15 years of experience in Apparel Merchandising, Marketing & Production. He has worked in floor level Production Control, CAD design, Pattern, Quality control, Merchandiding & Marketing in big factories.'
        },
        {
          src: require('../../assets/team_image/salim.jpg'),
          alt: 'Md Salim Rana Picture',
          name: 'Md Salim Rana',
          designation: 'Founder',
          details:
            'Salim has more than 15 years of experience in Apparel Merchandising & Marketing. He has worked in a few giant European retailers and buying houses in these years as well as in big factories.'
        }
      ]
    }
  }
}
</script>

<style></style>
