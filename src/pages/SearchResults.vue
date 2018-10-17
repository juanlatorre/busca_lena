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
                        <q-btn icon="favorite" label="Guardar" flat/>
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
let url = 'https://gist.githubusercontent.com/juanlatorre/5f75a9a66c5f8527b5aee37fc4514dd3/raw/48e94a2653beb35e6faf763c631b47c2b2a4fd3d/db_busca_lena.json'

export default {
    name: 'PageSearchResults',
    data() {
        return {
            resultados: '',
            busquedaExitosa: ''
        }
    },
    created () {
        if (typeof(this.$route.params.filtros) == 'undefined') {
            this.busquedaExitosa = false
        } else {
            this.$axios.get(url).then(response => {
                let respuesta = this.multiFilter(response.data, this.$route.params.filtros)
                if (respuesta.length > 0) {
                    this.busquedaExitosa = true
                    this.resultados = respuesta
                    console.log(respuesta)
                } else {
                    this.busquedaExitosa = false
                }
            }).catch(error => {
                console.log(error)
            })
        }
    },
    methods: {
        multiFilter(arr, filters) {
            const filterKeys = Object.keys(filters)
            return arr.filter(eachObj => {
                return filterKeys.every(eachKey => {
                    if (!filters[eachKey].length) {
                        return true; // passing an empty filter means that filter is ignored.
                    }
                    return filters[eachKey].includes(eachObj[eachKey]);
                });
            })
        },
        llamar(telefono) {
            window.open("tel:"+telefono)
        }
    }
}

</script>

<style>
</style>
