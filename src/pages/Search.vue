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

let filtros = {
    certificada: [],
    presentacion: [],
    color: [],
    cortador: []
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

            this.$router.replace({
                name: 'search_results',
                params: { filtros }
            })
        }
    }
}
</script>

<style>
</style>
