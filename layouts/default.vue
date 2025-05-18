<template>
    <div class="w-full h-full">
        <header>
            <div
                class="max-w-screen-xl mx-auto h-20 bg-[var(--sidebar)] text-white flex items-center justify-between px-4">
                <div @click="navigateTo('/')" class="text-2xl font-bold flex items-center justify-center">
                    <img class="w-18" src="../assets/img/no_bg_white.png" alt="Oikos Logo" />
                </div>

                <!-- Botão hamburguer (visível apenas em mobile) -->
                <button class="md:hidden text-white text-2xl focus:outline-none" @click="toggleMenu"
                    aria-label="Toggle menu">
                    {{ isMenuOpen ? '✕' : '☰' }}
                </button>

                <!-- Menu de navegação -->
                <nav :class="[
                    'md:flex md:space-x-4',
                    isMenuOpen ? 'flex flex-col absolute top-20 left-0 w-full bg-[var(--sidebar)] p-4 space-y-4 z-50' : 'hidden md:flex'
                ]">
                    <a href="#home" class="text-gray-300 hover:text-white transition block px-2 py-1"
                        @click="closeMenu">
                        Home
                    </a>
                    <a href="#iniciativa" class="text-gray-300 hover:text-white transition block px-2 py-1"
                        @click="closeMenu">
                        Iniciativas
                    </a>
                    <a href="#assistencias" class="text-gray-300 hover:text-white transition block px-2 py-1"
                        @click="closeMenu">
                        Assistências Sociais
                    </a>
                    <a href="#sede" class="text-gray-300 hover:text-white transition block px-2 py-1"
                        @click="closeMenu">
                        Nossa Sede
                    </a>
                </nav>
            </div>
        </header>

        <div class="w-full h-full flex flex-col m-auto items-center justify-center ">
            <slot />
        </div>
        <section id="donate" class="py-16 bg-[var(--card)] max-w-screen-xl m-auto items-center justify-center ">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <h2
                    class="text-4xl w-full font-extrabold text-white border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">
                    Faça a Diferença com Sua Doação</h2>
                <p class="text-lg mt-8 text-gray-100 mb-8">Sua contribuição apoia nossos projetos em agricultura
                    familiar,
                    esportes, cultura, educação e assistência social. Juntos, podemos transformar vidas e construir um
                    futuro mais justo.</p>
                <button
                    class="inline-block bg-[var(--accent)] text-[var(--card)] uppercase font-semibold py-3 px-8 rounded-lg hover:bg-green-700 transition">
                    Contribua
                    Agora
                </button>

            </div>
        </section>

        <footer class="bg-[var(--sidebar)] text-white py-8 max-w-screen-xl m-auto">

            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <p class="text-lg">Centro Ecumênico da Pastoral Popular de Fortaleza - Oikos Seara Ceará</p>
                <p class="text-sm mt-2">Contato: contato@oikosceara.org | Fortaleza, Ceará</p>
            </div>
        </footer>

        <MapsDialog endereço="fgdfg" />
    </div>
</template>


<script setup lang="ts">
const isMenuOpen = ref(false);

const toggleMenu = () => {
    isMenuOpen.value = !isMenuOpen.value;
};

const closeMenu = () => {
    isMenuOpen.value = false;
};
</script>

<style scoped>
nav {
    transition: all 0.3s ease-in-out;
}

/* Estilização adicional para links no menu mobile */
nav.flex-col a {
    padding: 0.5rem 1rem;
    border-radius: 0.25rem;
}

nav.flex-col a:hover {
    background-color: rgba(255, 255, 255, 0.1);
}
</style>