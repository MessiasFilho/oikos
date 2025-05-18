<template>
    <div>
        <Dialog :open="useModal().dialog">
           
            <DialogContent class="sm:max-w-[425px] bg-[var(--sidebar)]">
                <DialogHeader>
                    <DialogTitle class="text-2xl text-center w-full font-extrabold text-[var(--primary-foreground)] border-b-4 border-[var(--accent)] inline-block pb-3 rounded-md shadow-md">Nossa Localização</DialogTitle>
                    
                </DialogHeader>
                    <div class="bg-white rounded-xl p-4 max-w-xl w-full relative shadow-lg">
                    <iframe
                        v-if="useModal().endereco"
                        :src="useModal().endereco"
                        width="100%"
                        height="400"
                        style="border:0;"
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"
                        class="rounded-lg"
                    ></iframe>
                        </div>
                <DialogFooter>
                    <Button @click="useModal().dialog = false" class="w-full bg-[var(--card)] uppercase font-bold text-white hover:bg-[var(--accent)] active:bg-[var(--accent)] active:scale-95" type="submit">
                        Cancelar
                    </Button>
                </DialogFooter>
            </DialogContent>

        </Dialog>
    </div>
</template>

<script  lang="ts">



// Função para abrir o diálogo e definir o link do mapa


</script>

<style lang="scss" scoped></style>