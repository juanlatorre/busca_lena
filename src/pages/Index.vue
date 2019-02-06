<template>
	<q-page class="q-pb-lg flex-container">
		<span class="flex-item" style="padding-top: 2em;font-size: 2rem;">Bienvenido</span>
		<img class="flex-item" src="../assets/logo-full.svg" style="height: auto; width: 60%;">
		<q-btn
            class="flex-item no-shadow"
            size="xl"
            style="background: #3b5998; color: white; width: 60%;"
            label="Iniciar Sesión"
            rounded
            no-caps
			icon="fab fa-facebook"
            @click="$router.replace('/search')"
        />
	</q-page>
</template>

<style>
.flex-container {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  justify-content: space-between;
  align-content: center;
  align-items: center;
}

.flex-item:nth-child(1) {
  order: 0;
  flex: 0 1 auto;
  align-self: auto;
}

.flex-item:nth-child(2) {
  order: 0;
  flex: 0 1 auto;
  align-self: auto;
}

.flex-item:nth-child(3) {
  order: 0;
  flex: 0 1 auto;
  align-self: auto;
}
</style>

<script>
export default {
    name: 'PageIndex',
	methods: {
		createDB() { //Function only for testing
			var Vendedor = this.$parse.Object.extend("Vendedor")
			
			function crearVendedor(cert, col, cor, dir, nom, nota, pres, tel, vcon, vgua) {
				var v = new Vendedor()
				v.set("certificada", cert)
				v.set("color", col)
				v.set("cortador", cor)
				v.set("direccion", dir)
				v.set("nombre", nom)
				v.set("notaUsuarios", nota)
				v.set("presentacion", pres)
				v.set("telefono", tel)
				v.set("vecesContactado", vcon)
				v.set("vecesGuardado", vgua)
				v.save()
			}
			
			crearVendedor(true, "blanca", false, "Suecia 321", "Vendedor A", 0, "saco", 12345678, 0, 0)
			crearVendedor(true, "blanca", true, "Suecia 321", "Vendedor B", 0, "metro", 12345678, 0, 0)
			crearVendedor(true, "blanca", false, "Suecia 321", "Vendedor C", 0, "metro", 12345678, 0, 0)
			crearVendedor(false, "blanca", false, "Suecia 321", "Vendedor D", 0, "saco", 12345678, 0, 0)
			crearVendedor(false, "blanca", true, "Suecia 321", "Vendedor E", 0, "metro", 12345678, 0, 0)
			crearVendedor(false, "blanca", false, "Suecia 321", "Vendedor F", 0, "metro", 12345678, 0, 0)
			crearVendedor(true, "roja", false, "Suecia 321", "Vendedor G", 0, "saco", 12345678, 0, 0)
			crearVendedor(true, "roja", true, "Suecia 321", "Vendedor H", 0, "metro", 12345678, 0, 0)
			crearVendedor(true, "roja", false, "Suecia 321", "Vendedor I", 0, "metro", 12345678, 0, 0)
			crearVendedor(false, "roja", false, "Suecia 321", "Vendedor J", 0, "saco", 12345678, 0, 0)
			crearVendedor(false, "roja", true, "Suecia 321", "Vendedor K", 0, "metro", 12345678, 0, 0)
			crearVendedor(false, "roja", false, "Suecia 321", "Vendedor L", 0, "metro", 12345678, 0, 0)
		}
	}
};
</script>
