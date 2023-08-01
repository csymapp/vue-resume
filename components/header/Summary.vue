<template>
  <address  v-if="summary.value.length > 0"
    class="flex
           flex-wrap lg:flex-no-wrap
           flex-col sm:flex-row
           sm:justify-start lg:justify-between print:justify-between
           text-2xl sm:text-base
           pb-4
           not-italic"
  >
    <section>
      <h2 class="font-bold uppercase text-gray-700 text-sm mb-4"> 
        {{ summary.title }}
      </h2>
      <div class="mb-2">
        {{ summary.value }}
      </div>
    </section>
  </address>
</template>

<script>
import * as helpers from '../content-helper';
export default {
  components: {},
  data() {
    return {
      // summary_: helpers.getSummaryObjectiveInfo(this.resumeData)
      // Initialize any data properties you need for your component here.
      // For example, you can set default values or empty arrays/objects.
      // Example:
      // myDataProperty: '',
      // myArrayProperty: [],
      // myObjectProperty: {},
    };
  },
  computed: {
    summary() {
      return helpers.getSummaryObjectiveInfo(this.resumeData);
    },
  },
};
</script>
