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
                <a href="https://buy.stripe.com/eVa4kbbE71Lbgx26ou" target="_blank" rel="noopener noreferrer"
                    class="inline-block bg-[var(--accent)] text-[var(--accent-foreground)] font-bold py-3 px-8 rounded-xl shadow-md hover:bg-[var(--accent-foreground)] hover:text-[var(--accent)] transition-colors duration-200 text-center"
                    aria-label="Faça sua doação">
                   Contribua Agora
                </a> 

            </div>
        </section>

        <footer class="bg-[var(--sidebar)] text-[var(--sidebar-foreground)] py-10 m-auto max-w-screen-xl ">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Sobre -->
                <div class="text-center md:text-left">
                    <h4 class="text-xl font-semibold mb-4">Oikos Seara Ceará</h4>
                    <p class="mb-4 max-w-xs w-full mx-auto md:mx-0 border-b pb-4 border-[var(--accent)] text-sm">
                        Centro Ecumênico da Pastoral Popular de Fortaleza, promovendo justiça social, dignidade e
                        inclusão.
                    </p>
                    <p class="text-sm">
                        Contato:
                        <a href="mailto:contato@oikosceara.org"
                            class="underline hover:text-[var(--accent)] transition-colors">
                            contato@oikosceara.org
                        </a>
                    </p>
                    <p class="text-sm mt-1">Fortaleza, Ceará</p>
                    <!-- Ícones sociais -->
                    <div class="flex justify-center md:justify-start space-x-4 mt-6">
                        <a href="#" aria-label="Facebook" class="hover:text-[var(--accent)] transition-colors">
                            <svg class="w-6 h-6 fill-current" viewBox="0 0 24 24" aria-hidden="true">
                                <path
                                    d="M22.675 0h-21.35C.6 0 0 .6 0 1.337v21.326C0 23.4.6 24 1.325 24H12.82v-9.294H9.692v-3.622h3.128V8.413c0-3.1 1.894-4.788 4.659-4.788 1.325 0 2.466.099 2.797.143v3.24l-1.918.001c-1.504 0-1.794.715-1.794 1.763v2.31h3.587l-.467 3.622h-3.12V24h6.116C23.4 24 24 23.4 24 22.663V1.337C24 .6 23.4 0 22.675 0z" />
                            </svg>
                        </a>
                        <a href="#" aria-label="Instagram" class="hover:text-[var(--accent)] transition-colors">
                            <svg class="w-6 h-6 fill-current" viewBox="0 0 24 24" aria-hidden="true">
                                <path
                                    d="M7.75 2h8.5A5.75 5.75 0 0122 7.75v8.5A5.75 5.75 0 0116.25 22h-8.5A5.75 5.75 0 012 16.25v-8.5A5.75 5.75 0 017.75 2zm0 2A3.75 3.75 0 004 7.75v8.5A3.75 3.75 0 007.75 20h8.5a3.75 3.75 0 003.75-3.75v-8.5A3.75 3.75 0 0016.25 4h-8.5zM12 7a5 5 0 110 10 5 5 0 010-10zm0 2a3 3 0 100 6 3 3 0 000-6zm4.5-2.25a1.25 1.25 0 112.5 0 1.25 1.25 0 01-2.5 0z" />
                            </svg>
                        </a>
                        <a href="#" aria-label="Twitter" class="hover:text-[var(--accent)] transition-colors">
                            <svg class="w-6 h-6 fill-current" viewBox="0 0 24 24" aria-hidden="true">
                                <path
                                    d="M23.954 4.569a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723 10.14 10.14 0 01-3.127 1.195 4.92 4.92 0 00-8.384 4.482A13.978 13.978 0 011.671 3.149a4.822 4.822 0 001.524 6.573 4.904 4.904 0 01-2.228-.616v.06a4.922 4.922 0 003.946 4.827 4.996 4.996 0 01-2.224.084 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.104c-.396 0-.79-.023-1.17-.068a13.945 13.945 0 007.557 2.212c9.054 0 14-7.496 14-13.986 0-.21 0-.423-.015-.633A9.936 9.936 0 0024 4.59z" />
                            </svg>
                        </a>
                    </div>
                </div>

                <!-- Links rápidos -->
                <div class="text-center md:text-left">
                    <h4 class="text-xl font-semibold mb-4">Links Rápidos</h4>
                    <ul class="space-y-2">
                        <li><a href="#home" class="hover:text-[var(--accent)] transition-colors">Início</a></li>
                        <li><a href="#assistencias" class="hover:text-[var(--accent)] transition-colors">Assistências
                                Sociais</a></li>
                        <li><a href="#esportes" class="hover:text-[var(--accent)] transition-colors">Esportes</a></li>
                        <li><a href="#contato" class="hover:text-[var(--accent)] transition-colors">Contato</a></li>
                    </ul>
                </div>

                <!-- Formulário de contato -->

                <div class="text-center md:text-left">
                    <h4 class="text-xl font-semibold mb-4">Fale Conosco</h4>
                    <address
                        class="not-italic text-sm space-y-1 text-[var(--popover-foreground)] max-w-sm mx-auto md:mx-0">

                        <p><strong>Logradouro:</strong> Av Contorno Sul (Conj. São Cristóvão)</p>
                        <p><strong>Número:</strong> 997</p>
                        <p><strong>Complemento:</strong> Loja-22 Bloco-B</p>
                        <p><strong>CEP:</strong> 60.866-590</p>
                        <p><strong>Bairro/Distrito:</strong> Jangurussu</p>
                        <p><strong>Município:</strong> Fortaleza</p>
                        <p><strong>UF:</strong> CE</p>
                        <p><strong>E-mail:</strong>
                            <a href="mailto:joseclaudioalbano@gmail.com"
                                class="underline hover:text-[var(--accent)] transition-colors">
                                joseclaudioalbano@gmail.com
                            </a>
                        </p>
                        <p><strong>Telefone:</strong> (85) 98663-0819 / (85) 98642-3749</p>
                    </address>
                </div>
             
            </div>
        </footer>


        <MapsDialog />
    </div>
</template>


<script lang="ts" setup>
const isMenuOpen = ref(false);
const email = ref('')
const message = ref('')

const toggleMenu = () => {
    isMenuOpen.value = !isMenuOpen.value;
};


const closeMenu = () => {
    isMenuOpen.value = false;
};

function handleSubmit() {
    if (!email.value || !message.value) return

    // Aqui você pode integrar com seu backend ou serviço de e-mail
    alert(`Mensagem enviada!\nEmail: ${email.value}\nMensagem: ${message.value}`)

    // Resetar campos
    email.value = ''
    message.value = ''
}
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