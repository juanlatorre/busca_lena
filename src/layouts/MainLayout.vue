<template>
	<q-layout view="lHh Lpr lFf">
		<q-layout-header class="no-shadow">
			<q-toolbar color="#b8e994" style="min-height: 30px;background-color:#b8e994">
			</q-toolbar>
		</q-layout-header>

		<q-page-container>
			<router-view />
		</q-page-container>
	</q-layout>
</template>

<script>
export default {
  name: 'MainLayout'
};
</script>
