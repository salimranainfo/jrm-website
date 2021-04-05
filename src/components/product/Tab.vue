<template>
  <div class="w-full bg-gray-200 p-4">
    <h1>Tabs</h1>
    <button>Back to Home</button>

    <!-- Tab -->
    <div class="w-full flex flex-col bg-gray-50 shadow-2xl">
      <!-- Buttons -->
      <div class="border flex justify-around items-center shadow-md">
        <button
          @click="showDetails('knit')"
          class="w-1/3 py-2 focus:outline-none font-bold transition duration-200 ease-in-out"
          :class="activeTitle === 'knit' && 'active'"
        >
          Knit
        </button>
        <button
          @click="showDetails('woven')"
          class="w-1/3 py-2 focus:outline-none font-bold transition duration-200 ease-in-out"
          :class="activeTitle === 'woven' && 'active'"
        >
          Woven
        </button>
        <button
          @click="showDetails('sweater')"
          class="w-1/3 py-2 focus:outline-none font-bold transition duration-200 ease-in-out"
          :class="activeTitle === 'sweater' && 'active'"
        >
          Sweater
        </button>
      </div>

      <!-- Product Details -->
      <div class="p-4 w-full">
        <transition name="showTab">
          <knit v-if="activeTitle === 'knit'" />
          <woven v-if="activeTitle === 'woven'" />
          <sweater v-if="activeTitle === 'sweater'" />
        </transition>
      </div>
    </div>
  </div>
</template>

<script>
import Knit from './Knit.vue'
import Sweater from './Sweater.vue'
import Woven from './Woven.vue'

export default {
  components: { Knit, Woven, Sweater },
  data() {
    return {
      activeTitle: 'knit'
    }
  },
  methods: {
    showDetails(param) {
      this.activeTitle = param
    }
  }
}
</script>

<style>
.active {
  @apply bg-green-800 text-white;
}

.showTab-enter-active,
.show-leave-active {
  opacity: 1;
  transition: all 0.5s;
}

.showTab-enter,
.showTab-leave-to {
  opacity: 0;
  max-height: 0;
  transition: all 0.5s;
}
</style>
