//
//  Meal+Extension.swift
//  Skripsi
//
//  Created by Mac-albert on 03/07/23.
//

import Foundation

extension Meal {
    static let preview: Meal = Meal(
        mealName: "Chicken Parmesan",
        image: "baby_potato_and_broccoli",
        mealDescription: "Delicious chicken parmesan with pasta",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Chicken breast", ingredientsQuantity: "2"),
            Ingredient(ingredientsName: "Breadcrumbs", ingredientsQuantity: "1 cup"),
            Ingredient(ingredientsName: "Parmesan cheese", ingredientsQuantity: "1/2 cup"),
            Ingredient(ingredientsName: "Marinara sauce", ingredientsQuantity: "1 cup")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Spaghetti", ingredientsQuantity: "1/2 pound"),
            Ingredient(ingredientsName: "Garlic", ingredientsQuantity: "2 cloves"),
            Ingredient(ingredientsName: "Olive oil", ingredientsQuantity: "2 tablespoons"),
            Ingredient(ingredientsName: "Basil leaves", ingredientsQuantity: "1/4 cup")
        ],
        utensils: [
            Utensil(untensilName: "Baking dish"),
            Utensil(untensilName: "Skillet"),
            Utensil(untensilName: "Pot"),
            Utensil(untensilName: "Spatula")
        ],
        steps: [
            "Preheat the oven to 400°F",
            "Mix breadcrumbs and parmesan cheese in a shallow dish",
            "Dip chicken breasts in the breadcrumb mixture to coat",
            "Heat olive oil in a skillet over medium heat",
            "Cook the chicken in the skillet until golden brown on both sides",
            "Transfer the chicken to a baking dish and top with marinara sauce",
            "Bake in the preheated oven for 20 minutes",
            "Meanwhile, cook spaghetti according to package instructions",
            "Serve the chicken parmesan over spaghetti, garnished with basil leaves"
        ]
    )
}

extension Meal {
    static let preview1: Meal = Meal(
        mealName: "Nasi Goreng",
        image: "baby_potato_and_broccoli",
        mealDescription: "Nasi goreng adalah sejenis makanan yang terbuat dari bahan-bahan nasi dan bumbu-bumbu yang diolah dengan cara digoreng",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Nasi", ingredientsQuantity: "2 porsi"),
            Ingredient(ingredientsName: "Bawang merah", ingredientsQuantity: "3 butir"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "2 siung"),
            Ingredient(ingredientsName: "Kecap manis", ingredientsQuantity: "2 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Telur", ingredientsQuantity: "2 butir"),
            Ingredient(ingredientsName: "Daging ayam", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Udang", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Sayuran", ingredientsQuantity: "secukupnya")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Sendok"),
            Utensil(untensilName: "Garpu")
        ],
        steps: [
            "Panaskan minyak di dalam wajan",
            "Tumis bawang merah dan bawang putih hingga harum",
            "Masukkan nasi dan aduk rata",
            "Tambahkan kecap manis dan aduk kembali",
            "Masukkan telur, daging ayam, udang, dan sayuran",
            "Aduk rata hingga matang dan siap disajikan"
        ]
    )
}

