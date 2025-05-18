<template>
  <!-- Desktop (>= sm) -->
  <div class="hidden sm:flex justify-center gap-4 p-4 relative overflow-hidden">
    <TransitionGroup name="carousel" tag="div" class="flex gap-4">
      <div
        v-for="(img, index) in currentImages"
        :key="img + index"
        class="w-64 h-auto"
      >
        <img
          :src="img"
          class="w-full h-auto rounded-xl shadow-md"
        />
      </div>
    </TransitionGroup>
  </div>

  <!-- Mobile (< sm) -->
  <div class="flex sm:hidden justify-center p-4 relative overflow-hidden">
    <TransitionGroup name="carousel" tag="div" class="w-full flex justify-center">
      <div
        v-for="(img, index) in currentMobileImage"
        :key="img + index"
        class="w-64 h-auto"
      >
        <img
          :src="img"
          class="w-full h-auto rounded-xl shadow-md"
        />
      </div>
    </TransitionGroup>
  </div>
</template>

<script setup lang="ts">

import img1 from '~/assets/img/jiujtsu/5.png'
import img2 from '~/assets/img/jiujtsu/6.png'
import img3 from '~/assets/img/jiujtsu/7.png'
import img4 from '~/assets/img/jiujtsu/8.png'
import img5 from '~/assets/img/jiujtsu/9.png'
import img6 from '~/assets/img/jiujtsu/10.png'
import img7 from '~/assets/img/jiujtsu/11.png'
import img8 from '~/assets/img/jiujtsu/12.png'



interface Props {
  images: string[], 
  desktopCount?: number
  mobileCount?: number
  interval?: number
}

const props = withDefaults(defineProps<Props>(), {
  desktopCount: 4,
  mobileCount: 1,
  interval: 20000,
})

const images = ref<string[]>([img1, img2, img3, img4, img5, img6, img7, img8])
const currentImages = ref<string[]>([])
const currentMobileImage = ref<string[]>([])

function getRandomImages(count: number): string[] {
  const shuffled = [...props.images].sort(() => 0.5 - Math.random())
  return shuffled.slice(0, count)
}

function showNext() {
  currentImages.value = getRandomImages(1)
}

onMounted(() => {
  currentImages.value = getRandomImages(4)
  currentMobileImage.value = getRandomImages(1)
  showNext()
  setInterval(() => {
    // Desktop
    currentImages.value = []
    setTimeout(() => {
      currentImages.value = getRandomImages(1)
    }, 500)

    // Mobile
    currentMobileImage.value = []
    setTimeout(() => {
      currentMobileImage.value = getRandomImages(1)
    }, 500)
  }, 20000)
})


</script>

<style scoped>
.carousel-enter-active,
.carousel-leave-active {
  transition: all 0.5s ease;
  position: relative;
}

.carousel-enter-from {
  transform: translateX(100%);
  opacity: 0;
}

.carousel-enter-to {
  transform: translateX(0);
  opacity: 1;
}

.carousel-leave-from {
  transform: translateX(0);
  opacity: 1;
}

.carousel-leave-to {
  transform: translateX(-100%);
  opacity: 0;
}
</style>
