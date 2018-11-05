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
			
			const Vendedor = this.$parse.Object.extend("Vendedor")
			const query = new this.$parse.Query(Vendedor)
			const dis = this
			var datos = []

            if (this.certificacionSelect != "all") {
				query.equalTo("certificada", this.certificacionSelect)
            }

            if (this.presentacionSelect != "all") {
				query.equalTo("presentacion", this.presentacionSelect)
            }

            if (this.colorSelect != "all") {
				query.equalTo("color", this.colorSelect)
            }

            if (this.cortadorSelect != "all") {
				query.equalTo("cortador", this.cortadorSelect)
            }
			
			query.descending("notaUsuarios");
			const results = query.find()
			results.then(function(data) {
				for (let i = 0; i < data.length; i++) {
				 	var object = data[i];
					datos.push({
						certificada: object.get("certificada"),
						color: object.get("color"),
						cortador: object.get("cortador"),
						direccion: object.get("direccion"),
						nombre: object.get("nombre"),
						notaUsuarios: object.get("notaUsuarios"),
						presentacion: object.get("presentacion"),
						telefono: object.get("telefono"),
						vecesContactado: object.get("vecesContactado"),
						vecesGuardado: object.get("vecesGuardado")
					})
				}
				
	            setTimeout(() => {
	                dis.$q.loading.hide()
	                dis.$router.push({
						name: 'results',
						params: { datos }
					})
	            }, 200)
			})
        }
    }
}
</script>

<style>
</style>
