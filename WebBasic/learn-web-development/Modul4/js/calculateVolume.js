function calculateVolume() {
    const panjang = parseFloat(document.getElementById('length').value);
    const lebar = parseFloat(document.getElementById('width').value);
    const tinggi = parseFloat(document.getElementById('height').value);

    if (isNaN(panjang) || isNaN(lebar) || isNaN(tinggi)) {
        return "Masukkan angka yang valid untuk panjang, lebar, dan tinggi.";
    }

    let volume = panjang * lebar * tinggi;
    const resultElement = document.getElementById('volumeResult');
    resultElement.textContent = `Volume Balok: ${volume}`;

    const resultDiv = document.getElementById('result');
    resultDiv.style.display = 'block';
}
