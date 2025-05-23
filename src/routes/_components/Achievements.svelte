<script lang="ts">
    const data = [
    {
        id: 0,
        title: 'AtomQuest',
        desc: 'Secured 1st place in India\'s biggest Hackathon',
        img: '/achievements/1.webp'
    },
    {
        id: 1,
        title: 'Smart India Hackathon',
        desc: 'Secured 1st place in India\'s biggest Hackathon',
        img: '/achievements/2.webp'
    },
    {
        id: 2,
        title: 'Caterpillar IDP\'24 at IITM',
        desc: 'Winners',
        img: '/achievements/3.webp'
    },
    {
        id: 3,
        title: 'Caterpillar IDP\'24 at IITM',
        desc: 'Winners',
        img: '/achievements/4.webp'
    },
    {
        id: 4,
        title: 'Sangam\'24, Pragyan',
        desc: 'Winners',
        img: '/achievements/5.webp'
    }]
</script>

<div class="flex flex-col gap-10 bg-black text-white w-screen h-screen font-poppins p-10 justify-center items-center">
    <h1 class="text-orange-500 font-bold text-5xl text-center">Our Achievements</h1>
    <div class="flex flex-row flex-wrap gap-5 w-full overflow-auto justify-center">
        {#each data as item (item.id)}
            <div class="bg-[#111111] h-[30vh] w-full sm:w-auto sm:aspect-[1.5] p-5 rounded-sm flex flex-col gap-2">
                <h2 class="text-orange-500 font-medium text-xl">{item.title}</h2>
                <p class="overflow-ellipsis overflow-hidden whitespace-nowrap font-light text-gray-300 text-sm">{item.desc}</p>
                <div class="grow basis-0 w-full relative">
                    <img src={item.img} alt={item.title} class={`absolute w-full h-full ${item.id === 0 ? 'object-contain' : 'object-cover'}`} loading="lazy" />
                </div>
            </div>
        {/each}
    </div>
</div>