<template>
  <div class="w-full bg-gray-100 p-4 rounded-lg">
    <!-- Tab -->
    <div
      class="w-full flex flex-col bg-gray-50 shadow-lg rounded-lg overflow-hidden"
    >
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
      <div class="p-4 w-full overflow-x-hidden">
        <transition name="showTab">
          <knit class="w-full" v-if="activeTitle === 'knit'" />
          <woven class="w-full" v-if="activeTitle === 'woven'" />
          <sweater class="w-full" v-if="activeTitle === 'sweater'" />
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

<style scoped>
.active {
  @apply bg-green-800 text-white;
}

.showTab-enter-active,
.showTab-leave-active {
  opacity: 1;
  width: 100%;
  transform: translateX(0);
  transition: all 0.5s;
}

.showTab-enter {
  opacity: 0;
  max-height: 0;
  transform: translateX(100%);
  transition: all 0.5s;
}

.showTab-leave-to {
  opacity: 0;
  transform: translateX(-100%);
  max-height: 0;
  transition: all 0.5s;
}
</style>
