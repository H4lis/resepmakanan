class MenuModel {
  final String image;
  final String name;
  final String duration;
  final List<String> bahan;
  final List<String> caraMasak;

  MenuModel(
      {required this.image,
      required this.name,
      required this.duration,
      required this.bahan,
      required this.caraMasak});
}

List<MenuModel> resepPopuler = [
  MenuModel(
      image: "assets/images/makanan1.png",
      name: "Salad Yunani Klasik",
      duration: "15 Menit",
      bahan: [
        "Tomat",
        "Mentimun",
        "Bawang Merah",
        "Keju Feta"
      ],
      caraMasak: [
        "Cuci dan potong tomat, mentimun, dan bawang merah.",
        "Campurkan sayuran dalam mangkuk besar.",
        "Tambahkan keju feta yang sudah dipotong dadu.",
        "Tuangkan minyak zaitun dan bumbu sesuai selera, lalu aduk rata."
      ]),
  MenuModel(
      image: "assets/images/makanan2.png",
      name: "Spaghetti Aglio e Olio",
      duration: "20 Menit",
      bahan: [
        "Spaghetti",
        "Bawang Putih",
        "Minyak Zaitun",
        "Peterseli",
        "Cabe"
      ],
      caraMasak: [
        "Rebus spaghetti hingga al dente, tiriskan.",
        "Panaskan minyak zaitun dalam wajan, tumis bawang putih hingga harum.",
        "Tambahkan spaghetti ke dalam wajan, aduk rata.",
        "Taburkan peterseli dan cabe, lalu sajikan hangat."
      ]),
  MenuModel(
      image: "assets/images/makanan3.png",
      name: "Curry Ayam",
      duration: "40 Menit",
      bahan: [
        "Ayam",
        "Pasta Kari",
        "Santan",
        "Sayuran"
      ],
      caraMasak: [
        "Panaskan minyak dalam wajan, tumis pasta kari hingga harum.",
        "Masukkan potongan ayam, aduk hingga ayam berubah warna.",
        "Tuangkan santan dan masukkan sayuran, masak hingga matang.",
        "Sajikan dengan nasi hangat."
      ]),
  MenuModel(
      image: "assets/images/makanan4.png",
      name: "Salad Caprese",
      duration: "10 Menit",
      bahan: [
        "Tomat",
        "Keju Mozzarella",
        "Basil",
        "Minyak Zaitun"
      ],
      caraMasak: [
        "Iris tomat dan keju mozzarella.",
        "Susun irisan tomat dan keju secara bergantian di piring.",
        "Tambahkan daun basil di atasnya.",
        "Tuangkan minyak zaitun dan bumbu secukupnya."
      ]),
];

List<MenuModel> resepBaru = [
  MenuModel(
      image: "assets/images/makanan5.png",
      name: "Risotto Jamur",
      duration: "30 Menit",
      bahan: [
        "Nasi Arborio",
        "Jamur",
        "Bawang Bombai",
        "Kaldu Ayam",
        "Parmesan"
      ],
      caraMasak: [
        "Panaskan sedikit minyak, tumis bawang bombai hingga transparan.",
        "Tambahkan jamur, masak hingga lunak.",
        "Masukkan nasi arborio, aduk rata.",
        "Tuang kaldu sedikit-sedikit sambil terus diaduk hingga nasi matang.",
        "Sajikan dengan taburan parmesan."
      ]),
  MenuModel(
      image: "assets/images/makanan6.png",
      name: "Taco Daging Sapi",
      duration: "25 Menit",
      bahan: [
        "Daging Sapi Cincang",
        "Kulit Taco",
        "Selada",
        "Tomat",
        "Keju"
      ],
      caraMasak: [
        "Masak daging sapi dengan bumbu taco hingga matang.",
        "Isi kulit taco dengan daging sapi yang sudah dimasak.",
        "Tambahkan selada, potongan tomat, dan keju di atasnya.",
        "Sajikan dengan salsa atau saus sesuai selera."
      ]),
  MenuModel(
      image: "assets/images/makanan7.png",
      name: "Tumis Sayuran",
      duration: "15 Menit",
      bahan: [
        "Sayuran Campur",
        "Kecap Manis",
        "Bawang Putih",
        "Jahe"
      ],
      caraMasak: [
        "Panaskan minyak dalam wajan, tumis bawang putih dan jahe hingga harum.",
        "Tambahkan sayuran campur, masak hingga layu.",
        "Tuangkan kecap manis, aduk rata, dan masak selama beberapa menit.",
        "Sajikan hangat."
      ]),
  MenuModel(
      image: "assets/images/makanan8.png",
      name: "Pancake",
      duration: "20 Menit",
      bahan: [
        "Tepung Terigu",
        "Telur",
        "Susu",
        "Gula",
        "Baking Powder"
      ],
      caraMasak: [
        "Campurkan tepung, gula, dan baking powder dalam mangkuk.",
        "Tambahkan susu dan telur, aduk hingga halus.",
        "Panaskan wajan dan tuang adonan pancake, masak hingga muncul gelembung.",
        "Balik dan masak sisi lainnya hingga keemasan, sajikan dengan sirup."
      ]),
];

