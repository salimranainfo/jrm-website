<template>
  <v-sheet id="contact" color="#333333" dark tag="section" tile>
    <div class="py-6"></div>

    <v-container>
      <h2 class="display-2 font-weight-bold mb-3 text-uppercase text-center">
        CONTACT US
      </h2>

      <v-row class="mt-12" align="center" wrap>
        <v-col
          style="border-right: 1px solid grey;"
          class="col-12 col-sm-6 px-7 mb-5"
        >
          <h4 class="text-subtitile-1 font-weight-light mb-3">Address:</h4>
          <address class="text-body-1 font-weight-light">
            Adarsha Para, Kha Para Road<br />
            Tongi, Gazipur - 1711<br />
            Bangladesh
          </address>
          <v-divider class="my-3"></v-divider>
          <h4 class="text-subtitile-1 font-weight-light">
            Mobile:
            <a href="tel:+8801715040028" style="text-decoration: none;">
              +88 01915-602798
            </a>
          </h4>
          <h4 class="text-subtitile-1 font-weight-light">
            Email:
            <a
              href="mailto:rana@jrmglobalsourcing.com"
              style="text-decoration: none;"
              >zakir@srclothingstudio.com</a
            >
          </h4>
        </v-col>

        <v-col class="col-12 col-sm-6 px-7">
          <div class="google-maps">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58363.111264612206!2d90.36266805001694!3d23.900451077124014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c571cec0d5b1%3A0xf50d1b6db0645628!2sSR%20Clothing%20Studio!5e0!3m2!1sen!2sbd!4v1597561656340!5m2!1sen!2sbd"
              width="600"
              height="350"
              frameborder="0"
              style="border:0;"
              allowfullscreen="false"
              aria-hidden="false"
              tabindex="0"
            ></iframe>
          </div>
        </v-col>
      </v-row>
    </v-container>

    <div class="py-12"></div>
  </v-sheet>
</template>

<script>
export default {
  name: 'Contact'
}
</script>

<style></style>
