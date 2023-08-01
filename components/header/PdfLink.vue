<template>
  <a
    class="btn flex justify-center sm:justify-start items-center bg-white hover:bg-gray-100 active:bg-gray-200 text-gray-700 hover:text-gray-800 active:text-gray-900 font-semibold py-2 px-4 border border-gray-400 rounded shadow active:shadow-sm mb-4"
    :href="`${linkRoot}${js.basics.name} - Résumé.pdf`"
  >
    <Icon type="pdf" class="mr-1" />
    <span class="sm:hidden paper:inline">View as PDF</span>
    <span class="hidden sm:inline paper:hidden">PDF</span>
  </a>
</template>

<script>
import Icon from '~/components/utility/Icon';
import js from "~/resume-data.json"
var linkRoot = '/'
if(js.basics.repo){
  if(js.basics.repo.split("/").length > 1){
    if(js.basics.repo.split("/")[1].match(/.*\.github\.io$/)){
      linkRoot = "/"
    }else{
      linkRoot = `/${js.basics.repo.split("/")[1]}/`
    }
  }
}
export default {
  data(){
    return{
      js: js,
      linkRoot: linkRoot
    }
  },  
  components: { Icon },
};
</script>
