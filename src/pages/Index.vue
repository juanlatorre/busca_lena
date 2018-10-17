<template>
	<q-page class="q-pb-lg flex-container">
		<span class="flex-item" style="padding-top: 2em;font-size: 2rem;">Bienvenido</span>
		<img class="flex-item" src="../assets/logo-full.svg" style="height: auto; width: 60%;">
		<q-btn
            class="flex-item no-shadow"
            size="xl"
            style="background: #b8e994; color: white; width: 60%;"
            label="Buscar Leña"
            rounded
            no-caps
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
};
</script>
