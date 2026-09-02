function sleep(sec) {
    return new Promise(resolve => setTimeout(resolve, sec * 1000));
}

function random_range(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


async function main() {
    let progress = 0;

    while (progress < 100) {
        const limit = Math.min(progress + 20, 100);
        progress = random_range(progress + 1, limit);

        console.log(`Pentagon hack progress: ${progress}%`);

        await sleep(1);
    }

    if (random_range(1, 30) > 20) {
        console.log("Pentagon hack: Completed successfully.");
        
    } else {
        console.log("Pentagon hack: Failed.");
    }
}


main();
