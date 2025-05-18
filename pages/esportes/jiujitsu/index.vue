<template>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 shadow-2xl bg-[var(--background)]  ">
        <!-- <h2 class="text-3xl font-bold text-gray-50 p-2 mb-8 text-center bg-[var(--primary)] ">Esportes</h2> -->
        <header class="mb-10 text-center mt-4">
            <h2 class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
                Jiu-Jitsu: A Arte Suave
            </h2>
      
    </header>
        <div class="flex sm:flex-row flex-col items-center justify-center mb-8 p-1">

            <div class="flex flex-col items-center justify-center mb-8 p-1">

                <h3 class="text-lg text-gray-200">
                    <p class="text-lg text-gray-200 mb-4">
                    O Jiu-Jitsu, conhecido como a Arte Suave, é muito mais do que uma arte marcial. Ele ensina que, com
                    técnica e inteligência, é possível superar até os maiores desafios — dentro e fora dos tatames.
                    Através de alavancas, estrangulamentos e imobilizações, o praticante aprende não apenas a se
                    defender, mas a desenvolver autoconfiança, disciplina, respeito e resiliência.

                    </p>

                    <p class="text-lg text-gray-200 mb-4">
                         Na ONG Oikos, acreditamos no poder transformador do Jiu-Jitsu como ferramenta de inclusão social.
                    Nosso trabalho oferece aulas gratuitas para crianças, adolescentes e jovens em situação de
                    vulnerabilidade, promovendo saúde física, equilíbrio emocional e valores essenciais para a vida em
                    comunidade.
                    </p>
                    <p class="text-lg text-gray-200 mb-4">

                    Cada treino é uma oportunidade de crescimento, cada faixa conquistada é uma vitória contra a
                    exclusão, e cada aluno é uma vida sendo transformada. Com a sua doação, podemos continuar oferecendo
                    estrutura, professores capacitados e um ambiente seguro onde sonhos são cultivados.

                    </p>

                    <p class="text-lg text-gray-200 mt-2 underline">
                         Professor: Nazareno Ferreira
                    </p>
                    
                    Ajude a manter esse projeto vivo. Doe agora e faça parte dessa corrente de transformação.
                </h3>

            </div>
           
            <div class="mt-4">
                <JiuJitsuImg :images="imgJiuJitsu" />
            </div>
        </div>

      
    </div>
</template>

<script setup lang="ts">
useModal().header = false

import img1 from '~/assets/img/jiujtsu/5.png'
import img2 from '~/assets/img/jiujtsu/6.png'
import img3 from '~/assets/img/jiujtsu/7.png'
import img4 from '~/assets/img/jiujtsu/8.png'
import img5 from '~/assets/img/jiujtsu/9.png'
import img6 from '~/assets/img/jiujtsu/10.png'
import img7 from '~/assets/img/jiujtsu/11.png'
import img8 from '~/assets/img/jiujtsu/12.png'

const imgJiuJitsu = [
    img1,
    img2,
    img3,
    img4,
    img5,
    img6,
    img7,
    img8
]
</script>

<style scoped></style>