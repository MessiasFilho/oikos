<template>
  <div class="flex justify-center px-4 sm:px-6 lg:px-8 bg-[var(--background)] py-12">
    <div class="max-w-7xl w-full">
      <!-- Título da seção -->
      <h2
        class="text-4xl w-full mb-4 font-extrabold text-center  text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md"
      >
        Nossa Sede e Prédios Parceiros
     
      </h2>

      <div class="flex flex-wrap gap-6 justify-center">
        <div
          v-for="(predio, index) in predios"
          :key="index"
          class="flex flex-col rounded-[var(--radius-lg)] overflow-hidden w-full sm:w-[calc(50%-1.5rem)] md:w-[calc(33.33%-1.5rem)] lg:w-[calc(25%-1.5rem)] shadow-lg bg-[var(--card)] hover:shadow-2xl transition-shadow duration-300 cursor-pointer"
        >
          <img
            :src="predio.imagem"
            :alt="predio.titulo"
            class="w-full h-48 object-cover rounded-t-[var(--radius-lg)] transition-transform duration-300 ease-out hover:scale-105"
            loading="lazy"
          />
          <div class="p-4 text-center text-[var(--card-foreground)]">
            <h3 class="text-lg font-bold mb-1">
              {{ predio.titulo }}
              <span class="block w-full mx-auto mt-1 h-0.5 rounded-full bg-[var(--accent)]"></span>
            </h3>
          
            <p class="text-sm leading-relaxed">
              {{ predio.endereco }}
            </p>
          </div>
          <div class="w-full flex items-center justify-center p-4 ">
            <button
              @click="openMapDialog(predio.end)"
              class=" p-2 w-full flex items-center justify-center mt-4 bg-[var(--primary)] text-white font-semibold  rounded-xl hover:bg-[var(--background)] transition hover:shadow-sm active:scale-95"
            >
            <svg class="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><mask id="lineMdMapMarkerAltFilledLoop0"><g fill="none" fill-opacity="0" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path fill="#fff" d="M12 20.5C12 20.5 11 19 11 18C11 17.5 11.5 17 12 17C12.5 17 13 17.5 13 18C13 19 12 20.5 12 20.5z"><animate fill="freeze" attributeName="d" dur="0.4s" keyTimes="0;0.7;1" values="M12 20.5C12 20.5 11 19 11 18C11 17.5 11.5 17 12 17C12.5 17 13 17.5 13 18C13 19 12 20.5 12 20.5z;M12 20.5C12 20.5 5 13 5 8C5 4.5 8 1 12 1C16 1 19 4.5 19 8C19 13 12 20.5 12 20.5z;M12 20.5C12 20.5 6 13.5 6 9C6 5.68629 8.68629 3 12 3C15.3137 3 18 5.68629 18 9C18 13.5 12 20.5 12 20.5z"/><animate fill="freeze" attributeName="fill-opacity" begin="0.5s" dur="0.5s" values="0;1"/><animateTransform attributeName="transform" dur="3s" keyTimes="0;0.3;0.4;0.54;0.6;0.68;0.7;1" repeatCount="indefinite" type="rotate" values="0 12 20.5;0 12 20.5;-8 12 20.5;0 12 20.5;5 12 20.5;-2 12 20.5;0 12 20.5;0 12 20.5"/></path><circle cx="12" cy="9" r="2.5" fill="#000" stroke="none"><animate fill="freeze" attributeName="fill-opacity" begin="1s" dur="0.5s" values="0;1"/></circle></g></mask><rect width="24" height="24" fill="currentColor" mask="url(#lineMdMapMarkerAltFilledLoop0)"/></svg>   <p class="text-sm font-semibold uppercase">maps</p>
              
              </button>
          </div>
        </div>
      </div>
    </div>

  </div>

</template>

<script setup lang="ts">


function openMapDialog(end : string) {
  useModal().endereco = end

  useModal().dialog = true
}
import img2 from '../assets/img/predios/boxe.png'
import img3 from '../assets/img/predios/danca.png'
import img4 from '../assets/img/predios/jiujitsu.png'

const images = ref<string[]>([img2, img3, img4])

const predios = ref([
  {
    titulo: 'Sede boxe treinamento',
    subtitulo: 'Anderson Medeiros',
    imagem: images.value[0],
    endereco: 'Av castelo de castro 2282, Conjunto são Cristóvão - Centro, Fortaleza - CE',
    end: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5629.774272843002!2d-38.522091670582746!3d-3.8420242636841055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c75035d103822b%3A0xb0aa164c1ad2014d!2sAv.%20Castelo%20de%20Castro%2C%202282%20-%20Jangurussu%2C%20Fortaleza%20-%20CE%2C%2060870-066!5e0!3m2!1spt-BR!2sbr!4v1747428758693!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"'
  },
  {
    titulo: 'Curso de aula e dança',
    imagem: images.value[1],
    endereco: 'Rua caroá 1157, Conjunto Tamandaré, 1234 - Centro, Fortaleza - CE',
    end: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3980.8646610621213!2d-38.5189331456577!3d-3.8392164980673007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c7502ff4cd9403%3A0xe2e6a9802b96ac24!2sR.%20Caroa%2C%201157%20-%20Jangurussu%2C%20Fortaleza%20-%20CE%2C%2060865-350!5e0!3m2!1spt-BR!2sbr!4v1747426312775!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"'

  },
  {
    titulo: 'Atletas de jiu-jitsu',
    imagem: images.value[2],
    endereco: 'Rua caroá 1157, Conjunto Tamandaré, 1234 - Centro, Fortaleza - CE',
    end: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3980.8646610621213!2d-38.5189331456577!3d-3.8392164980673007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c7502ff4cd9403%3A0xe2e6a9802b96ac24!2sR.%20Caroa%2C%201157%20-%20Jangurussu%2C%20Fortaleza%20-%20CE%2C%2060865-350!5e0!3m2!1spt-BR!2sbr!4v1747426312775!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"'

  },
])
</script>
