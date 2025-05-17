<script lang="ts">
	import '../app.css';

	let { children } = $props();
</script>

<svelte:head>
	<title>Designers' Consortium</title>
</svelte:head>

{@render children()}