List<MenuModel> resepMenuDiet = [
  MenuModel(
      image: "assets/images/makanan1.png",
      name: "Salad Quinoa",
      duration: "15 Menit",
      bahan: [
        "Quinoa",
        "Mentimun",
        "Tomat Ceri",
        "Lemon",
        "Minyak Zaitun"
      ],
      caraMasak: [
        "Masak quinoa hingga empuk, tiriskan.",
        "Cuci dan potong mentimun dan tomat ceri.",
        "Campurkan quinoa dengan sayuran.",
        "Tuangkan jus lemon dan minyak zaitun, aduk rata."
      ]),
  MenuModel(
      image: "assets/images/makanan2.png",
      name: "Salmon Panggang",
      duration: "25 Menit",
      bahan: [
        "Fillet Salmon",
        "Lemon",
        "Dill",
        "Garam",
        "Merica"
      ],
      caraMasak: [
        "Bumbui fillet salmon dengan garam dan merica.",
        "Peras lemon di atas salmon dan taburi dengan dill.",
        "Panggang di oven hingga matang, sajikan dengan irisan lemon."
      ]),
  MenuModel(
      image: "assets/images/makanan3.png",
      name: "Salad Kacang Chickpea",
      duration: "15 Menit",
      bahan: [
        "Kacang Chickpea",
        "Mentimun",
        "Bawang Merah",
        "Keju Feta",
        "Jus Lemon"
      ],
      caraMasak: [
        "Campurkan kacang chickpea yang sudah direbus dengan sayuran.",
        "Tambahkan keju feta yang sudah dipotong dadu.",
        "Tuangkan jus lemon dan aduk hingga rata."
      ]),
  MenuModel(
      image: "assets/images/makanan4.png",
      name: "Mie Zucchini",
      duration: "20 Menit",
      bahan: [
        "Zucchini",
        "Saus Tomat",
        "Bawang Putih",
        "Parmesan"
      ],
      caraMasak: [
        "Gunakan spiralizer untuk memotong zucchini menjadi mie.",
        "Panaskan sedikit minyak, tumis bawang putih hingga harum.",
        "Tambahkan mie zucchini dan saus tomat, masak hingga zucchini layu.",
        "Sajikan dengan taburan parmesan."
      ]),
];

List<MenuModel> resepCepatGemuk = [
  MenuModel(
      image: "assets/images/makanan3.png",
      name: "Salad Kacang Chickpea",
      duration: "15 Menit",
      bahan: [
        "Kacang Chickpea",
        "Mentimun",
        "Bawang Merah",
        "Keju Feta",
        "Jus Lemon"
      ],
      caraMasak: [
        "Campurkan kacang chickpea yang sudah direbus dengan sayuran.",
        "Tambahkan keju feta yang sudah dipotong dadu.",
        "Tuangkan jus lemon dan aduk hingga rata."
      ]),
  MenuModel(
      image: "assets/images/makanan4.png",
      name: "Mie Zucchini",
      duration: "20 Menit",
      bahan: [
        "Zucchini",
        "Saus Tomat",
        "Bawang Putih",
        "Parmesan"
      ],
      caraMasak: [
        "Gunakan spiralizer untuk memotong zucchini menjadi mie.",
        "Panaskan sedikit minyak, tumis bawang putih hingga harum.",
        "Tambahkan mie zucchini dan saus tomat, masak hingga zucchini layu.",
        "Sajikan dengan taburan parmesan."
      ]),
  MenuModel(
      image: "assets/images/makanan1.png",
      name: "Salad Quinoa",
      duration: "15 Menit",
      bahan: [
        "Quinoa",
        "Mentimun",
        "Tomat Ceri",
        "Lemon",
        "Minyak Zaitun"
      ],
      caraMasak: [
        "Masak quinoa hingga empuk, tiriskan.",
        "Cuci dan potong mentimun dan tomat ceri.",
        "Campurkan quinoa dengan sayuran.",
        "Tuangkan jus lemon dan minyak zaitun, aduk rata."
      ]),
  MenuModel(
      image: "assets/images/makanan2.png",
      name: "Salmon Panggang",
      duration: "25 Menit",
      bahan: [
        "Fillet Salmon",
        "Lemon",
        "Dill",
        "Garam",
        "Merica"
      ],
      caraMasak: [
        "Bumbui fillet salmon dengan garam dan merica.",
        "Peras lemon di atas salmon dan taburi dengan dill.",
        "Panggang di oven hingga matang, sajikan dengan irisan lemon."
      ]),
];
