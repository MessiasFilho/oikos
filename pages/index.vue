<template>

  <div class="w-full max-w-screen-xl bg-[var(--foreground:)] shadow-2xl h-full flex flex-col justify-center ">
    <Noticias />

    <!-- Mission Section -->
    <section id="home" class="py-16 bg-[var(--background)] text-[var(--primary-foreground)]">
      <div class="max-w-7xl mx-auto px-6 sm:px-8 lg:px-10 space-y-12">
        <!-- Título principal -->
        <div class="text-center">
          <h2 class="text-4xl font-extrabold border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
            Oikos: 39 Anos Transformando Realidades no Ceará
          </h2>
          <p class="text-2xl font-semibold text-[var(--accent)] mt-4 tracking-wide">
            Apoie Essa Missão
          </p>
        </div>

        <!-- Parágrafo introdutório -->
        <p class="text-lg leading-relaxed max-w-4xl mx-auto text-[var(--primary-foreground)]">
          Há quase quatro décadas, o Centro Ecumênico da Pastoral Popular de Fortaleza - conhecido como Oikos Seara
          Ceará - atua com firmeza e sensibilidade na promoção, defesa e garantia dos direitos humanos em todo o Estado
          do Ceará. Fundada em 1984 por pessoas de diferentes crenças religiosas, a Oikos é uma expressão viva de fé
          comprometida com a justiça social, a dignidade humana e o cuidado com a nossa casa comum.
        </p>

        <!-- Seção "Por que Oikos?" -->
        <div class="max-w-4xl mx-auto">
          <h3 class="text-3xl font-semibold text-[var(--accent)] mb-4 border-l-4 border-[var(--accent)] pl-4 shadow-sm">
            Por que “Oikos”?
          </h3>
          <p class="text-lg leading-relaxed text-[var(--primary-foreground)]">
            A palavra "Oikos" vem do grego e significa "casa", "família" ou "ambiente habitado". Na Antiguidade,
            representava a base da sociedade, um espaço de convivência, trabalho e proteção. Hoje, carregamos esse nome
            como símbolo da nossa missão: construir um mundo mais justo, solidário e sustentável, onde todos tenham
            lugar, voz e dignidade.
          </p>
        </div>
      </div>
    </section>
    
    <section id="iniciativa" class="">
      <IniciativaComponet />
    </section>

    <section class="w-full bg-[var(--background)] py-12">
      <div class="max-w-3xl mx-auto px-4">
        <div class="bg-[var(--card)] rounded-2xl shadow-lg p-8 flex flex-col items-center">
          <h3
            class="text-2xl md:text-3xl font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] pb-2 mb-6 w-full text-center">
            Por que sua doação é importante?
          </h3>
          <p class="text-lg text-[var(--primary-foreground)] text-center leading-relaxed mb-8">
            Cada projeto da Oikos é uma semente plantada em solo fértil: vidas. Com sua doação, podemos continuar
            expandindo nossas ações, alcançando mais comunidades e garantindo dignidade a quem mais precisa.
          </p>
          <button
            class="bg-[var(--accent)] text-[var(--accent-foreground)] font-bold py-3 px-8 rounded-xl shadow-md hover:bg-[var(--accent-foreground)] hover:text-[var(--accent)] transition-colors duration-200"
            aria-label="Faça sua doação">
            Faça sua doação
          </button>
        </div>
      </div>
    </section>
    <section id="assistencias" class="py-12 bg-[var(--background)]">
      <div class="max-w-7xl mx-auto px-6 sm:px-8 lg:px-10">
        <header class="mb-10 text-center">
          <h2
            class="text-4xl w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
            Assistências Sociais
          </h2>
          <p class="mt-6 max-w-3xl mx-auto text-lg font-semibold text-[var(--primary-foreground)] leading-relaxed">
            Apoie a Oikos. Ajude-nos a continuar sendo essa casa comum para tantos. Juntos, podemos transformar o
            presente e construir um futuro mais justo.
          </p>
        </header>

        <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 max-w-6xl mx-auto">
          <!-- Card 1 -->
          <article
            class="bg-[var(--card)] hover:bg-[var(--primary)] cursor-pointer rounded-[var(--radius-lg)] shadow-lg transition-transform transform hover:scale-105 p-6 flex flex-col text-[var(--card-foreground)]">
            <h3 class="text-xl font-semibold border-b-2 border-[var(--accent)] pb-2 mb-4">
              Cozinha Solidária
            </h3>
            <p class="flex-grow text-[var(--card-foreground)]">
              Apoio a famílias em situação de vulnerabilidade social, com foco na promoção da dignidade e inclusão.
            </p>
          </article>

          <!-- Card 2 -->
          <article
            class="bg-[var(--card)] hover:bg-[var(--primary)] cursor-pointer rounded-[var(--radius-lg)] shadow-lg transition-transform transform hover:scale-105 p-6 flex flex-col text-[var(--card-foreground)]">
            <h3 class="text-xl font-semibold border-b-2 border-[var(--accent)] pb-2 mb-4">
              Doações de Frutas, Verduras e Legumes
            </h3>
            <p class="flex-grow text-[var(--card-foreground)]">
              Apoio a famílias em situação de vulnerabilidade social, com foco na promoção da dignidade e inclusão.
            </p>
          </article>

          <!-- Card 3 -->
          <article
            class="bg-[var(--card)] hover:bg-[var(--primary)] cursor-pointer rounded-[var(--radius-lg)] shadow-lg transition-transform transform hover:scale-105 p-6 flex flex-col text-[var(--card-foreground)]">
            <h3 class="text-xl font-semibold border-b-2 border-[var(--accent)] pb-2 mb-4">
              Doações de Cestas Básicas
            </h3>
            <p class="flex-grow text-[var(--card-foreground)]">
              Promoção de atividades culturais e educativas, visando o fortalecimento da identidade e cidadania.
            </p>
          </article>

          <!-- Card 4 -->
          <article
            class="bg-[var(--card)] hover:bg-[var(--primary)] cursor-pointer rounded-[var(--radius-lg)] shadow-lg transition-transform transform hover:scale-105 p-6 flex flex-col text-[var(--card-foreground)]">
            <h3 class="text-xl font-semibold border-b-2 border-[var(--accent)] pb-2 mb-4">
              Cursos Profissionalizantes
            </h3>
            <p class="flex-grow text-[var(--card-foreground)]">
              Nosso instituto, em parceria com empresas privadas, prefeitura e estado, oferece cursos de formação
              profissional para jovens e adultos.
            </p>
          </article>

          <!-- Card 5 -->
          <article
            class="bg-[var(--card)] hover:bg-[var(--primary)] cursor-pointer rounded-[var(--radius-lg)] shadow-lg transition-transform transform hover:scale-105 p-6 flex flex-col text-[var(--card-foreground)]">
            <h3 class="text-xl font-semibold border-b-2 border-[var(--accent)] pb-2 mb-4">
              Baião Social
            </h3>
            <p class="flex-grow text-[var(--card-foreground)]">
              O Baião Social é uma iniciativa inovadora do SESC Ceará, em parceria com o Centro Integrado de Estudos e
              Programas de Desenvolvimento Sustentável (CIEDS).
            </p>
          </article>
        </div>
      </div>
    
    </section>
    <!-- Donation Section -->

    <section id="sede" class="py-8 bg-[var(--background)]">


      <!-- Componente de imagem responsiva -->
      <div class="overflow-hidden rounded-xl shadow-lg">
        <ParceirosImg class="w-full h-auto object-cover" />
      </div>

    </section>
    <!-- Footer -->


  </div>
</template>

<script lang="ts">

</script>

<style scoped></style>