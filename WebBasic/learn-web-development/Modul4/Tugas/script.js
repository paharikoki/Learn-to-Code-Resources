function showInputFields() {
    const shapeSelect = document.getElementById("shapeSelect");
    const selectedShape = shapeSelect.value;
    const inputFields = document.getElementById("inputFields");

    // Reset inputFields content on each change
    inputFields.innerHTML = "";

    if (selectedShape === "pilihan") {
        document.getElementById("result").style.display = "none"; // Hide result when placeholder is selected
        return; // Don't generate input fields for placeholder
    }

    if (selectedShape === "kubus") {
        const label = document.createElement("label");
        label.className = "input-group-text ";
        label.innerText = "Sisi:";
        inputFields.appendChild(label);

        const input = document.createElement("input");
        input.type = "number";
        input.className = "form-control w-100";
        input.placeholder = "Panjang Sisi";
        inputFields.appendChild(input);
    } else if (selectedShape === "tabung") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text ";
        label1.innerText = "Jari-jari:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Jari-jari Tabung";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Tinggi:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Tinggi Tabung";
        inputFields.appendChild(input2);
    } else if (selectedShape === "persegiPanjang") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text";
        label1.innerText = "Panjang:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Panjang Persegi Panjang";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Lebar:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Lebar Persegi Panjang";
        inputFields.appendChild(input2);
    } else if (selectedShape === "segitigaSamaSisi") {
        const label = document.createElement("label");
        label.className = "input-group-text ";
        label.innerText = "Sisi:";
        inputFields.appendChild(label);

        const input = document.createElement("input");
        input.type = "number";
        input.className = "form-control w-100";
        input.placeholder = "Panjang Sisi";
        inputFields.appendChild(input);
    } else if (selectedShape === "segitigaSamaKaki") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text ";
        label1.innerText = "Alas:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Panjang Alas";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Tinggi:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Tinggi Segitiga";
        inputFields.appendChild(input2);
    } else if (selectedShape === "segitigaSikuSiku") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text";
        label1.innerText = "Alas:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Panjang Alas";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Tinggi:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Tinggi Segitiga";
        inputFields.appendChild(input2);
    } else if (selectedShape === "balok") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text";
        label1.innerText = "Panjang:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Panjang Balok";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Lebar:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Lebar Balok";
        inputFields.appendChild(input2);

        const label3 = document.createElement("label");
        label3.className = "input-group-text";
        label3.innerText = "Tinggi:";
        inputFields.appendChild(label3);

        const input3 = document.createElement("input");
        input3.type = "number";
        input3.className = "form-control w-100";
        input3.placeholder = "Tinggi Balok";
        inputFields.appendChild(input3);
    }else if (selectedShape === "persegi") {
        const label = document.createElement("label");
        label.className = "input-group-text";
        label.innerText = "Sisi:";
        inputFields.appendChild(label);

        const input = document.createElement("input");
        input.type = "number";
        input.className = "form-control w-100 w-100";
        input.placeholder = "Panjang Sisi";
        inputFields.appendChild(input);
    } else if (selectedShape === "kerucut") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text";
        label1.innerText = "Jari-jari Alas:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Jari-jari Alas Kerucut";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Tinggi:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Tinggi Kerucut";
        inputFields.appendChild(input2);
    } else if (selectedShape === "bola") {
        const label = document.createElement("label");
        label.className = "input-group-text";
        label.innerText = "Jari-jari:";
        inputFields.appendChild(label);

        const input = document.createElement("input");
        input.type = "number";
        input.className = "form-control w-100";
        input.placeholder = "Jari-jari Bola";
        inputFields.appendChild(input);
    } else if (selectedShape === "prisma") {
        const label1 = document.createElement("label");
        label1.className = "input-group-text";
        label1.innerText = "Panjang Alas Segitiga:";
        inputFields.appendChild(label1);

        const input1 = document.createElement("input");
        input1.type = "number";
        input1.className = "form-control w-100";
        input1.placeholder = "Panjang Alas Segitiga";
        inputFields.appendChild(input1);

        const label2 = document.createElement("label");
        label2.className = "input-group-text";
        label2.innerText = "Tinggi Alas Segitiga:";
        inputFields.appendChild(label2);

        const input2 = document.createElement("input");
        input2.type = "number";
        input2.className = "form-control w-100";
        input2.placeholder = "Tinggi Alas Segitiga";
        inputFields.appendChild(input2);

        const label3 = document.createElement("label");
        label3.className = "input-group-text";
        label3.innerText = "Tinggi Prisma:";
        inputFields.appendChild(label3);

        const input3 = document.createElement("input");
        input3.type = "number";
        input3.className = "form-control w-100";
        input3.placeholder = "Tinggi Prisma";
        inputFields.appendChild(input3);
    }


    inputFields.style.display = "block";
}

