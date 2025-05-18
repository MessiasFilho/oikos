<template>
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8  bg-[var(--card)] py-12"> 
    <header class="mb-10 text-center w-full">
      <h2 class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
        Nossas Iniciativas
      </h2>
     
    </header>
      
    <div ref="scrollContainer"
      class="flex overflow-x-auto snap-x snap-mandatory space-x-4 md:grid md:grid-cols-3 gap-8 transition-all scroll-smooth"
      @touchstart="pauseAutoScroll" @touchend="resumeAutoScroll">
      <div v-for="(card, i) in cards" :key="i"
        class="relative snap-start min-w-[90%] md:min-w-0 rounded-xl shadow-md overflow-hidden">
        <img :src="card.img" :alt="card.title" class="absolute inset-0 w-full h-full object-cover opacity-100 z-0" />
        <div class="relative z-10">
          <h3 class="text-xl font-bold mb-4 bg-[var(--background)] border-b-2 border-[var(--accent)] p-2 text-center text-gray-50">
            {{ card.title }}
          </h3>
          <div class="p-6">
            <p class="text-gray-50 bg-white/5 backdrop-blur-sm rounded-2xl p-4">
              {{ card.description }}
            </p>
            <button @click="navigateTo('esportes/'+card.page)"
              class="w-full flex items-center active:scale-95 justify-between mt-4 bg-[var(--primary)] text-white font-semibold py-2 px-4 rounded-xl hover:bg-[var(--card)] transition">
              <p class="text-sm font-semibold">Conheça Mais</p>
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                  <path stroke-dasharray="20" stroke-dashoffset="20" d="M3 12h17.5">
                    <animate fill="freeze" attributeName="stroke-dashoffset" dur="0.2s" values="20;0" />
                  </path>
                  <path stroke-dasharray="12" stroke-dashoffset="12" d="M21 12l-7 7M21 12l-7 -7">
                    <animate fill="freeze" attributeName="stroke-dashoffset" begin="0.2s" dur="0.2s" values="12;0" />
                  </path>
                </g>
              </svg>
            </button>
          </div>
        </div>
      </div>
    </div>
    </div>
 

</template>

<script setup lang="ts">

const scrollContainer = ref<HTMLElement | null>(null)
let interval: ReturnType<typeof setInterval> | null = null
let isUserInteracting = false

import jiuJitsuImg from '~/assets/img/jiujtsu/1.png'
import boxeImg from '~/assets/img/box-campeonato/2.png'
import futsalImg from '~/assets/img/futsal/5.png'
import forroImg from '~/assets/img/forro/4.png'
const cards = [
  {
    title: 'Jiu-Jitsu: A Arte Suave',
    img: jiuJitsuImg,
    description: "Arte marcial japonesa que usa alavancas e imobilizações para superar adversários. Popularizada pelo Brazilian Jiu-Jitsu, fortalece corpo e mente, promove disciplina e é acessível a todos, unindo técnica, respeito e camaradagem.",
    page: 'jiujitsu',
  },
  {
    title: 'Boxe Olímpico',
    img: boxeImg,
    description: 'Modalidade olímpica que combina técnica, velocidade e precisão em lutas curtas. Com luvas e protetores, os atletas pontuam por golpes limpos em três rounds (homens) ou quatro (mulheres). Promove desenvolvimento físico, mental e disciplina, sendo inclusivo e seguro para todas as idades.',
    page: 'boxe',
  },
  {
    title: 'Futsal',
    img: futsalImg,
    description: 'Versão vibrante do futebol, o futsal é jogado em quadra por times de cinco. Exige técnica, trabalho em equipe e oferece emoção a cada lance. Desenvolve dribles, passes precisos, disciplina e respeito, unindo comunidades e fortalecendo laços.',
    page: 'futsal',
  },
  {
    title: 'Forró e Dança de Salão',
    img: forroImg,
    description: 'O forró, ritmo nordestino vibrante, une música de sanfona, zabumba e triângulo a passos envolventes dançados em pares, marcados por fluidez e proximidade. Já a dança de salão, elegante e social, abrange estilos como samba, valsa e tango, exigindo coordenação, ritmo e parceria. Ambas celebram conexão, técnica e alegria, animando festas e fortalecendo laços.',
    page: 'forro',
  },
]

function startAutoScroll() {
  const el = scrollContainer.value
  if (!el || window.innerWidth >= 768) return

  interval = setInterval(() => {
    if (isUserInteracting) return

    const cardWidth = el.firstElementChild?.clientWidth || 0
    const scrollAmount = cardWidth + 16 // 16px = espaço (gap)

    if (el.scrollLeft + el.clientWidth >= el.scrollWidth - 10) {
      el.scrollTo({ left: 0, behavior: 'smooth' })
    } else {
      el.scrollBy({ left: scrollAmount, behavior: 'smooth' })
    }
  }, 2000)
}

function stopAutoScroll() {
  if (interval) clearInterval(interval)
  interval = null
}

function pauseAutoScroll() {
  isUserInteracting = true
}

function resumeAutoScroll() {
  isUserInteracting = false
}

onMounted(() => {
  startAutoScroll()
})

onUnmounted(() => {
  stopAutoScroll()
})
</script>

<style lang="scss" scoped></style>