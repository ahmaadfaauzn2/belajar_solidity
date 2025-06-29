// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.4;

contract FirstContract  {
    // State Variable di smart contract
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    string public name = "Fauzan";
    // Tipe data di smart contract
    bool public bool1  = true; 
    // Aritmatika 
    uint public x = 10;
    int public y = -5;
    int public add = int(x) + y;

    bytes1 public a = 0xa2; // 10100010
    bytes1 public b = 0xd2; // 11010010 

    // operasi bitwise
    bytes1 public and = a & b;
    bytes1 public or = a | b;
    bytes1 public xor = a ^ b;
    bytes1 public neg = ~a;
    
   // Function untuk logika pengubahan variabel 'name'
    // Fungsi ini digunakan untuk mengubah nilai variabel state `name` dengan syarat hanya pemilik kontrak yang dapat melakukannya.
    function Changename(string memory _changename) public onlyOwner returns (string memory) {
        // Mengubah nilai variabel state 'name' menjadi nilai baru yang diterima dari parameter _changename
        name = _changename; 
        // Mengembalikan pesan berhasil
        return "Successfully changed name!"; 
    }

    // Function Modifier untuk validasi digunakan untuk membatasi akses fungsi hanya kepada pemilik kontrak (owner).
    // Logika ini memverifikasi bahwa pengirim transaksi (msg.sender) adalah pemilik kontrak.
    modifier onlyOwner {
        // Validasi kepemilikan kontrak
        require(msg.sender == owner, "Caller is not the owner"); 
        _; // Melanjutkan eksekusi fungsi yang menggunakan modifier ini
        /*
    // Contoh Kasus Fauzan
    
    // 1. Fauzan memiliki kontrak dengan alamat tertentu
    //    - Fauzan deploy kontrak ini dengan alamat awal: 0x512500 sekian
    //    - Nama awal kontrak adalah "Fauzan Contract".
    //    - State awal:
    //      owner = 0x512500
    //      name = "Fauzan Contract"

    // 2. Fauzan ingin mengubah nama kontrak setelah deploy
    //    - Fauzan memanggil fungsi changeName untuk mengganti nama kontrak menjadi:
    //      "New Fauzan Contract".
    //    - Pemanggilan fungsi:
    //        changeName("New Fauzan Contract")
    //    - Hasil:
    //      name = "New Fauzan Contract"
    //      Pesan yang dikembalikan: "Nama kontrak berhasil diubah!"

    // 3. Fauzan memindahkan kepemilikan kontrak ke orang lain
    //    - Fauzan memutuskan memindahkan kepemilikan ke alamat baru:
    //      0x1234500000000000000000000000000000000000.
    //    - Pemanggilan fungsi:
    //        transferOwnership(0x1234500000000000000000000000000000000000)
    //    - Hasil:
    //      owner = 0x1234500000000000000000000000000000000000
    //      Pesan yang dikembalikan: "Kepemilikan kontrak telah berhasil dipindahkan!"
    */
        

        // Acces modifier terdapat 4
        // 1. Internal function
        // 2. External function

        // Semantic modifier terdapat 4 
        // 1. external(dapat diakses dari luar kontrak dan trans) 
        //, 2. public , 3. internal, 4 .private
    }
}
