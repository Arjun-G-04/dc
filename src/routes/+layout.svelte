<script lang="ts">
	import '../app.css';

	let { children } = $props();
</script>

<svelte:head>
	<title>Designers' Consortium</title>
	<meta name="description" content="Defy. Design. Deliver." />

	<meta property="og:title" content="Designers' Consortium" />
	<meta property="og:description" content="Defy. Design. Deliver." />
	<meta property="og:image" content="/big-logo.webp" />
	<meta property="og:url" content="https://dc.nitt.edu" />
	<meta property="og:type" content="website" />

	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content="Designers' Consortium" />
	<meta name="twitter:description" content="Defy. Design. Deliver." />
	<meta name="twitter:image" content="/big-logo.webp" />
</svelte:head>

{@render children()}
