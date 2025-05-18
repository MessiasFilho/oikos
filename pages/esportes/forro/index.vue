<template>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 shadow-2xl bg-[var(--background)]  ">
        <!-- <h2 class="text-3xl font-bold text-gray-50 p-2 mb-8 text-center bg-[var(--primary)] ">Esportes</h2> -->
        <header class="mb-10 text-center mt-4">
      <h2 class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
        Danca de Salão e Forró
      </h2>
      
    </header>
        <h3 class="w-full text-3xl font-bold text-gray-50 p-2 mb-8 text-center bg-[var(--primary)] rounded-b-xl">
            Jiu-Jitsu
        </h3>
        <div class="flex sm:flex-row flex-col items-center justify-center mb-8 p-1">

            <div class="flex flex-col items-center justify-center mb-8 p-1">
                <h3 class="text-lg text-gray-200">
                    <p class="text-lg text-gray-200 mb-4">
                        O forró, com suas batidas vibrantes de sanfona, zabumba e triângulo, e a dança de salão, com
                        estilos elegantes como samba, valsa e tango, transformam vidas através do ritmo e da parceria.
                        Na Oikos, essas danças unem pessoas, promovendo inclusão, coordenação e alegria, enquanto
                        celebram a cultura e a conexão humana.
                    </p>
                    <p class="text-lg text-gray-200 mb-4">
                        Na ONG Oikos, oferecemos aulas gratuitas de forró e dança de salão para crianças, adolescentes e
                        jovens em situação de vulnerabilidade, adaptando movimentos para incluir pessoas com
                        deficiência. Sua doação garante professores capacitados, espaços adequados e materiais,
                        permitindo que todos experimentem os benefícios físicos, emocionais e sociais da dança.
                    </p>
                    <p class="text-lg text-gray-200 mb-4">
                        Cada passo ensaiado é uma vitória contra a exclusão, e cada dança fortalece a autoestima e os
                        laços comunitários. Com seu apoio, a Oikos continua usando o forró e a dança de salão para
                        empoderar vidas e espalhar alegria. Doe agora e ajude a manter o ritmo da transformação!
                    </p>
                    <p class="text-lg text-gray-200 mt-2 underline">
                        Professor: Erlanderson Soares
                    </p>
                    Ajude a manter esse projeto vivo. Doe agora e faça parte dessa corrente de transformação.
                </h3>
            </div>

            <div class="mt-4">
                <JiuJitsuImg :images="imgforro" />
            </div>
        </div>

       
    </div>
</template>

<script setup lang="ts">
useModal().header = false

import Img1 from '~/assets/img/forro/1.png'
import Img2 from '~/assets/img/forro/2.png'
import Img3 from '~/assets/img/forro/3.png'
import Img4 from '~/assets/img/forro/4.png'
import Img5 from '~/assets/img/forro/5.png'

const imgforro = [
    Img1,
    Img2,
    Img3,
    Img4,
    Img5,

]
   

</script>

<style scoped></style>