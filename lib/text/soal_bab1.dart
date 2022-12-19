class QuestionModel1 {
  String? question1;
  Map<String, bool>? answers1;
  QuestionModel1(this.question1, this.answers1);
}

List<QuestionModel1> questanswer1 = [
  QuestionModel1(
    "1.	Komponen (elemen) utama sistem komputer yang secara fisik dapat dilihat, dipegang dan dipindahkan disebut ?",
    {
      "Mainware": false,
      "Brainware": false,
      "Hardware": true,
      "Sotfware": false,
    },
  ),
  QuestionModel1(
      "2.	Agar perangkat keras komputer dapat berfungsi diperlukan ?", {
    "Perangkat tambahan": false,
    "Perangkat masukan": false,
    "Perangkat keluaran": false,
    "Perangkat lunak": true,
  }),
  QuestionModel1(
      "3.	Perangkat keras komputer yang berfungsi untuk mengeluarkan hasil pemrosesan dan pengolahan data disebut ?",
      {
        "Peripheral Device": false,
        "Output Device": true,
        "Input Device": false,
        "Storage Device": false,
      }),
  QuestionModel1(
      "4.	Memori komputer yang berfungsi untuk menyimpan sementara perintah dan data pada saat sebuah program dijalankan disebut ?",
      {
        "Memori": false,
        "Harddisk": false,
        "RAM": true,
        "ROM": false,
      }),
  QuestionModel1(
      "5.	Bagian dari sebuah komputer yang mempunyai fungsi sebagai pusat pengolahan data dan pengontrolan kerja komputer adalah ?",
      {
        "Processor": true,
        "Memori": false,
        "RAM": false,
        "Hard disk": false,
      }),
  QuestionModel1(
      "6.	Media penyimpanan data yang kapasitasnya cukup besar, akses datanya juga relatif cepat serta mudah dibawa kemana – mana dan handal adalah ?",
      {
        "Harddisk Internal": false,
        "CD-ROM": false,
        "Flash disk": true,
        "DVD": false,
      }),
  QuestionModel1(
      "7.	Papan induk (papan elektronik) yang dilengkapi jalur-jalur koneksi yang memungkinkan perangkat-perangkat komputer berkomunikasi satu dengan yang lainnya dan merupakan tempat bergantungnya semua perangkat keras komputer disebut  ?",
      {
        "CPU": false,
        "LAN Card": false,
        "Memory Card": false,
        "Motherboard": true,
      }),
  QuestionModel1(
      "8.	Perangkat keras yang digunakan untuk mendeteksi kode baris yang terdapat pada sebuah barang saat kita melakukan transaksi di toko atau supermarket sehingga akan diketahui nilai harganya disebut ?",
      {
        "Card Reader": false,
        "Barcode Digital": false,
        "Barcode Reader": true,
        "Barcode Scanner": false,
      }),
  QuestionModel1(
      "9.	Perangkat keras komputer yang berfungsi mengubah sinyal digital menjadi sinyal suara dinamakan ?",
      {
        "VGA Card": false,
        "Network Card": false,
        "Sound Card": true,
        "Memory Card": false,
      }),
  QuestionModel1(
      "10.	Perangkat keras komputer yang berhubungan dengan kualitas gambar dan tampilan di layar monitor adalah ?",
      {
        "Network Card": false,
        "VGA Card": true,
        "Sound Card": false,
        "Memory Card": false,
      }),
];
