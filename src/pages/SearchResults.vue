<template>
    <q-page padding>
        <template v-if="busquedaExitosa == true">
            <div v-for="resultado in resultados">
                <q-card class="q-ma-sm">
                    <q-card-title class="text-center">
                        <span style="font-size: 1.5rem">{{ resultado.nombre }}</span>
                        <span slot="subtitle"><q-icon name="location_on"/>{{ resultado.direccion }}</span>
                    </q-card-title>
                    <q-card-actions class="flex row justify-around">
                        <q-btn icon="phone" label="Llamar" @click="llamar(resultado.telefono)" flat/>
                        <!-- <q-btn icon="favorite" label="Guardar" flat/> -->
                    </q-card-actions>
                </q-card>
            </div>
            <div class="text-center">
                <q-btn icon="keyboard_arrow_left" label="Volver a buscar" color="teal" @click="$router.replace('/search')"/>
            </div>

        </template>

        <template v-else>
            <div class="flex column flex-center">
                <h3>No encontramos nada :(</h3>
                <q-btn icon="keyboard_arrow_left" label="Volver a buscar" color="teal" @click="$router.replace('/search')"/>
            </div>
        </template>
    </q-page>
</template>

<script>

export default {
    name: 'PageSearchResults',
    data() {
        return {
            resultados: '',
            busquedaExitosa: ''
        }
    },
    created () {
        if (typeof(this.$route.params.respuesta) == 'undefined') {
            this.busquedaExitosa = false
        } else {
            if (this.$route.params.respuesta.length > 0) {
                this.busquedaExitosa = true
                this.resultados = this.$route.params.respuesta
            } else {
                this.busquedaExitosa = false
            }
        }
    },
    methods: {
        llamar(telefono) {
            window.open("tel:"+telefono)
        }
    }
}

</script>

<style>
</style>
