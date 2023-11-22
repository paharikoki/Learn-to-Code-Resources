let data = [{
    "name": "Riski Dwi Prakoso",
    "email": "22081000004@student.unmer.ac.id",
    "password": "$2y$10$PT2IOe3JC\/WpmRAUjmx\/heToKZMtPmJA\/p3biKc4kELQpQffDZ1ZG",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Miftahul Adnin Adiwati",
    "email": "22081000008@student.unmer.ac.id",
    "password": "$2y$10$3BK6.yR6AiSzOtHEjCp3QOYwrUnMEMpvv6BEupYVzJQDxgsU1Y7kW",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Arsyad Widia Tirta Arakian",
    "email": "22081000003@student.unmer.ac.id",
    "password": "$2y$10$LjNiHpQtdgzll.U0qwkp0exF43lb1YRg6CRzi1qAuhpfcopAu.OGK",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Reza Fadillah",
    "email": "22081000001@student.unmer.ac.id",
    "password": "$2y$10$MvVsljaY3V7gcsOlY\/l.Vev8.61gF.zHJ\/kmY1Fkd70sSPCwAGsnW",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Rizalludin Fakhriansyah Nugroho",
    "email": "22081000002@student.unmer.ac.id",
    "password": "$2y$10$f7UmRcRywM8mpov.5kzpYuaC8u7c2qjZVFuJ4ifyMvIyuZYDOI.pe",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Muh Azril Hariansyah",
    "email": "22081000015@student.unmer.ac.id",
    "password": "$2y$10$H2s1DIsO\/SIBG30Jmpf7nOBJvTIclwwJRdGAKUJLARedpu2vV8SeG",
    "created_at": "2023-10-10 03:10:15",
    "updated_at": "2023-10-10 03:10:15"
}, {
    "name": "Bayu Krisnamukti",
    "email": "22081000010@student.unmer.ac.id",
    "password": "$2y$10$xmVOpV1VBBqySps1BBhfROkWSxv.nQ.5IgFUOtqdk4QNnEbm3MXnC",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Darmawan Agung D.P ",
    "email": "22081000011@student.unmer.ac.id",
    "password": "$2y$10$4\/\/COpXlNg241X8BLEIfgO\/MOn0rfnzSJzX6C0kZxtyC2Twue2QMO",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Arina Hidayah",
    "email": "22081000009@student.unmer.ac.id",
    "password": "$2y$10$Ksqjhjnlntrzg\/C5d\/4jvuTwEopHF4RsT.Wt0Ql21qlefV9wK8zA.",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Ahmad Alan Lestari",
    "email": "22081000007@student.unmer.ac.id",
    "password": "$2y$10$0jPNFQPLsHIGknUhMz7WHO.rab6qo\/Dls81su2I3SjWs37gYBlpFa",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Nadita Prisanta",
    "email": "22081000012@student.unmer.ac.id",
    "password": "$2y$10$\/jnkWSgCezmSAla6i5uQduGEXHWvQVo7ljUlS.sOEvVCfJ0c4GQ2a",
    "created_at": "2023-10-10 03:10:14",
    "updated_at": "2023-10-10 03:10:14"
}, {
    "name": "Taufanrizqi Andika",
    "email": "22081000014@student.unmer.ac.id",
    "password": "$2y$10$nARfNErFrJMhBpx7MkpivejZeQdZGtK1qO\/HVes99Adfqf.C5NRRm",
    "created_at": "2023-10-10 03:10:15",
    "updated_at": "2023-10-10 03:10:15"
}, {
    "name": "kuji",
    "email": "23083000001@student.unmer.ac.id",
    "password": "$2y$10$\/vB6RImfc9YIKUXfqqF9cuIrloFQD\/LD8OShs.8wlS5GLHx\/UViXy",
    "created_at": "2023-10-10 03:15:30",
    "updated_at": "2023-10-10 03:15:30"
}];

// Sort by name
data.sort((a, b) => a.name.localeCompare(b.name));
console.log("Sorted by Name:");
console.log(data);

console.log();

// Sort by email
data.sort((a, b) => a.email.localeCompare(b.email));
console.log("Sorted by Email:");
console.log(data);
