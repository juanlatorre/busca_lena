<template>
    <q-page padding>
        <h3 class="text-center">¡Escógela como quieras!</h3>
        <p class="text-center">Selecciona tus filtros de búsqueda</p>
        <q-select
            color="green"
            float-label="Certificación"
            v-model="certificacionSelect"
            :options="certificacionOptions"
        />

        <q-select
            color="green"
            float-label="Presentación"
            v-model="presentacionSelect"
            :options="presentacionOptions"
        />

        <q-select
            color="green"
            float-label="Color"
            v-model="colorSelect"
            :options="colorOptions"
        />

        <q-select
            color="green"
            float-label="¿Necesitas que tenga cortador de leña?"
            v-model="cortadorSelect"
            :options="cortadorOptions"
        />
        <div class="flex flex-center" style="padding-top: 4em;">
            <q-btn
                class="no-shadow"
                size="xl"
                style="background: #b8e994; color: white; width: 60%;"
                label="Buscar"
                rounded
                no-caps
                @click="startSearch"
            />
        </div>
    </q-page>
</template>

<script>

let url = 'https://gist.githubusercontent.com/juanlatorre/5f75a9a66c5f8527b5aee37fc4514dd3/raw/48e94a2653beb35e6faf763c631b47c2b2a4fd3d/db_busca_lena.json'

let filtros = {
    certificada: [],
    presentacion: [],
    color: [],
    cortador: []
}

let respuesta = ''

function multiFilter(arr, filters) {
    const filterKeys = Object.keys(filters)
    return arr.filter(eachObj => {
        return filterKeys.every(eachKey => {
            if (!filters[eachKey].length) {
                return true; // passing an empty filter means that filter is ignored.
            }
            return filters[eachKey].includes(eachObj[eachKey]);
        });
    })
}


export default {
    name: 'PageSearch',
    data() {
        return {
            certificacionSelect: 'all',
            certificacionOptions: [
                {
                    label: 'Cualquiera',
                    value: 'all'
                },
                {
                    label: 'Certificada',
                    value: true
                },
                {
                    label: 'No Certificada',
                    value: false
                }
            ],
            presentacionSelect: 'all',
            presentacionOptions: [
                {
                    label: 'Cualquiera',
                    value: 'all'
                },
                {
                    label: 'Por Saco',
                    value: 'saco'
                },
                {
                    label: 'Por Metro',
                    value: 'metro'
                }
            ],
            colorSelect: 'all',
            colorOptions: [
                {
                    label: 'Cualquiera',
                    value: 'all'
                },
                {
                    label: 'Blanca',
                    value: 'blanca'
                },
                {
                    label: 'Roja',
                    value: 'roja'
                }
            ],
            cortadorSelect: 'all',
            cortadorOptions: [
                {
                    label: 'Cualquiera',
                    value: 'all'
                },
                {
                    label: 'Si',
                    value: true
                },
                {
                    label: 'No',
                    value: false
                }
            ]
        }   
    },
    methods: {
        startSearch() {
            this.$q.loading.show()

            // reset filtros
            filtros = {
                certificada: [],
                presentacion: [],
                color: [],
                cortador: []
            }

            if (this.certificacionSelect != "all") {
                filtros.certificada[0] = this.certificacionSelect
            }

            if (this.presentacionSelect != "all") {
                filtros.presentacion[0] = this.presentacionSelect
            }

            if (this.colorSelect != "all") {
                filtros.color[0] = this.colorSelect
            }

            if (this.cortadorSelect != "all") {
                filtros.cortador[0] = this.cortadorSelect
            }

            this.$axios.get(url).then(response => {
                respuesta = multiFilter(response.data, filtros)
            }).catch(error => {
                console.log(error)
            })

            
            setTimeout(() => {
                this.$q.loading.hide()
                this.$router.replace({
                    name: 'search_results',
                    params: { respuesta }
                })
            }, 1500)
        }
    }
}
</script>

<style>
</style>
