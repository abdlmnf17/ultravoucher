
// Berikut langkah-langkah yang saya buat

// 1).  Buat objek kosong anagramGroups untuk menyimpan grup anagram.

// 2). Membuat loop melalui setiap kata dalam array words lalu mengurutkan karakter dalam setiap kata untuk membuat kunci anagram dan menambahkan kata ke dalam grup yang sesuai dengan kunci anagramnya.

// 3). Setelah itu mengembalikan nilai array dari objek anagramGroups lalu menerapkan fungsi pada array  inputArray.

// 4). Tampilkan hasilnya di console menggunakan console.log.

function groupAnagrams(words) {
    const anagramGroups = {};
    for (const word of words) {
      const sortedWord = word.split("").sort().join("");
      anagramGroups[sortedWord] = (anagramGroups[sortedWord] || []).concat(word);
    }
    return Object.values(anagramGroups);
  }
  const inputArray = ["cook", "save", "taste", "aves", "vase", "state", "map"];
  const resultArray = groupAnagrams(inputArray);
  console.log(resultArray);