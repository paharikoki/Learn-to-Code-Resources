for (let i = 22081; i < 22086; i++) {
    for (let j = 1; j < 34; j++) {
        console.log(`${i}00000${(j < 10 ? '0' : '') + j}`);
    }
    console.log();
}
