<template>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 shadow-2xl bg-[var(--background)]  ">
        <!-- <h2 class="text-3xl font-bold text-gray-50 p-2 mb-8 text-center bg-[var(--primary)] ">Esportes</h2> -->
        <header class="mb-10 text-center mt-4">
      <h2 class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
        futsal
      </h2>
      
    </header>
        <div class="flex sm:flex-row flex-col items-center justify-center mb-8 p-1">
            <div class="flex flex-col items-center justify-center mb-8 p-1">
                <h3 class="text-lg text-gray-200">
                    <p class="text-lg text-gray-200 mb-4">
                        O futsal, com sua energia contagiante, reúne times de cinco jogadores em uma quadra vibrante,
                        onde técnica, dribles precisos e trabalho em equipe criam momentos de pura emoção. Na Oikos,
                        esse esporte vai além do jogo, servindo como uma ferramenta poderosa para unir comunidades e
                        transformar vidas através de valores como disciplina e respeito.
                    </p>
                    <p class="text-lg text-gray-200 mb-4">
                        Na ONG Oikos, usamos o futsal para promover inclusão social, oferecendo treinos gratuitos a
                        crianças, adolescentes e jovens em situação de vulnerabilidade. Com sua doação, mantemos
                        quadras, fornecemos equipamentos e garantimos um ambiente seguro, onde os jovens desenvolvem
                        habilidades e constroem um futuro promissor.
                    </p>
                    <p class="text-lg text-gray-200 mb-4">
                        Cada gol marcado é um passo contra a exclusão, e cada treino é uma chance de crescimento. Sua
                        contribuição ajuda a Oikos a continuar oferecendo estrutura, técnicos capacitados e
                        oportunidades para que mais jovens transformem suas vidas através do esporte. Doe agora e
                        mantenha a bola rolando!
                    </p>
                    <p class="text-lg text-gray-200 mt-2 underline">
                        Professor: Nazareno Ferreira
                    </p>
                    Ajude a manter esse projeto vivo. Doe agora e faça parte dessa corrente de transformação.
                </h3>
            </div>

            <div class="mt-4">
                <JiuJitsuImg :images="imgfutsal"/>
            </div>
        </div>

    </div>
</template>

<script setup lang="ts">
useModal().header = false

import Img1 from '~/assets/img/futsal/1.png'
import Img2 from '~/assets/img/futsal/2.png'
import Img3 from '~/assets/img/futsal/3.png'
import Img4 from '~/assets/img/futsal/4.png'
import Img5 from '~/assets/img/futsal/5.png'
import Img6 from '~/assets/img/futsal/6.png'

const imgfutsal = [
    Img1,
    Img2,
    Img3,
    Img4,
    Img5,
    Img6
]
   

</script>

<style scoped></style>