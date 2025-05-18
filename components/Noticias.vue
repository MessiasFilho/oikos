<template>
    <div class="relative w-full h-[500px] bg-[var(--card)] overflow-hidden text-white">
        <div class="relative w-full h-[500px]">
            <transition-group name="fade" tag="div" class="w-full h-full relative">
                <div
          v-for="(slide, index) in slides"
          :key="index"
          class="absolute w-full h-full flex flex-col justify-between text-center z-10"
          :style="{ opacity: current === index ? '1' : '0' }"
        >
          <!-- Imagem de fundo -->
          <img
            :src="slide.img"
            class="absolute w-full h-full object-cover transition-opacity duration-700 z-0"
            :alt="slide.title"
          />
          <!-- Título no topo -->
          <h1 class="relative  z-10  md:text-5xl font-bold bg-white/10 backdrop-blur-md p-2 mx-auto text-4xl w-full  text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
            {{ slide.title }}
          </h1>

          <div class="relative z-10 flex  items-center justify-center">
            <img class="w-80" src="../assets/img/no_bg_white.png" alt="">
          </div>
          <!-- Conteúdo na parte inferior -->
          <div class="relative z-10 flex w-full  items-center ">
            
            <p class="text-xl h-full w-full  border-[var(--accent)] border-t-4 p-3   backdrop-blur-xl rounded-lg   flex items-center justify-center">
              {{ slide.description }}
            </p>
          
          </div>
        </div>
            </transition-group>
            <button id="prev"
                class="z-20 absolute left-4 top-1/2 -translate-y-1/2 bg-[rgba(0,0,0,0.3)] text-white p-2 rounded-full hover:bg-[rgba(0,0,0,0.5)] transition"
                @click="showPrev">
                ‹
            </button>
            <button id="next"
                class="z-20 absolute right-4 top-1/2 -translate-y-1/2 bg-[rgba(0,0,0,0.3)] text-white p-2 rounded-full hover:bg-[rgba(0,0,0,0.5)] transition"
                @click="showNext">
                ›
            </button>
        </div>
    </div>
</template>

<script setup lang="ts">

import img1 from '~/assets/img/jiujtsu/1.png'
import img2 from '~/assets/img/baiao_social/3.png'
import img3 from '~/assets/img/box-campeonato/4.png'
import img4 from '~/assets/img/cesta_basica/4.png'
import img5 from '~/assets/img/festival/4.png'


const images = ref<string[]>([img1, img2, img3, img4])
const current = ref(0)

const slides = ref([
    {
        img: img1,
        title: 'Projeto Jiu-Jitsu',
        description: 'Projeto Jiu-Jitsu: técnica e disciplina moldando corpos e mentes com respeito.',
        buttonLink: '#donate',
    },
    {
        img: img2,
        title: 'Baião Social',
        description: 'conhecimento e parceria transformando comunidades com gestão e equidade.',
        buttonLink: '#jiujitsu',
    },
    {
        img: img3,
        title: 'Boxe Olímpico',
        description: ' força e precisão com disciplina, acessibilidade e respeito ao atleta',
        buttonLink: '#community',
    },

    {
        img: img4,
        title: 'Doações de Cestas Básicas',
        description: 'solidariedade, alimento e dignidade unindo nossa comunidade com amor.',
        buttonLink: '#join',
    },
    {
        img: img5,
        title: 'Festival Junino',
        description: 'tradição, alegria e união celebrando nossas raízes com música e sabor.',
        buttonLink: '#join',
    },
]);

function showNext() {
    current.value = (current.value + 1) % images.value.length

}
function showPrev() {

    current.value = (current.value - 1 + images.value.length) % images.value.length
}

onMounted(() => {
    setInterval(showNext, 7000)
})
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.7s;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}
</style>