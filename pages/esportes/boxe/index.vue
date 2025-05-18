<template>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 shadow-2xl bg-[var(--background)] ">
      <!-- Título da seção -->
     
      <header class="mb-10 text-center mt-4">
      <h2 class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
        Jiu-Jitsu
      </h2>
      
    </header>
      <div class="flex sm:flex-row flex-col items-center justify-center mb-8 p-1">
        <div class="flex flex-col items-center justify-center mb-8 p-1">
          <h3 class="text-lg text-[var(--primary-foreground)]">
            <p class="text-lg text-[var(--primary-foreground)] mb-4">
              O boxe olímpico, com sua combinação de técnica, velocidade e precisão, transforma golpes limpos
              em lições de vida. Presente nos Jogos Olímpicos desde 1904, promove disciplina, desenvolvimento
              físico e mental, sendo acessível a todas as idades, incluindo pessoas com deficiência, com
              ênfase na segurança e no respeito.
            </p>
            <p class="text-lg text-[var(--primary-foreground)] mb-4">
              Na ONG Oikos, usamos o boxe olímpico como ferramenta de inclusão social, oferecendo treinos
              gratuitos para crianças, adolescentes e jovens em situação de vulnerabilidade. Sua doação
              viabiliza luvas, protetores, ringues e instrutores qualificados, criando um ambiente seguro onde
              todos podem crescer e se superar.
            </p>
            <p class="text-lg text-[var(--primary-foreground)] mb-4">
              Cada soco treinado é um passo contra a exclusão, e cada aula fortalece a autoconfiança e a
              resiliência. Com seu apoio, a Oikos continua empoderando vidas através do boxe olímpico. Doe
              agora e ajude a transformar desafios em vitórias dentro e fora do ringue!
            </p>
            <p class="text-lg text-[var(--accent)] mt-2 underline font-semibold">
              Professor: Junior Golinha
            </p>
            <span class="block mt-4 text-[var(--accent)] font-semibold">
              Ajude a manter esse projeto vivo. Doe agora e faça parte dessa corrente de transformação.
            </span>
          </h3>
        </div>
        <div class="mt-4">
          <JiuJitsuImg :images="imgBoxe" />
        </div>
      </div>
  
      <!-- Seção de Doação -->
     
    </div>
  </template>
  
  <script setup lang="ts">
  useModal().header = false
  import img1 from '~/assets/img/box-atletas/1.png'
  import img5 from '~/assets/img/box-atletas/2.png'
  import img6 from '~/assets/img/box-atletas/3.png'
  import img7 from '~/assets/img/box-atletas/4.png'
  import img2 from '~/assets/img/box-campeonato/2.png'
  import img3 from '~/assets/img/box-campeonato/3.png'
  import img4 from '~/assets/img/box-campeonato/1.png'
  
  const imgBoxe = [
      img1,
      img2,
      img3,
      img4,
      img5,
      img6,
      img7,
  ]
  </script>
  