function calculate() {
    const shapeSelect = document.getElementById("shapeSelect");
    const selectedShape = shapeSelect.value;
    const inputFields = document.getElementById("inputFields");
    const inputs = inputFields.getElementsByTagName("input")
    ;
    if (selectedShape === "pilihan") {
        document.getElementById("result").style.display = "none"; // Hide result when placeholder is selected
        return; // No calculation for placeholder
    }
    let result = 0;

    if (selectedShape === "kubus") {
        const sisi = parseFloat(inputs[0].value);
        result = Math.pow(sisi, 3);
    } else if (selectedShape === "tabung") {
        const jariJari = parseFloat(inputs[0].value);
        const tinggi = parseFloat(inputs[1].value);
        result = Math.PI * Math.pow(jariJari, 2) * tinggi;
    } else if (selectedShape === "persegiPanjang") {
        const panjang = parseFloat(inputs[0].value);
        const lebar = parseFloat(inputs[1].value);
        result = panjang * lebar;
    } else if (selectedShape === "segitigaSamaSisi") {
        const sisi = parseFloat(inputs[0].value);
        result = (Math.sqrt(3) / 4) * Math.pow(sisi, 2);
    } else if (selectedShape === "segitigaSamaKaki") {
        const alas = parseFloat(inputs[0].value);
        const tinggi = parseFloat(inputs[1].value);
        result = (alas * tinggi) / 2;
    } else if (selectedShape === "segitigaSikuSiku") {
        const alas = parseFloat(inputs[0].value);
        const tinggi = parseFloat(inputs[1].value);
        result = (alas * tinggi) / 2;
    } else if (selectedShape === "balok") {
        const panjang = parseFloat(inputs[0].value);
        const lebar = parseFloat(inputs[1].value);
        const tinggi = parseFloat(inputs[2].value);
        result = panjang * lebar * tinggi;
    } else if (selectedShape === "persegi") {
        const sisi = parseFloat(inputs[0].value);
        result = Math.pow(sisi, 2);
    } else if (selectedShape === "kerucut") {
        const jariJari = parseFloat(inputs[0].value);
        const tinggi = parseFloat(inputs[1].value);
        result = (1 / 3) * Math.PI * Math.pow(jariJari, 2) * tinggi;
    } else if (selectedShape === "bola") {
        const jariJari = parseFloat(inputs[0].value);
        result = (4 / 3) * Math.PI * Math.pow(jariJari, 3);
    } else if (selectedShape === "prisma") {
        const alasSegitiga = parseFloat(inputs[0].value);
        const tinggiSegitiga = parseFloat(inputs[1].value);
        const tinggiPrisma = parseFloat(inputs[2].value);
        result = (0.5 * alasSegitiga * tinggiSegitiga) * tinggiPrisma;
    }

    const resultContainer = document.getElementById("result");
    const resultValue = document.getElementById("resultValue");

    resultValue.textContent = result;
    resultContainer.style.display = "block";
}