extension Meal {
    static let preview2: Meal = Meal(
        mealName: "Spaghetti Carbonara",
        image: "baby_potato_and_broccoli",
        mealDescription: "Spaghetti carbonara adalah hidangan pasta yang terbuat dari spaghetti, telur, keju parmesan, bacon, dan lada hitam",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Spaghetti", ingredientsQuantity: "200 gram"),
            Ingredient(ingredientsName: "Telur", ingredientsQuantity: "2 butir"),
            Ingredient(ingredientsName: "Keju parmesan", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Bacon", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Lada hitam", ingredientsQuantity: "secukupnya")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "2 siung"),
            Ingredient(ingredientsName: "Peterseli", ingredientsQuantity: "secukupnya")
        ],
        utensils: [
            Utensil(untensilName: "Panci"),
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Sendok"),
            Utensil(untensilName: "Garpu")
        ],
        steps: [
            "Rebus air dalam panci hingga mendidih, lalu masukkan spaghetti dan rebus hingga al dente",
            "Panaskan minyak zaitun dalam wajan, tumis bawang putih hingga harum",
            "Tambahkan bacon dan masak hingga crispy",
            "Dalam wadah terpisah, kocok telur dan keju parmesan hingga tercampur rata",
            "Tiriskan spaghetti dan masukkan ke dalam wajan, aduk rata dengan bawang putih dan bacon",
            "Matikan api dan tuangkan campuran telur dan keju parmesan, aduk rata hingga membentuk saus",
            "Taburi dengan lada hitam dan peterseli, sajikan hangat"
        ]
    )
}

