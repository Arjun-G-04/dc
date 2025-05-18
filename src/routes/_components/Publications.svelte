<script lang="ts">
    const data = [{
        id: 0,
        title: 'New Approach to EV Battery Thermal Management, Using Ionocaloric Cooling Effect',
        year: '2024',
        confOrPub: 'RSI/ISM International Conference on Robotics and Mechatronics (ICROM)'
    },{
        id: 1,
        title: 'Novel Design of Helical Storage and Planting Mechanism for Coral Reef Restoration Using Opto-Acoustic and Image Processing Methods',
        year: '2024',
        confOrPub: 'IEEE Conference on Emerging Technologies'
    },{
        id: 2,
        title: 'Retrofittable Air Cell Cushion for Pressure Ulcer Protection using Piezo-Resistive Pressure Sensing',
        year: '2023',
        confOrPub: 'RSI/ISM International Conference on Robotics and Mechatronics (ICROM)'
    },{
        id: 3,
        title: 'A Bio-inspired Robot for Structural Health Monitoring of Natural Gas Pipeline',
        year: '2023',
        confOrPub: 'RSI/ISM International Conference on Robotics and Mechatronics (ICROM)'
    }]
</script>

<div class="flex flex-col gap-10 bg-[#111111] text-white w-screen h-screen font-poppins p-10 justify-center items-center">
    <h1 class="text-orange-500 font-bold text-5xl text-center">Our Publications</h1>
    <div class="flex flex-row flex-wrap gap-5 w-full overflow-auto justify-center">
        {#each data as item (item.id)}
            <div class="bg-[#111111] h-[30vh] w-full sm:w-auto sm:aspect-[1.7] p-5 rounded-sm flex flex-col justify-around overflow-auto gap-2">
                <p class="text-orange-500 font-medium">{item.year}</p>
                <h2 class="font-medium text-md sm:text-2xl">{item.title}</h2>
                <p class="text-gray-300 text-sm">{item.confOrPub}</p>
            </div>
        {/each}
    </div>
</div>