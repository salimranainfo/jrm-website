<template>
  <div>
    <table class="w-full border">
      <tr class="bg-gray-300">
        <th>Photo</th>
        <th>Item</th>
        <th>Fabrication</th>
        <th>MOQ</th>
        <th>Lead Time</th>
      </tr>

      <tr
        v-for="(product, i) in products"
        :key="i"
        class="border-b-2 hover:border-transparent hover:shadow-2xl transition duration-500 ease-in-out"
      >
        <td>
          <img :src="product.img" :alt="product.name" class="w-20 mx-auto" />
        </td>
        <td>{{ product.name }}</td>
        <td>{{ product.fabrication }}</td>
        <td>{{ product.moq }}</td>
        <td>{{ product.leadTime }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: 'Table',
  props: {
    products: {
      type: Array,
      default: () => {
        return 'Did not find any data'
      }
    }
  },
  data() {
    return {}
  }
}
</script>

<style>
td {
  @apply p-2 text-center;
}
</style>