extension Meal {
    static let salad: Meal = Meal(
        mealName: "Salad",
        image: "salad",
        mealDescription: "Salad segar dan sehat.",
        mealDay: .lunch,
        mainIngredients: [
            Ingredient(ingredientsName: "Selada campur", ingredientsQuantity: "2 mangkuk"),
            Ingredient(ingredientsName: "Tomat cherry", ingredientsQuantity: "1 mangkuk"),
            Ingredient(ingredientsName: "Mentimun", ingredientsQuantity: "1 buah"),
            Ingredient(ingredientsName: "Bawang merah", ingredientsQuantity: "1/4 buah"),
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Cuka balsamic", ingredientsQuantity: "1 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Alpukat", ingredientsQuantity: "1 buah"),
            Ingredient(ingredientsName: "Keju feta", ingredientsQuantity: "1/4 mangkuk"),
            Ingredient(ingredientsName: "Kenari", ingredientsQuantity: "1/4 mangkuk")
        ],
        utensils: [
            Utensil(untensilName: "Mangkuk salad"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong")
        ],
        steps: [
            "Cuci dan keringkan selada campur.",
            "Potong tomat cherry, mentimun, dan bawang merah.",
            "Di dalam mangkuk salad, campur selada campur, tomat cherry, mentimun, dan bawang merah.",
            "Siram dengan minyak zaitun dan cuka balsamic.",
            "Aduk hingga semua bahan tercampur rata.",
            "Hias dengan alpukat, keju feta, dan kenari."
        ]
    )
    
    static let babyPotatoAndBroccoli: Meal = Meal(
        mealName: "Baby Potato and Broccoli",
        image: "baby_potato_and_broccoli",
        mealDescription: "Masakan lezat dan sehat dengan kentang dan brokoli.",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Kentang baby", ingredientsQuantity: "500 gram"),
            Ingredient(ingredientsName: "Floret brokoli", ingredientsQuantity: "2 mangkuk"),
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Bubuk bawang putih", ingredientsQuantity: "1 sendok teh"),
            Ingredient(ingredientsName: "Garam", ingredientsQuantity: "1/2 sendok teh"),
            Ingredient(ingredientsName: "Merica hitam", ingredientsQuantity: "1/4 sendok teh")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Keju parmesan", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Peterseli segar", ingredientsQuantity: "1 sendok makan, cincang")
        ],
        utensils: [
            Utensil(untensilName: "Lembar loyang"),
            Utensil(untensilName: "Mangkuk aduk"),
            Utensil(untensilName: "Spatula")
        ],
        steps: [
            "Panaskan oven hingga 425°F (220°C).",
            "Potong kentang baby menjadi dua atau empat bagian, tergantung ukurannya.",
            "Dalam mangkuk aduk, campur kentang baby dan floret brokoli dengan minyak zaitun, bubuk bawang putih, garam, dan merica hitam.",
            "Sebarkan kentang dan brokoli dalam satu lapisan di atas lembar loyang.",
            "Panggang selama 20-25 menit, atau hingga kentang berwarna keemasan dan renyah.",
            "Taburi dengan keju parmesan dan peterseli segar sebelum disajikan."
        ]
    )
    
    static let eggplantAndLentilsBowl: Meal = Meal(
        mealName: "Eggplant and Lentils Bowl",
        image: "eggplant_and_lentils_bowl",
        mealDescription: "Bowl yang lezat dan kaya rasa dengan terong panggang dan lentil.",
        mealDay: .lunch,
        mainIngredients: [
            Ingredient(ingredientsName: "Terong", ingredientsQuantity: "1 buah"),
            Ingredient(ingredientsName: "Lentil", ingredientsQuantity: "1 mangkuk, matang"),
            Ingredient(ingredientsName: "Tomat cherry", ingredientsQuantity: "1 mangkuk"),
            Ingredient(ingredientsName: "Paprika merah", ingredientsQuantity: "1 buah"),
            Ingredient(ingredientsName: "Bawang merah", ingredientsQuantity: "1/2 buah"),
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Cuka beras", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Peterseli segar", ingredientsQuantity: "1/4 mangkuk, cincang")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Keju feta", ingredientsQuantity: "1/4 mangkuk"),
            Ingredient(ingredientsName: "Pine nut panggang", ingredientsQuantity: "2 sendok makan")
        ],
        utensils: [
            Utensil(untensilName: "Lembar loyang"),
            Utensil(untensilName: "Mangkuk aduk"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong")
        ],
        steps: [
            "Panaskan oven hingga 425°F (220°C).",
            "Potong terong menjadi dadu dan letakkan di atas lembar loyang.",
            "Siram dengan minyak zaitun dan taburi dengan garam dan merica.",
            "Panggang di dalam oven selama 20-25 menit, atau hingga terong lunak dan berwarna kecokelatan.",
            "Dalam mangkuk aduk, gabungkan terong panggang, lentil matang, tomat cherry, paprika merah, dan bawang merah.",
            "Siram dengan cuka beras dan aduk hingga semua bahan tercampur rata.",
            "Hias dengan peterseli segar, keju feta, dan pine nut panggang."
        ]
    )
    
    static let garlicShimejiSalad: Meal = Meal(
        mealName: "Garlic Shimeji Salad",
        image: "garlic_shimeji_salad",
        mealDescription: "Salad lezat dengan jamur shimeji yang diolah dengan bawang putih.",
        mealDay: .lunch,
        mainIngredients: [
            Ingredient(ingredientsName: "Jamur shimeji", ingredientsQuantity: "8 ons"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "4 siung, cincang"),
            Ingredient(ingredientsName: "Kecap manis", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Cuka beras", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Madu", ingredientsQuantity: "1 sendok teh"),
            Ingredient(ingredientsName: "Minyak wijen", ingredientsQuantity: "1 sendok teh"),
            Ingredient(ingredientsName: "Bawang daun", ingredientsQuantity: "2 batang, iris"),
            Ingredient(ingredientsName: "Biji wijen panggang", ingredientsQuantity: "1 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Selada campur", ingredientsQuantity: "2 mangkuk"),
            Ingredient(ingredientsName: "Mentimun", ingredientsQuantity: "1 buah, iris tipis"),
            Ingredient(ingredientsName: "Wortel", ingredientsQuantity: "1 buah, julienne")
        ],
        utensils: [
            Utensil(untensilName: "Mangkuk salad"),
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong")
        ],
        steps: [
            "Panaskan wajan dengan api sedang.",
            "Tambahkan bawang putih cincang dan tumis hingga harum.",
            "Tambahkan jamur shimeji dan aduk rata.",
            "Tuang kecap manis, cuka beras, madu, dan minyak wijen ke dalam wajan.",
            "Aduk hingga jamur terbalut rata dengan bumbu.",
            "Masak selama 2-3 menit atau hingga jamur shimeji matang.",
            "Di dalam mangkuk salad, campur selada campur, mentimun, dan wortel.",
            "Letakkan jamur shimeji di atas salad.",
            "Taburi dengan bawang daun iris dan biji wijen panggang."
        ]
    )
    
    static let ginsengKailan: Meal = Meal(
        mealName: "Ginseng Kailan",
        image: "ginseng_kailan",
        mealDescription: "Kailan yang lezat dengan tambahan ginseng.",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Kailan", ingredientsQuantity: "1 ikat"),
            Ingredient(ingredientsName: "Ginseng", ingredientsQuantity: "2 batang"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "3 siung, cincang"),
            Ingredient(ingredientsName: "Minyak wijen", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Kecap manis", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Kecap asin", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Merica bubuk", ingredientsQuantity: "1/4 sendok teh")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Bawang merah", ingredientsQuantity: "2 siung, iris tipis"),
            Ingredient(ingredientsName: "Cabai rawit merah", ingredientsQuantity: "2 buah, iris tipis")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong")
        ],
        steps: [
            "Panaskan wajan dengan api sedang.",
            "Tambahkan minyak wijen dan bawang putih cincang.",
            "Tumis bawang putih hingga harum dan berwarna keemasan.",
            "Tambahkan ginseng dan kailan ke dalam wajan.",
            "Tambahkan kecap manis, kecap asin, dan merica bubuk.",
            "Aduk rata dan masak selama 2-3 menit, atau hingga kailan layu namun tetap renyah.",
            "Hidangkan dengan taburan bawang merah iris dan cabai rawit merah."
        ]
    )
    
    static let grilledChicken: Meal = Meal(
        mealName: "Grilled Chicken",
        image: "grilled_chicken",
        mealDescription: "Ayam panggang yang lezat dan bergizi.",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Paha ayam", ingredientsQuantity: "2 buah"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "3 siung, cincang"),
            Ingredient(ingredientsName: "Lemon", ingredientsQuantity: "1 buah, peras"),
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Garam", ingredientsQuantity: "1 sendok teh"),
            Ingredient(ingredientsName: "Merica bubuk", ingredientsQuantity: "1/2 sendok teh"),
            Ingredient(ingredientsName: "Paprika bubuk", ingredientsQuantity: "1/2 sendok teh")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Saus barbekyu", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Lemon wedges", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Peterseli segar", ingredientsQuantity: "untuk penyajian")
        ],
        utensils: [
            Utensil(untensilName: "Mangkuk aduk"),
            Utensil(untensilName: "Sikat panggangan"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong"),
            Utensil(untensilName: "Piring saji")
        ],
        steps: [
            "Di dalam mangkuk aduk, campur bawang putih cincang, perasan lemon, minyak zaitun, garam, merica bubuk, dan paprika bubuk.",
            "Tambahkan paha ayam ke dalam mangkuk aduk dan baluri dengan bumbu.",
            "Diamkan selama minimal 30 menit, atau lebih baik semalaman di dalam lemari es.",
            "Panaskan panggangan atau grill pan dengan api sedang-tinggi.",
            "Panggang paha ayam selama 6-8 menit per sisi, atau hingga ayam matang sempurna dan berbekas panggangan yang menggoda.",
            "Angkat ayam panggang dari panggangan dan letakkan di atas piring saji.",
            "Sajikan dengan saus barbekyu, irisan lemon, dan taburan peterseli segar."
        ]
    )
    
    static let prawnAndShiratakiNoodleSalad: Meal = Meal(
        mealName: "Prawn and Shirataki Noodle Salad",
        image: "prawn_and_shirataki_noodle_salad",
        mealDescription: "Salad segar dengan udang dan mie shirataki.",
        mealDay: .lunch,
        mainIngredients: [
            Ingredient(ingredientsName: "Udang", ingredientsQuantity: "8 ekor, dikupas dan dibuang kepala serta ekornya"),
            Ingredient(ingredientsName: "Mie shirataki", ingredientsQuantity: "1 bungkus"),
            Ingredient(ingredientsName: "Timun", ingredientsQuantity: "1 buah, iris tipis"),
            Ingredient(ingredientsName: "Daun ketumbar", ingredientsQuantity: "1/4 mangkuk, cincang"),
            Ingredient(ingredientsName: "Bawang bombay", ingredientsQuantity: "1/2 buah, iris tipis"),
            Ingredient(ingredientsName: "Kacang kedelai", ingredientsQuantity: "1/4 mangkuk, panggang"),
            Ingredient(ingredientsName: "Biji wijen", ingredientsQuantity: "1 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Saus salad pedas", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Lime wedges", ingredientsQuantity: "untuk penyajian")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong"),
            Utensil(untensilName: "Mangkuk salad"),
            Utensil(untensilName: "Sendok salad")
        ],
        steps: [
            "Panaskan wajan dengan api sedang.",
            "Tambahkan udang dan masak hingga berubah warna menjadi merah muda, sekitar 2-3 menit.",
            "Angkat udang dari wajan dan sisihkan.",
            "Rebus mie shirataki sesuai petunjuk kemasan, lalu tiriskan dan potong-potong menjadi lebih pendek.",
            "Dalam mangkuk salad, campur mie shirataki, timun iris, daun ketumbar cincang, bawang bombay iris tipis, dan kacang kedelai panggang.",
            "Tambahkan udang yang telah dimasak ke dalam mangkuk salad.",
            "Taburi dengan biji wijen.",
            "Sajikan dengan saus salad pedas dan irisan lime."
        ]
    )
    
    static let quinoaAndOatPorridge: Meal = Meal(
        mealName: "Quinoa and Oat Porridge",
        image: "quinoa_and_oat_porridge",
        mealDescription: "Bubur bergizi dengan kombinasi quinoa dan oat.",
        mealDay: .breakfast,
        mainIngredients: [
            Ingredient(ingredientsName: "Quinoa", ingredientsQuantity: "1/2 mangkuk"),
            Ingredient(ingredientsName: "Oatmeal", ingredientsQuantity: "1/2 mangkuk"),
            Ingredient(ingredientsName: "Air", ingredientsQuantity: "2 mangkuk"),
            Ingredient(ingredientsName: "Susu almond", ingredientsQuantity: "1/2 mangkuk"),
            Ingredient(ingredientsName: "Madu", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Kayu manis bubuk", ingredientsQuantity: "1/2 sendok teh"),
            Ingredient(ingredientsName: "Buah-buahan segar", ingredientsQuantity: "untuk penyajian")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Kacang almond", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Biji chia", ingredientsQuantity: "untuk penyajian")
        ],
        utensils: [
            Utensil(untensilName: "Saucepan"),
            Utensil(untensilName: "Sendok"),
            Utensil(untensilName: "Mangkuk"),
            Utensil(untensilName: "Pisau")
        ],
        steps: [
            "Dalam saucepan, campur quinoa, oatmeal, air, susu almond, madu, dan kayu manis bubuk.",
            "Masak di atas api sedang hingga mendidih.",
            "Kecilkan api dan masak selama 10-15 menit, atau hingga bubur mengental.",
            "Aduk sesekali untuk mencegah adhesion.",
            "Tuang bubur ke dalam mangkuk dan sajikan dengan buah-buahan segar, kacang almond, dan biji chia."
        ]
    )
    
    static let mealSoup: Meal = Meal(
        mealName: "Sup Sehat",
        image: "miso_soup",
        mealDescription: "Sup yang sehat dan menghangatkan.",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Daging ayam", ingredientsQuantity: "200 gram, potong dadu"),
            Ingredient(ingredientsName: "Wortel", ingredientsQuantity: "2 buah, iris tipis"),
            Ingredient(ingredientsName: "Bawang bombay", ingredientsQuantity: "1 buah, cincang"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "3 siung, cincang"),
            Ingredient(ingredientsName: "Kubis", ingredientsQuantity: "1/4 kepala, iris tipis"),
            Ingredient(ingredientsName: "Daun seledri", ingredientsQuantity: "2 batang, cincang"),
            Ingredient(ingredientsName: "Air", ingredientsQuantity: "1 liter"),
            Ingredient(ingredientsName: "Garam", ingredientsQuantity: "secukupnya"),
            Ingredient(ingredientsName: "Merica bubuk", ingredientsQuantity: "secukupnya")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Daun bawang", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Bawang goreng", ingredientsQuantity: "untuk penyajian")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Panci"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong"),
            Utensil(untensilName: "Sendok")
        ],
        steps: [
            "Panaskan wajan dengan api sedang.",
            "Tambahkan potongan daging ayam dan tumis hingga berubah warna.",
            "Angkat daging ayam dari wajan dan sisihkan.",
            "Panaskan panci dengan api sedang.",
            "Tambahkan bawang bombay dan bawang putih cincang. Tumis hingga harum dan berwarna keemasan.",
            "Tambahkan wortel, kubis, dan seledri. Tumis selama beberapa menit hingga sayuran layu.",
            "Tambahkan daging ayam yang telah ditumis ke dalam panci.",
            "Tuangkan air ke dalam panci dan didihkan.",
            "Kecilkan api dan masak sup selama 30-40 menit hingga daging dan sayuran matang.",
            "Tambahkan garam dan merica bubuk secukupnya, sesuai selera.",
            "Hidangkan sup hangat dengan taburan daun bawang dan bawang goreng."
        ]
    )
    
    static let spicyTempehBowl: Meal = Meal(
        mealName: "Spicy Tempeh Bowl",
        image: "spicy_tempeh_bowl",
        mealDescription: "Bowl gurih dengan tempeh pedas.",
        mealDay: .lunch,
        mainIngredients: [
            Ingredient(ingredientsName: "Tempeh", ingredientsQuantity: "200 gram, potong dadu"),
            Ingredient(ingredientsName: "Kacang polong", ingredientsQuantity: "1/2 mangkuk"),
            Ingredient(ingredientsName: "Brokoli", ingredientsQuantity: "1/2 kepala, potong-potong"),
            Ingredient(ingredientsName: "Cabai merah", ingredientsQuantity: "2 buah, iris tipis"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "3 siung, cincang"),
            Ingredient(ingredientsName: "Saus sambal", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Kecap manis", ingredientsQuantity: "1 sendok makan"),
            Ingredient(ingredientsName: "Minyak sayur", ingredientsQuantity: "2 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Nasi putih", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Telur mata sapi", ingredientsQuantity: "untuk penyajian"),
            Ingredient(ingredientsName: "Seledri cincang", ingredientsQuantity: "untuk penyajian")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Pisau"),
            Utensil(untensilName: "Papan pemotong"),
            Utensil(untensilName: "Sendok")
        ],
        steps: [
            "Panaskan wajan dengan api sedang.",
            "Tambahkan minyak sayur dan bawang putih cincang. Tumis hingga harum.",
            "Tambahkan tempeh dan kacang polong ke dalam wajan. Tumis hingga tempeh berubah warna dan kacang polong matang.",
            "Tambahkan brokoli dan cabai merah iris tipis. Tumis selama beberapa menit hingga brokoli layu namun tetap renyah.",
            "Tambahkan saus sambal dan kecap manis. Aduk rata hingga semua bahan tercampur merata.",
            "Angkat dari wajan dan sajikan dengan nasi putih, telur mata sapi, dan taburan seledri cincang."
        ]
    )
    
    static let recipes: [Meal] = [
        salad,
        babyPotatoAndBroccoli,
        eggplantAndLentilsBowl,
        garlicShimejiSalad,
        ginsengKailan,
        grilledChicken,
        prawnAndShiratakiNoodleSalad,
        quinoaAndOatPorridge,
        mealSoup,
        spicyTempehBowl
    ]
}
