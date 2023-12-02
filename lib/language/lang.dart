// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          'hello': 'Hello',
          'title': 'Flutter Language - Localization',
          'user': "User",
          //static names

          'account': "Account",
          'settings': 'Settings',
          'language': 'Language',
          'notifications': 'Notifications',
          'theme': 'Dark Mode',
          'theme_bool_off': 'Off',
          'theme_bool_on': 'On',
          'about': 'About',
          'virplant': 'Grow virtual plant',
          'chooselang': 'Choose your language',
          'createaccount': 'Create Account',
          'fertilizercalc': 'Fertilizer Calculator',

          'plantname': 'Name',
          'species': 'Species',
          'family': 'Family',
          'desc': 'Description',
          'disease': 'Disease',
          'diseaseprevention': 'Disease Prevention',
          'fertilizeringredients': 'Fertilizer Ingredients',
          'precautions': 'Precautions',
          'precisecalc': 'Precise Calculator',

          //account page

          'gender': 'Gender',
          'male': 'Male',
          'female': 'Female',
          'age': 'Age',
          'email': 'Email',
          'phnumber': 'Phone Number',
          'password': 'Password',
          'continue': 'Continue',
          'signout': 'Sign Out',

          //plant grow page

          'stayfocused': 'Stay Focused',
          'timelefttogrowtheplant': 'Time left to grow the plant',
          'plant': 'Plant',
          'surrender': 'Surrender',

          //calc page

          'enterplotsize': 'Enter Plot Size',
          'enterinacres': 'Enter in acres',
          'acres': 'Acres',
          'naturalenemies': 'Natural Enemies in your Field',
          'We advise you not to use Chemicals for the next 45 days...':
              'We advise you not to use Chemicals for the next 45 days...',
          "Natural Enemies in your Field": "Natural Enemies in your Field",
          "Please enter the correct field": "Please enter the correct field",
          "OK": "OK",
          'Cancel': 'Cancel',
          "Error": "Error",

          //scanning
          'identifydisease': 'Identify disease',
          'choosethemethod': 'Choose the method',
          'takeapic': 'Take a Pic',
          'choosefromgallery': 'Choose from Gallery',

          //Searching page
          'fiber_vitamin_c': 'Fiber, Vitamin C',
          'vitamin_a_vitamin_c': 'Vitamin A, Vitamin C',
          'p_potassium_vitamin_b6': 'P Potassium, Vitamin B6',
          't_lycopene_vitamin_c': 'T Lycopene, Vitamin C',
          'fiber_vitamin_b': 'Fiber, Vitamin B',
          'soy_protein_iron': 'Soy Protein, Iron',
          'antioxidants_resveratrol': 'Antioxidants, Resveratrol',
          'o_vitamin_c_fiber': 'O Vitamin C, Fiber',
          'straw_vitamin_c_antioxidants': 'Straw Vitamin C, Antioxidants',
          'vitamin_c_fiber': 'Vitamin C, Fiber',
          'pomegr_antioxidants_vitamin_c': 'Pomegr Antioxidants, Vitamin C',
          'cori_antioxidants_vitamin_k': 'Cori Antioxidants, Vitamin K',
          'c_antioxidants_vitamin_c': 'C Antioxidants, Vitamin C',
          'vitamin_c_citric_acid': 'Vitamin C, Citric Acid',

          //APPLE

          'apple': 'apple',
          'apple_species_name': 'Malus domestica',
          'apple_family_name': 'Rosaceae',
          'apple_description':
              'Apple (Malus domestica) is a widely cultivated fruit tree known for its crisp and sweet fruits. Apples are available in various colors and varieties, with some of the most popular including Red Delicious, Granny Smith, and Gala. Apple trees are characterized by their lush, green leaves and beautiful blossoms. Apples are appreciated for their versatility and are used in a wide range of culinary applications. They can be eaten fresh, made into pies, applesauce, or used as a key ingredient in various desserts and savory dishes. Apples are not only a favorite snack but also a staple fruit in many kitchens, enjoyed for their delicious taste and nutritional value.',
          'apple_disease_1': "apple scab",
          'apple_disease_2': "fire blight",
          'apple_disease_3': "cedar apple rust",
          'apple_disease_prevention':
              "Pruning, disease-resistant varieties, and proper orchard management can help prevent apple diseases.",
          'apple_fertilizer':
              "Apples benefit from fertilizers with balanced nutrients.",
          'apple_precautions':
              "Regular pruning and maintenance of apple trees are essential for healthy growth.",

          //MANGO

          'mango': 'mango',
          'mango_species_name': 'Mangifera indica',
          'mango_family_name': 'Anacardiaceae',
          'mango_description':
              'Mango (Mangifera indica) is a tropical evergreen tree renowned for its luscious, sweet, and aromatic fruits. The mango tree features large, glossy, dark green leaves, and the fruit varies in size, shape, and color, depending on the cultivar. Mangoes are cherished for their juicy, golden-orange flesh, which can be eaten fresh, blended into smoothies, or used in a wide array of culinary delights. This tropical delight is not only a favorite fruit but also holds cultural significance in many regions, often being referred to as the King of Fruits.',
          'mango_disease_1': "anthracnose",
          'mango_disease_2': "powdery mildew",
          'mango_disease_3': "black spot",
          'mango_disease_prevention':
              "Proper pruning, regular spraying with fungicides, and maintaining good hygiene can help prevent mango diseases.",
          'mango_fertilizer':
              "Mango trees benefit from balanced fertilizers with elements like nitrogen, phosphorus, and potassium.",
          'mango_precautions':
              "Be cautious when handling the sap and leaves of mango trees, as they can cause skin irritations in some individuals.",

          //POTATO

          'potato': 'potato',
          'potato_species_name': 'Solanum tuberosum',
          'potato_family_name': 'Solanaceae',
          'potato_description':
              'The potato (Solanum tuberosum) is a versatile, underground tuberous crop that forms the basis of countless culinary dishes worldwide. Potatoes come in various shapes, sizes, and colors, with white, red, and yellow being the most common. The plant boasts lush, green foliage and produces tubers underground. Potatoes are a dietary staple and can be prepared in various ways, from crispy fries to creamy mashed potatoes, making them a beloved and versatile ingredient in many cuisines.',
          'potato_disease_1': "late blight",
          'potato_disease_2': "early blight",
          'potato_disease_3': "potato scab",
          'potato_disease_prevention':
              "Crop rotation, selecting disease-resistant varieties, and proper storage can help prevent potato diseases.",
          'potato_fertilizer':
              "Potatoes benefit from fertilizers with higher levels of phosphorus and potassium.",
          'potato_precautions':
              "Avoid consuming green or sprouted potatoes, as they can contain toxic compounds.",

          //TOMATO

          'tomato': 'tomato',
          'tomato_species_name': 'Solanum lycopersicum',
          'tomato_family_name': 'Solanaceae',
          'tomato_description':
              'The tomato (Solanum lycopersicum) is a vibrant red or yellow fruit often mistaken for a vegetable due to its culinary uses. These juicy, tangy fruits are the quintessential ingredient in salads, sauces, and countless savory dishes. The tomato plant is characterized by its lush, green leaves and a tendency to sprawl as it produces clusters of round, plump fruit. Tomatoes are celebrated for their rich flavor and versatility in culinary applications, making them an essential ingredient in kitchens worldwide.',
          'tomato_disease_1': "tomato blight",
          'tomato_disease_2': "early blight",
          'tomato_disease_3': "powdery mildew",
          'tomato_disease_prevention':
              "Proper spacing, staking, and regular care can help prevent tomato diseases.",
          'tomato_fertilizer':
              "Tomatoes benefit from balanced fertilizers with an emphasis on nitrogen.",
          'tomato_precautions':
              "Overwatering and poor air circulation can contribute to disease development in tomato plants.",

          //CORN

          'corn': 'corn',
          'corn_species_name': 'Zea mays',
          'corn_family_name': 'Poaceae',
          'corn_description':
              'Corn, also known as maize (Zea mays), is a vital cereal grain cultivated for its starchy kernels. This warm-season crop features tall, grassy stalks with slender leaves and produces cobs of plump, sweet, and golden-yellow kernels. Corn has various culinary uses, from fresh corn on the cob to cornmeal and corn syrup, and it is a staple in many traditional dishes, including tortillas, cornbread, and polenta. It is not only a significant food source but also a crucial ingredient in the production of livestock feed, corn oil, and ethanol.',
          'corn_disease_1': "rust",
          'corn_disease_2': "smut",
          'corn_disease_3': "northern corn leaf blight",
          'corn_disease_prevention':
              "Crop rotation, using disease-resistant varieties, and maintaining soil health can help prevent corn diseases.",
          'corn_fertilizer':
              "Corn benefits from fertilizers high in nitrogen and phosphorus.",
          'corn_precautions':
              "Plant corn in well-drained soil and provide proper spacing to reduce the risk of disease.",

          //SOYBEAN

          'soybean': 'soybean',
          'soybean_species_name': 'Glycine max',
          'soybean_family_name': 'Fabaceae',
          'soybean_description':
              'Soybean (Glycine max) is a leguminous crop known for its protein-rich seeds. These small, oval-shaped seeds are commonly used in various food products, including tofu, soy milk, and edamame. The soybean plant is recognizable by its trifoliate leaves and a growth pattern that includes bushy foliage and upright stems. It is an essential source of plant-based protein and is often cultivated for its nutritious properties, making it a staple in vegetarian and vegan diets.',
          'soybean_disease_1': "soybean rust",
          'soybean_disease_2': "sudden death syndrome",
          'soybean_disease_3': "root rot",
          'soybean_disease_prevention':
              "Crop rotation, using disease-resistant cultivars, and regular monitoring can help prevent soybean diseases.",
          'soybean_fertilizer':
              "Soybeans benefit from balanced fertilizers with an emphasis on phosphorus.",
          'soybean_precautions':
              "Proper weed management is essential for soybean cultivation.",

          //GRAPES

          'grape': 'grapes',
          'grape_species_name': 'Vitis vinifera',
          'grape_family_name': 'Vitaceae',
          'grape_description':
              'Grapes (Vitis vinifera) are woody vines that produce clusters of small, round, juicy fruits. Grapes are highly valued for their use in winemaking and for fresh consumption. The vines are characterized by their coiling tendrils, large, green leaves, and clusters of grapes that come in various colors, including green, red, and purple. Grapes are enjoyed as table grapes, raisins, and used to produce a wide range of wines, each with its unique flavor and characteristics.',
          'grape_disease_1': "powdery mildew",
          'grape_disease_2': "downy mildew",
          'grape_disease_3': "black rot",
          'grape_disease_prevention':
              "Pruning for good air circulation, using fungicides, and managing vine health can help prevent grape diseases.",
          'grape_fertilizer':
              "Grapes benefit from fertilizers with balanced nutrients.",
          'grape_precautions':
              "Proper trellising and support systems are essential for grapevine health.",

          //ORANGE

          'orange': 'orange',
          'orange_species_name': 'Citrus  sinensis',
          'orange_family_name': 'Rutaceae',
          'orange_description':
              'The orange (Citrus  sinensis) is a citrus fruit cherished for its bright orange color and sweet-tart flavor. These round, segmented fruits are known for their juiciness and vitamin C content. Orange trees have glossy, evergreen leaves and fragrant blossoms. Oranges are a popular fruit for fresh consumption, juicing, and as a flavoring in a variety of food and beverage products. They are not only delicious but also a rich source of essential nutrients.',
          'orange_disease_1': "citrus canker",
          'orange_disease_2': "greening disease",
          'orange_disease_3': "brown rot",
          'orange_disease_prevention':
              "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent orange diseases.",
          'orange_fertilizer':
              "Oranges benefit from balanced fertilizers with micronutrients.",
          'orange_precautions':
              "Pruning and shaping orange trees are important for fruit production.",

          //STRAWBERRIES

          'strawberry': 'Strawberries',
          'strawberry_species_name': 'Fragaria  ananassa',
          'strawberry_family_name': 'Rosaceae',
          'strawberry_description':
              'Strawberry (Fragaria  ananassa) are small, heart-shaped, red berries known for their succulent, sweet flavor. These fruits are often enjoyed fresh, in desserts, and as a garnish. Strawberry plants are low-growing with trifoliate leaves, and they produce white flowers that give way to the delectable red berries. strawberry are celebrated for their intense fragrance and taste, making them a quintessential summer fruit.',
          'strawberry_disease_1': "gray mold",
          'strawberry_disease_2': "powdery mildew",
          'strawberry_disease_3': "verticillium wilt",
          'strawberry_disease_prevention':
              "Planting disease-resistant cultivars, good spacing, and proper hygiene can help prevent Strawberry diseases.",
          'strawberry_fertilizer':
              "strawberry benefit from fertilizers with balanced nutrients.",
          'strawberry_precautions':
              "Mulching can help conserve soil moisture and prevent weed growth in Strawberry beds.",

          //GUAVA

          'guava': 'guava',
          'guava_species_name': 'Psidium guajava',
          'guava_family_name': 'Myrtaceae',
          'guava_description':
              'Guava (Psidium guajava) is a tropical fruit tree known for its sweet and fragrant round or oval fruits. The guava tree has simple, oblong leaves and distinctive, flaky bark. The fruit\'s flesh can be white, pink, or red, and it is appreciated for its unique flavor and nutritional benefits. Guavas are often eaten fresh, turned into juices, jams, or incorporated into desserts. These tropical delights are rich in vitamin C and dietary fiber.',
          'guava_disease_1': "anthracnose",
          'guava_disease_2': "guava wilt",
          'guava_disease_3': "root rot",
          'guava_disease_prevention':
              "Proper pruning, disease-resistant varieties, and good orchard sanitation can help prevent guava diseases.",
          'guava_fertilizer':
              "Guava trees benefit from fertilizers with balanced nutrients.",
          'guava_precautions':
              "Pruning guava trees can improve fruit production and airflow.",

          //POMEGRANATE

          'pomegranate': 'pomegranate',
          'pomegranate_species_name': 'Punica granatum',
          'pomegranate_family_name': 'Lythraceae',
          'pomegranate_description':
              'Pomegranate (Punica granatum) is a deciduous shrub or small tree recognized for its round, reddish fruit filled with jewel-like, crimson arils. The pomegranate plant boasts glossy, lance-shaped leaves and bright, showy blossoms. Pomegranates are celebrated for their sweet-tart taste and are consumed fresh, juiced, or sprinkled over salads. These fruits have a rich history and are often associated with symbolism and mythology.',
          'pomegranate_disease_1': "fungal fruit rot",
          'pomegranate_disease_2': "bacterial blight",
          'pomegranate_disease_3': "powdery mildew",
          'pomegranate_disease_prevention':
              "Proper pruning, using disease-resistant varieties, and maintaining good soil health can help prevent pomegranate diseases.",
          'pomegranate_fertilizer':
              "Pomegranates benefit from fertilizers with balanced nutrients.",
          'pomegranate_precautions':
              "Pruning and shaping pomegranate trees can enhance fruit quality.",

          //CORIANDER

          'coriander': 'coriander',
          'coriander_species_name': 'Coriandrum sativum',
          'coriander_family_name': 'Apiaceae',
          'coriander_description':
              'Coriander (Coriandrum sativum) is a fragrant herb known for its parsley-like leaves and small, round seeds. It is a versatile culinary ingredient, commonly used to season a wide range of dishes. Coriander leaves, also known as cilantro, have a fresh, citrusy flavor and are used in salads, salsas, and curries. Coriander seeds, on the other hand, have a warm and slightly citrusy aroma and are a common spice in various cuisines.',
          'coriander_disease_1': "powdery mildew",
          'coriander_disease_2': "leaf spot",
          'coriander_disease_3': "damping-off",
          'coriander_disease_prevention':
              "Proper spacing, avoiding overwatering, and using disease-free seeds can help prevent coriander diseases.",
          'coriander_fertilizer':
              "Coriander benefits from well-balanced, organic fertilizers.",
          'coriander_precautions':
              "Harvesting coriander leaves regularly encourages fresh growth.",

          //CHERRY

          'cherry': 'cherry',
          'cherry_species_name': 'Prunus avium',
          'cherry_family_name': 'Rosaceae',
          'cherry_description':
              'Cherry (Prunus avium) is a fruit tree known for its small, round, and sweet-tasting cherries. Cherries come in various colors, including red, yellow, and black, and they are celebrated for their delightful flavor. Cherry trees have lush, green foliage and produce clusters of these delectable fruits. Cherries are enjoyed fresh, in pies, jams, and a variety of desserts. They are a popular choice for both snacking and culinary applications, and their sweet and tart taste makes them a favorite in many dishes and recipes.',
          'cherry_disease_1': "brown rot",
          'cherry_disease_2': "leaf spot",
          'cherry_disease_3': "powdery mildew",
          'cherry_disease_prevention':
              "Pruning, disease-resistant varieties, and proper orchard management can help prevent cherry diseases.",
          'cherry_fertilizer':
              "Cherry trees benefit from balanced fertilizers.",
          'cherry_precautions':
              "Regular pruning of cherry trees supports fruit production.",

          //LEMON

          'lemon': 'lemon',
          'lemon_species_name': 'Citrus  limon',
          'lemon_family_name': 'Rutaceae',
          'lemon_description':
              'Lemon (Citrus  limon) is a citrus fruit appreciated for its bright yellow color and tart flavor. Lemons are known for their versatility and are used in a wide range of culinary and beverage applications. Lemon trees have glossy, evergreen leaves and fragrant blossoms. Lemons are valued for their juice and zest, which add a tangy and refreshing taste to various dishes, from savory to sweet. They are also a popular ingredient in beverages, including lemonade and cocktails, and are often used as a garnish. Lemons are not only flavorful but also a rich source of vitamin C.',
          'lemon_disease_1': "citrus canker",
          'lemon_disease_2': "greening disease",
          'lemon_disease_3': "brown rot",
          'lemon_disease_prevention':
              "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent lemon diseases.",
          'lemon_fertilizer':
              "Lemons benefit from balanced fertilizers with micronutrients.",
          'lemon_precautions':
              "Pruning and shaping lemon trees is important for fruit production."
        },

        //MARATHI LANGUAGE
        'mr_IN': {
          'hello': 'नमस्कार',
          'title': 'फ्लटर भाषा - स्थानिकीकरण',
          'user': "वापरकर्ता",

          //static vars

          'account': "खाते",
          'settings': 'सेटिंग्स',
          'language': 'भाषा',
          'notifications': 'सुचना',
          'theme': 'डार्क मोड',
          'theme_bool_off': 'ऑफ',
          'theme_bool_on': 'ऑन',
          'about': 'विषयी',
          'virplant': 'आभासी वृक्ष वाढवा',
          'chooselang': 'तुमची भाषा निवडा',
          'createaccount': 'खाते तयार करा',
          'fertilizercalc': 'खत कॅल्क्युलेटर',

          'plantname': 'नाव',
          'species': 'प्रजाती',
          'family': 'कुटुंब',
          'desc': 'विवरण',
          'disease': 'रोग',
          'diseaseprevention': 'रोग निवारण',
          'fertilizeringredients': 'उर्वरक सामग्री',
          'precautions': 'सावधाने',
          'precisecalc': 'निर्दिष्ट कॅल्क्युलेटर',

          //Account details

          'gender': 'लिंग',
          'male': 'पुरुष',
          'female': 'स्त्री',
          'age': 'वय',
          'email': 'ईमेल',
          'phnumber': 'फोन नंबर',
          'password': 'पासवर्ड',
          'continue': 'सुरु करा',
          'signout': 'साइन आउट',

          //grow plan tpage
          'stayfocused': 'फोकस ठेवा',
          'timelefttogrowtheplant': 'वृक्ष वाढवायची शेवटची वेळ',
          'plant': 'वनस्पती',
          'surrender': 'आत्मसमर्पण',

          //scanner

          'identifydisease': 'रोग ओळखा',
          'choosethemethod': 'पद्धत निवडा',
          'takeapic': 'तसेच घ्या',
          'choosefromgallery': 'गॅलरीतून निवडा',

          //calc page

          'enterplotsize': 'क्षेत्राचा आकार प्रविष्ट करा',
          'enterinacres': 'एकडे मध्ये प्रविष्ट करा',
          'acres': 'एकडे',
          'naturalenemies': 'आपल्या खेतातील प्राकृतिक शत्रू',
          'We advise you not to use Chemicals for the next 45 days...':
              'आपल्याला सुचवलं आहे कि आपण पुढील ४५ दिवसांसाठी रासायनिके वापरणार नाही...',
          "Natural Enemies in your Field": "आपल्या खेतातील प्राकृतिक शत्रू",
          "Please enter the correct field": "कृपया योग्य क्षेत्र प्रविष्ट करा",
          "OK": "ठीक आहे",
          'Cancel': 'रद्द करा',
          "Error": "त्रुटी",

          //searching page

          'fiber_vitamin_c': 'फायबर, विटामिन सी',
          'vitamin_a_vitamin_c': 'विटामिन ए, विटामिन सी',
          'p_potassium_vitamin_b6': 'पॉटॅशियम, विटामिन बी6',
          't_lycopene_vitamin_c': 'लायकोपीन, विटामिन सी',
          'fiber_vitamin_b': 'फायबर, विटामिन बी',
          'soy_protein_iron': 'सोया प्रोटीन, लोह',
          'antioxidants_resveratrol': 'एंटीऑक्सीडेंट्स, रेस्वेरेट्रॉल',
          'o_vitamin_c_fiber': 'O विटामिन सी, फायबर',
          'straw_vitamin_c_antioxidants': 'स्ट्रॉ विटामिन सी, एंटीऑक्सीडेंट्स',
          'vitamin_c_fiber': 'विटामिन सी, फायबर',
          'pomegr_antioxidants_vitamin_c':
              'पॉमेग्रेनेट एंटीऑक्सीडेंट्स, विटामिन सी',
          'cori_antioxidants_vitamin_k': 'कोरी एंटीऑक्सीडेंट्स, विटामिन के',
          'c_antioxidants_vitamin_c': 'सी एंटीऑक्सीडेंट्स, विटामिन सी',
          'vitamin_c_citric_acid': 'विटामिन सी, सिट्रिक ऍसिड',

          //APPLE

          'apple': 'सफरचंद',
          'apple_species_name': 'मालुस डोमेस्टिका',
          'apple_family_name': 'रोसेसी',
          'apple_description':
              'सफरचंद (मालुस डोमेस्टीका) हे त्याच्या कुरकुरीत आणि गोड फळांसाठी ओळखले जाणारे एक मोठ्या प्रमाणावर लागवड केलेले फळांचे झाड आहे. सफरचंद विविध रंग आणि प्रकारांमध्ये उपलब्ध आहेत, ज्यात रेड डेलिशियस, ग्रॅनी स्मिथ आणि गाला यासह काही सर्वात लोकप्रिय आहेत. सफरचंद वृक्षांची वैशिष्ट्ये आहेत त्यांची हिरवीगार, हिरवी पाने आणि सुंदर फुले. सफरचंद त्यांच्या अष्टपैलुत्वासाठी कौतुकास्पद आहेत आणि ते विविध पाककृतींमध्ये वापरले जातात. ते ताजे खाल्ले जाऊ शकतात, पाई, सफरचंद बनवता येतात किंवा विविध मिष्टान्न आणि चवदार पदार्थांमध्ये मुख्य घटक म्हणून वापरले जातात. सफरचंद हा केवळ एक आवडता स्नॅकच नाही तर अनेक स्वयंपाकघरातील एक प्रमुख फळ देखील आहे, त्यांच्या स्वादिष्ट चव आणि पौष्टिक मूल्यांमुळे त्याचा आनंद घेतला जातो.',
          'apple_disease_1': "ऍपल स्कॅब",
          'apple_disease_2': "फायर ब्लाइट",
          'apple_disease_3': "सेडर ऍपल रस्ट",
          'apple_disease_prevention':
              "छाटणी, रोग-प्रतिरोधक वाण, आणि योग्य बाग व्यवस्थापन सफरचंद रोग टाळण्यास मदत करू शकतात.",
          'apple_fertilizer':
              "सफरचंदांना संतुलित पोषक तत्वांसह खतांचा फायदा होतो.",
          'apple_precautions':
              "सुदृढ वाढीसाठी सफरचंद झाडांची नियमित छाटणी आणि देखभाल आवश्यक आहे.",

          //MANGO

          'mango': 'आंबा',
          'mango_species_name': 'मँगीफेरा इंडिका',
          'mango_family_name': 'अनाचारडिएसी',
          'mango_description':
              'आंबा (मँगीफेरा इंडिका) हे त्याच्या मिठासाने, गोड आणि सुगंधित फळांसाठी प्रसिद्ध असलेले एक उष्णकटिबंधीय झाड आहे. आंब्याच्या झाडाची मोठी, चमकदार, काळी पाने आहेत, आणि फळ विविधता, आकार, आणि रंगात भिन्नता असतात, किंवा कलीनकिंवा विचारानुसार. आंब्याच्या आकर्षक, पिवळ्या-केसरी अंडाच्या मांसातून, ज्यात ताजे, स्मूदीमध्ये मिसळलेले किंवा समृद्धीत विविध रुचिर पदार्थांमध्ये वापरले जातात. हे उष्णकटिबंधीय आनंद सोडणारं नसोडणारं फळ म्हणून मात्रच नाही, तर किंवा हे किंवा अनेक क्षेत्रांतर आंबा सांगतो, अक्कलविषयक असलेले हे सुप्रिय फळ आहे.',
          'mango_disease_1': "ऍंथ्रॅकनोस",
          'mango_disease_2': "पावडरी मायल्ड्यू",
          'mango_disease_3': "ब्लॅक स्पॉट",
          'mango_disease_prevention':
              "योग्य प्रुनिंग, रोजगारची फवारसारी करणे, आणि चांगले स्वच्छता ठेवणे आंब्याचे रोग टाळण्यास मदत करू शकतात.",
          'mango_fertilizer':
              "आंब्यांना नाइट्रोजन, फॉस्फरस, आणि पॉटॅशियम यांसह संतुलित खत फायदा करू शकतो.",
          'mango_precautions':
              "आंब्याच्या झाडांच्या रस आणि पानांचे हातून आसतानांतर सावध राहा, काही व्यक्तिंच्या त्वचेमध्ये क्षती करू शकतात.",

          //POTATO

          'potato': 'बटाटा',
          'potato_species_name': 'सोलेनम ट्यूबेरोसम',
          'potato_family_name': 'सोलेनेसी',
          'potato_description':
              'बटाटा (सोलेनम ट्यूबेरोसम) हे एक सर्वकटे रसाचे वनस्पती आहे ज्याने वैशिष्ट्यपूर्ण विधाने पृथ्वीवर केलेल्या अनगिणत रुचकर पदार्थांच्या आधारावर आकार घेतला आहे. बटाट्यांची विविध आकारे, आकारे, आणि रंग आहेत, त्यात सफेद, लाल, आणि पिवळे होतात, ज्यात सर्वात सामान्य आहे. झाडांमध्ये आकर्षक हिरव्या वनस्पती आहे आणि भूसाठीतील तुबर उत्पन्न करते. बटाटे आहाराचे मौखिक आणि विविध प्रकारे तयार केले जाऊ शकतात, क्रिस्पी फ्रायझ ते क्रीमी मॅश्ड बटाट्या पर्यंत, त्यामुळे अनेक शैलियोंमध्ये एक प्रिय आणि वैशिष्ट्यपूर्ण घटक आहे.',
          'potato_disease_1': "लेट ब्लाईट",
          'potato_disease_2': "अर्ली ब्लाईट",
          'potato_disease_3': "बटाटा स्कॅब",
          'potato_disease_prevention':
              "क्रॉप रोटेशन, रोगप्रतिरोधी प्रजातींची निवड, आणि योग्य भंडारण बटाट्यांचे रोग टाळण्यास मदत करू शकतात.",
          'potato_fertilizer':
              "बटाट्यांना फॉस्फरस आणि पॉटॅशियमसह उच्च अंशांची खते फायदा करू शकतात.",
          'potato_precautions':
              "हरित असलेले किंवा फुटलेले बटाटे खाऊ नये, कारण त्यांमध्ये विषाक्त घटक असू शकतात.",

          //TOMATO

          'tomato': 'टमाटर',
          'tomato_species_name': 'सोलेनम लायकोपर्सिकम',
          'tomato_family_name': 'सोलेनेसी',
          'tomato_description':
              'टमाटर (सोलेनम लायकोपर्सिकम) हे एक चमकदार लाल किंवा पिवळं फळ आहे ज्याचा रसायनिक वापरांसाने किंवा त्याच्या रसायनिक वापरांसाने एक सबजीसाठी घबरलेला असतात. ये जुइसी, चटपटे फळ त्याच्या सलाड, सॉस, आणि अनगिणत खारा जेवणांतील एक अत्यंत महत्त्वाचे घटक आहे. टमाटर प्लॅन्टला त्याच्या भरपूर, हिरव्या पानांची आणि गोंधळलेल्या, गोळं, गोळं फळांच्या समूहांची उत्पत्तीसह ओळखले जाते. टमाटर आपल्या शीतल रुची आणि रसायनिक अनुप्रयोगांत विविधतेसह वापरले जाते, ज्यामुळे ते जगभरातील रसोयबाजारात एक आवश्यक घटक आहे.',
          'tomato_disease_1': "टमाटो ब्लाइट",
          'tomato_disease_2': "अर्ली ब्लाइट",
          'tomato_disease_3': "पावडरी मायल्ड्यू",
          'tomato_disease_prevention':
              "योग्य अंतराळ, स्टेकिंग, आणि नियमित काळजी घेऊन टमाटो रोग टाळण्यास मदत करू शकतात.",
          'tomato_fertilizer':
              "टमाटोसाठी नाइट्रोजनावर बॅलेंस्ड खते फायदा करू शकतात.",
          'tomato_precautions':
              "टमाटो प्लॅन्टमध्ये रोग विकसनात सहायक असलेल्या पाण्याच्या अधिकाराने आणि वायू सरकुलेशन कमी आहे किंवा योग्य नसताना नकारात्मक असतात.",

          //CORN

          'corn': 'मका',
          'corn_species_name': 'झिया मेज',
          'corn_family_name': 'पोएसी',
          'corn_description':
              'मका, ज्याला झिया मेज (Zea mays) म्हणजे, त्याच्या आक्षय दाणांसाठी कृषिदृष्ट्या लागणारा एक महत्त्वाचा सीरिअल ग्रेन आहे. हे उष्ण ऋतुचासी लागणारे फळार्थी शस्त्राच्या अंगाने असलेले वयाचे, उंच, दारुड पाने आणि गोंधळलेल्या, चबकदार, आणि पिवळ्या दाणांचे कोब्स उत्पन्न करते. मका कोब्स आपल्या फ्रेश कोब वरून कॉर्नमील आणि कॉर्न सिरप पर्यंत विविध रसायनिक वापरांसाठी आहे, आणि ते बटाट्याची पुरी, कॉर्नब्रेड, आणि पोलेंटा समाहित असलेल्या अनेक परंपरागत डिशेसमध्ये एक स्त्रोत आहे. हे केवळ महत्त्वाचं अन्न स्रोत नसलेलं, तर ते पशुपालनाचं, मका तेलाचं, आणि इथेनॉलचं उत्पादनाचं एक महत्त्वाचं घटक आहे.',
          'corn_disease_1': "रस्ट",
          'corn_disease_2': "स्मट",
          'corn_disease_3': "नॉर्दन कॉर्न लिफ ब्लाइट",
          'corn_disease_prevention':
              "क्रॉप रोटेशन, रोग-प्रतिरोधी जातींचा वापर, आणि मृदाची सुस्ती राखणे मका रोग टाळण्यास मदत करू शकतात.",
          'corn_fertilizer':
              "मकास नाइट्रोजन आणि फॉस्फोरससाठी उच्च खते फायदा करू शकतात.",
          'corn_precautions':
              "मकाचं उपयोग असलेलं चांगलं जमिन आणि योग्य अंतराळ पुरवण्यात आणि रोगाचं जोखीम कमी करण्यात मदत करण्यासाठी, चांगलं अचूक आणि वायू सरकुलेशन पुरवा.",
          //SOYBEAN

          'soybean': 'सोयाबीन',
          'soybean_species_name': 'ग्लाइसिन मॅक्स',
          'soybean_family_name': 'फॅबेसी',
          'soybean_description':
              'सोयाबीन (ग्लाइसिन मॅक्स) हे एक गुळदार बियांसाठी प्रसिद्ध असलेले एक लेग्युमिनस कृषि वनस्पती आहे. या छोट्या, अंडाकारिता बियांसाठी सामान्यपण टोफू, सोय मिल्क, आणि इडामामेसह समृद्ध असलेल्या विविध अन्न प्रोडक्ट्समध्ये वापरले जातात. सोयाबीन प्लॅन्टला त्याच्या त्रिफोलीएट पानांनी आणि कुशीतल्या फोळांच्या आणि उत्कृष्ट दंडांच्या सहित ओळखलं जातं. हे एक वनस्पती-आधारित प्रोटीनचं महत्त्वाचं स्रोत आहे आणि याची पौष्टिक गुणस्तरांसाठी अक्सर बोधवले जाते, त्यामुळे हे शाकाहारी आणि व्हेजिटेरियन आहारात एक अत्यंत महत्वाचं घटक आहे.',
          'soybean_disease_1': "सोयाबीन रस्ट",
          'soybean_disease_2': "सडन डेथ सिंड्रोम",
          'soybean_disease_3': "रूट रॉट",
          'soybean_disease_prevention':
              "क्रॉप रोटेशन, रोग-प्रतिरोधी कल्चर्सचा वापर, आणि नियमित मॉनिटरिंग मदत करू शकतात सोयाबीन रोग टाळण्यास.",
          'soybean_fertilizer':
              "फॉस्फोरसवर बॅलेंस्ड खतांमध्ये सोयाबीनला फायदा होतो.",
          'soybean_precautions':
              "सोयाबीन उत्पादनसाठी उच्चगुणस्तरांसाठी योग्य वीड मॅनेजमेंट महत्त्वाचं आहे.",
          //GRAPES

          'grape': 'द्राक्षे',
          'grape_species_name': 'विटिस विनिफेरा',
          'grape_family_name': 'विटेसी',
          'grape_description':
              'द्राक्षे (विटिस विनिफेरा) हे किंवा कोविंग टेंड्रिल्स, मोठे, हिरवे पाने, आणि विविध रंगांतील द्राक्षेच्या समूहांची ओळख असलेले कच्चे, गोल, जुइसी फळांचे समूह उत्पन्न करणारे वुडी वायन्स आहे. द्राक्षेचा वापर वाईनमेकिंगमध्ये आणि ताजे उपभोगासाठी मूल्यवान आहे. द्राक्ष्यांमध्ये वीड मेलणारे टेंड्रिल्स, मोठे, हिरवे पाने, आणि हिरवे, लाल, आणि जांभळं असलेल्या द्राक्ष्यांचे समूह त्यांची ओळख करतात. द्राक्षेंसह ताज्या द्राक्षे, किशमिश, आणि विविध प्रकारची वाईन उत्पन्न करण्यात येतात, प्रत्येकाचं अनूठं आकर्षक आणि विशेषता असतात.',
          'grape_disease_1': "पावडरी मायल्ड्यू",
          'grape_disease_2': "डाउनी मायल्ड्यू",
          'grape_disease_3': "ब्लॅक रॉट",
          'grape_disease_prevention':
              "चांगल्या वायर सर्कुलेशनसाठी छायाची छडी, फंगिसायडचा वापर, आणि वायन स्वास्थ्याचे व्यवस्थापन करणे द्राक्ष्यांसाठी रोग टाळण्यामध्ये मदत करू शकतात.",
          'grape_fertilizer':
              "बॅलेंस्ड पोषक तत्वांसह द्राक्ष्यांना फायदा होतो.",
          'grape_precautions':
              "द्राक्ष्यांच्या आरोग्यासाठी उच्च तेकडी आणि समर्थन प्रणालींची योग्य तयारी महत्त्वाची आहे.",
          //ORANGE

          'orange': 'संत्रा',
          'orange_species_name': 'सायट्रस सिनेंसिस',
          'orange_family_name': 'रूटेसी',
          'orange_description':
              'संत्रा (सायट्रस सिनेंसिस) हे एक सायट्रस फळ आहे ज्याचं पिवळं रंग आणि गोड किंवा तिखट आरस असतं. हे गोल, विभागित केलेलं फळं त्याच्या अंबादासाठी ओळखलं जातं, त्यांचं रसपूर्णपणे आणि विटॅमिन सी आंशांसह ओळखलं जातं. संत्रा झाडंतातील चमचमीत पाने आणि सुगंधित पुष्पे आहे. संत्रा हे ताजे खाल्ले जाऊ शकतात, रसायनिक क्रियाशीलता, आणि विविध अन्न आणि पेय उत्पादांमध्ये फ्लेवरिंगसाठी वापरले जाते. ते फक्त लाजवाब नसतात तर त्यांच्या आवश्यक पोषक तत्वांचे एक समृद्ध स्रोत आहे.',
          'orange_disease_1': "सायट्रस कँकर",
          'orange_disease_2': "ग्रीनिंग डिसीझ",
          'orange_disease_3': "ब्राउन रॉट",
          'orange_disease_prevention':
              "नियमित तपास, रोगमुक्त नर्सरी स्टॉक वापरणे, आणि योग्य बाग व्यवस्थापन संत्रा रोग टाळण्यास मदत करू शकतात.",
          'orange_fertilizer':
              "संत्र्यांला मायक्रोन्यूट्रिएंट्ससह बॅलेंस्ड पोषक तत्वांचा फायदा होतो.",
          'orange_precautions':
              "संत्रा झाडे किंवा फळ उत्पादनासाठी पुरेशी आणि आकारदेखील महत्वाची आहे.",

          //strawberry

          'strawberry': 'स्ट्रॉबेरी',
          'strawberry_species_name': 'फ्रॅगेरिया अननासा',
          'strawberry_family_name': 'रोसेसी',
          'strawberry_description':
              'स्ट्रॉबेरी (फ्रॅगेरिया अननासा) हे छोटे, हृदयाकार, लाल बेरी आहेत, ज्यांचं रसपूर्ण, गोड आरस असतं. त्याचे फळ प्रमुखत्वे ताजे रंगांतील सर्केकांसह, मिठ डीझर्टमध्ये आणि गार्निशसाठी वापरले जातात. स्ट्रॉबेरी प्लॅन्ट्स तिसऱ्या प्रकारच्या पानांसह विचारलेल्या लहान वनस्पती आहेत, आणि ते पांढरे फुले उत्पन्न करतात ज्यांनी खासगी लाल बेरींनी मार्गदर्शन केलं जातं. स्ट्रॉबेरीचं उद्दीपन किंवा स्वादाचं दृढपंथ असलेलं आणि हे एक तात्कालिक गोष्ट बनवण्यासाठी एक अत्यंत आवडी फळ म्हणून गुण्यात घेतलं जातं.',
          'strawberry_disease_1': "ग्रे मोल्ड",
          'strawberry_disease_2': "पावडरी मायल्ड्यू",
          'strawberry_disease_3': "वर्टीसिलियम विल्ट",
          'strawberry_disease_prevention':
              "रोगप्रतिरोधी कल्चर्स लागवड करणे, चांगली अंतरांतर, आणि योग्य स्वच्छता हे स्ट्रॉबेरी रोग टाळण्यास मदत करू शकतात.",
          'strawberry_fertilizer':
              "स्ट्रॉबेरीला मायक्रोन्यूट्रिएंट्ससह बॅलेंस्ड पोषक तत्वांचा फायदा होतो.",
          'strawberry_precautions':
              "मलचिंगले सोडवून सोडवून मृदाची आपूर्ती संवर्धन करणे आणि स्ट्रॉबेरी बेडमध्ये शिंबारपणे वाढ दुर करण्यासाठी मलचिंग योग्य आहे.",

          //GUAVA

          'guava': 'अमरुद',
          'guava_species_name': 'प्सिडियम गुआजावा',
          'guava_family_name': 'मिरटेसी',
          'guava_description':
              'अमरुद (प्सिडियम गुआजावा) हे एक उसळ फळ झाड आहे ज्याचं मिठं आणि सुगंधित गोल किंवा अंडाकार फळांसाठी ओळखलं जातं. अमरुद झाडाचे सोपे, आबोवळे पाने आणि विशिष्ट, खोखोळे चार आहे. फळाचं अंश सापळं वा गुलाबी होऊ शकतं, आणि ते त्याच्या अनूठं आवदंभरपूर आरस आणि पौष्टिक लाभांसाठी मूळ्यवान आहे. अमरुदे वाचवता ताजे खाल्ले जातात, रसाच्या, जॅम, किंवा डिझर्टमध्ये समाहित केल्यास. हे उष्णकटिबंधी फळ विटॅमिन सी आणि आहारीय अंशांसह समृद्ध आहे.',
          'guava_disease_1': "ऍंथ्रेक्नोझ",
          'guava_disease_2': "गुवा विल्ट",
          'guava_disease_3': "रूट रॉट",
          'guava_disease_prevention':
              "योग्य छांटणी, रोगप्रतिरोधी प्रजातींसह, आणि चांगली उद्यान स्वच्छता अमरुद रोग टाळण्यास मदत करू शकतात.",
          'guava_fertilizer':
              "अमरुद झाडांना मायक्रोन्यूट्रिएंट्ससह बॅलेंस्ड पोषक तत्वांचा फायदा होतो.",
          'guava_precautions':
              "अमरुद झाडे फळ उत्पादन आणि हवा सर्कुलेशन सुधारण्यासाठी छांटणी करणे महत्वाचं आहे.",

          //POMEGRANATE

          'pomegranate': 'डाळिंब',
          'pomegranate_species_name': 'प्यूनिका ग्रॅनॅटम',
          'pomegranate_family_name': 'लिथ्रेसी',
          'pomegranate_description':
              'डाळिंब (प्यूनिका ग्रॅनॅटम) हे एक परिणामी छोटे किंवा सोपे झाड किंवा झार आहे ज्याचं उजळं, लाल फळ माणूसकी त्याचं सोण्याचं साथ घेऊन त्याचं परिपूर्ण आरिलस सहित ओळखलं जातं. डाळिंब प्लॅन्ट्सचं चमचमीत, वाळवेल आकाराचं पाने आणि चमचमाट, सुंदर फुले आहेत. डाळिंबे त्याचं गोड-तिखट चव आणि त्यात समाहित केलेलं रससह वापरलं जातं, त्यांना ताजे खाल्लं, रसाच्या, किंवा सॅलेड्स वर छिडवण्यासाठी वापरलं जातं. ई फळंचं एक समृद्ध इतिहास आहे आणि अक्सर चिन्हांसह आणि पौराणिक कथांसह जोडलं जातं.',
          'pomegranate_disease_1': "फंगल फ्रूट रॉट",
          'pomegranate_disease_2': "बॅक्टीरियल ब्लाइट",
          'pomegranate_disease_3': "पावडरी मायल्ड्यू",
          'pomegranate_disease_prevention':
              "योग्य छांटणी, रोगप्रतिरोधी प्रजातींसह, आणि चांगली मृदाची स्वास्थ्य डाळिंब रोग टाळण्यास मदत करू शकतं.",
          'pomegranate_fertilizer':
              "डाळिंब्यांना मायक्रोन्यूट्रिएंट्ससह बॅलेंस्ड पोषक तत्वांचा फायदा होतं.",
          'pomegranate_precautions':
              "डाळिंब झाडे छांटणी आणि रुपांतर करण्यासाठी फायदेशीर असू शकतं.",

          //CORIANDER

          'coriander': 'धनिया',
          'coriander_species_name': 'कोरियांड्रम सॅटिवम',
          'coriander_family_name': 'एपिसिए',
          'coriander_description':
              'धनिया (कोरियांड्रम सॅटिवम) हे एक सुगंधित वनस्पती आहे ज्याचं पार्सलीच्या आकाराचं पाने आणि लहान, गोलाकार बियाण्यांसाठी ओळखलं जातं. हे एक बहुपरकारी रसायन घडवणारं भोजनसामग्री आहे, ज्यामध्ये विविध पदार्थांसाठी उपयुक्त केलं जातं. धनिया पाने, ज्याचं सहसा सिलॅन्ट्रो म्हणूनही ओळखलं जातं, त्याचं ताजं, सिट्रसी आणि उन्हाळंसारखं आरस असतं आणि त्यामध्ये सॅलेड्स, सॅल्सा आणि करीसाठी वापरलं जातं. दुसरंतर, धनियाचं बियाणं, ज्याचं उष्ण आणि किंवा सुंदर साईट्रसी आरस असतं, आणि विविध रसायनांसह विभिन्न रुचिक पदार्थांमध्ये सामान्य स्वाददाता आहे.',
          'coriander_disease_1': 'पावडरी मायल्ड्यू',
          'coriander_disease_2': 'पानांतर स्पॉट',
          'coriander_disease_3': 'डॅम्पिंग-ऑफ',
          'coriander_disease_prevention':
              'उचित अंतराळ, अधिक पाणी टाकणे व रोगमुक्त बियाण्यांचे वापर धनिया रोगांना टाळण्यास मदत करू शकते.',
          'coriander_fertilizer':
              'धनियाला संतुलित, कार्बनिक पोषणांसह फायदा होतं.',
          'coriander_precautions':
              'धनिया पानं नियमितपणे वाढवण्याचं निमित्त करून ताजं करणे उत्तम आहे.',

          //CHERRY

          'cherry': 'चेरी',
          'cherry_species_name': 'प्रुनस एव्हियम',
          'cherry_family_name': 'रोसेसी',
          'cherry_description':
              'चेरी (प्रुनस एव्हियम) हे एक फळ वृक्ष आहे ज्याचं लहान, गोलाकार, आणि गोड चेरी आणि त्याचं सुरुंद आरस ओळखलं जातं. चेरी लाल, पिवळं, आणि काळंसह विविध रंगांमध्ये आहे, आणि त्यांचं मिठं चव आणि उत्कृष्ट आरसासाठी आदर्श आहे. चेरी झाडं बहुपरकारी, हिरवे पाने असतात आणि इनामदार फळांची भरपूर वाट प्रदान करतात. चेरीस ताजं, पाय, जॅम्स, आणि विविध डिझर्टसमध्ये आनंद घेतलं जातं. ते खासगी स्नॅकिंग आणि शैलीशी वापरात लोकप्रिय आहे, आणि त्यांचं मिठं आणि कटखट आरस त्यांच्या अनेक डिशेस आणि रेसिपीसमध्ये मोजणारं करतं.',
          'cherry_disease_1': 'ब्राउन रॉट',
          'cherry_disease_2': 'पानांतर स्पॉट',
          'cherry_disease_3': 'पावडरी मायल्ड्यू',
          'cherry_disease_prevention':
              'छांटणी, रोगप्रतिरोधी प्रजातींसह, आणि चांगली उद्यान व्यवस्थापन चेरी रोग टाळण्यास मदत करू शकतं.',
          'cherry_fertilizer': 'चेरी झाडांना संतुलित पोषक तत्वांसह फायदा होतं.',
          'cherry_precautions':
              'चेरी झाडंना नियमित छांटणी द्वारे फळांची उत्पादने समर्थन करतं.',

          //LEMON

          'lemon': 'निम्बू',
          'lemon_species_name': 'साइट्रस लिमॉन',
          'lemon_family_name': 'रुटेसी',
          'lemon_description':
              'निम्बू (साइट्रस लिमॉन) हे एक साइट्रस फळ आहे ज्याचं थोडं पिवळं रंग आणि खट्टं आरस असतं. निम्बूसाठी विविधता आहे आणि हे विविध रसायनांमध्ये उपयुक्त केलं जातं, आणि विविध रुचिक आणि पेयपदार्थ अनेक उपयोगांसाठी वापरलं जातं. निम्बू झाडं चमकदार, सदैवही हिरव्या पानांसह आणि सुगंधित पुष्पांसह आहे. निम्बूसाठी मूळ, ज्यामध्ये कच्चं आणि झाकं असतं, त्यामुळे विविध डिशेस, उपकरण, आणि विविध पदार्थांमध्ये एक ताजेचं आणि रूसीत भरपूर आरस जोडलं जातं. ते सजवलेलं असल्यामुळे ते चिरपरिणामी, लोकप्रिय आणि आकर्षक आहे, आणि त्यांचं साइट्रसी स्वाद आणि उपयोगात्मकता म्हणजे ते विविध डिशेस आणि पदार्थांमध्ये एक अत्यंत महत्त्वाचं घटक बनतं.',
          'lemon_disease_1': 'साइट्रस कॅन्कर',
          'lemon_disease_2': 'ग्रीनिंग रोग',
          'lemon_disease_3': 'ब्राउन रॉट',
          'lemon_disease_prevention':
              'नियमित तपास, रोगमुक्त नर्सरी स्टॉक वापरणे आणि योग्य आंगण व्यवस्थापन निम्बू रोग टाळण्यास मदत करू शकतं.',
          'lemon_fertilizer': 'निम्बूसाठी संतुलित पोषक तत्वांसह फायदा होतं.',
          'lemon_precautions':
              'निम्बू झाडं फळ उत्पादनासाठी महत्त्वाचं आहे, आणि त्यांचं छांटणं आणि आकारपरिणामी आहे.'
        }
      };
}




        //HINDI LANGUAGE
        // 'hi_IN': {
        //   'hello': 'नमस्ते दुनिया',
        //   'message': 'प्रोटो कोडर प्वाइंट में आपका स्वागत है',
        //   'title': 'स्पंदन भाषा - स्थानीयकरण',

        //   //static_vars

        //   'account': "खाता",
        //   'settings': 'सेटिंग्स',
        //   'language': 'भाषा',
        //   'notifications': 'सूचनाएँ',
        //   'theme': 'डार्क मोड',
        //   'theme_bool_off': 'बंद',
        //   'theme_bool_on': 'चालू',
        //   'about': 'बारे में',
        //   'virplant': 'आभासी पौधा बढ़ाएं',

        //   //APPLE

        //   'apple': 'सेब',
        //   'apple_species_name': 'मेलस डोमेस्टिका',
        //   'apple_family_name': 'रोसेसी',
        //   'apple_description':
        //       'सेब (मेलस डोमेस्टिका) एक व्यापक रूप से खेती किए जाने वाले फल का पेड़ है जिसे इसके क्रिस्प और मिठे फलों के लिए जाना जाता है। सेब विभिन्न रंगों और प्रजातियों में उपलब्ध हैं, जिनमें कुछ प्रमुख शामिल हैं जैसे कि रेड डेलीशस, ग्रैनी स्मिथ, और गाला। सेब के पेड़ हरित, हरे पत्तियों और सुंदर फूलों से चरित होते हैं। सेब की बहुमुखीता के लिए कदमाकदम, पाइ, एपलसॉस, या विभिन्न मिठे और तीखे व्यंजनों के कुंजी उपयोग किया जा सकता है। सेब न केवल एक पसंदीदा टिड़का है, बल्कि बड़े पैम्पर्स में उपयोग होने वाला एक फल भी है, जिसे उनके स्वादपूर्ण स्वाद और पोषण मूल्य के लिए आनंद लिया जाता है।',
        //   'apple_disease_1': 'एपल स्कैब',
        //   'apple_disease_2': 'फायर ब्लाइट',
        //   'apple_disease_3': 'सेदार एपल रस्ट',
        //   'apple_disease_prevention':
        //       'कटना, रोग-सहिष्णु प्रजातियाँ, और उचित बागबानी प्रबंधन से सेब के रोगों से बचाव किया जा सकता है।',
        //   'apple_fertilizer': 'सेब उर्वरकों से संतुलित पोषण प्राप्त करते हैं।',
        //   'apple_precautions':
        //       'सेब के पेड़ों की नियमित कटना और रखरखाव स्वस्थ विकास के लिए आवश्यक हैं।',

        //   //MANGO

        //   'mango': 'आम',
        //   'mango_species_name': 'मैंगिफेरा इंडिका',
        //   'mango_family_name': 'अनाचारियासी',
        //   'mango_description':
        //       'आम (मैंगिफेरा इंडिका) एक उष्णकटिबंधीय सदाबहार वृक्ष है जिसे इसके लजीज, मिठे, और सुगंधित फलों के लिए प्रसिद्ध किया गया है। आम का पेड़ विशाल, चमकीले, गहरे हरे पत्तियों के साथ होता है, और फल विविधता में होता है, जो उगाये जाने वाले प्रजातिके आधार पर आकार, आकृति, और रंग में भिन्न हो सकता है। आमों की सुर्खी, सुनहरे-नारंगी मांस के लिए, जो ताजा, स्मूदीज में खाया जा सकता है, या विभिन्न रसोईय आनंदों में उपयोग होता है, ये पूरे विश्व में प्राचीन रीति हैं, अक्सर इसे फलों के राजा कहा जाता है।',
        //   'mango_disease_1': 'एंथ्रैकनोस',
        //   'mango_disease_2': 'पाउडरी मिल्ड्यू',
        //   'mango_disease_3': 'ब्लैक स्पॉट',
        //   'mango_disease_prevention':
        //       'मैंगो रोगों से बचाव के लिए सही काटना, नियमित फंगाइसाइड के साथ स्प्रे करना, और अच्छे स्वच्छता का पालन करना मदद कर सकता है।',
        //   'mango_fertilizer':
        //       'मैंगो के पेड़ न्यूट्रिएंट्स के साथ संतुलित उर्वरक से लाभान्वित होते हैं, जैसे कि नाइट्रोजन, फास्फोरस, और पोटैशियम।',
        //   'mango_precautions':
        //       'मैंगो के पेड़ के रस और पत्तियों को संबोधित करते समय सावधान रहें, क्योंकि ये कुछ व्यक्तियों में त्वचा की चिढ़ाने पैदा कर सकते हैं।',

        //   //POTATO

        //   'potato': 'आलू',
        //   'potato_species_name': 'सोलैनम ट्यूबेरोसम',
        //   'potato_family_name': 'सोलैनेसी',
        //   'potato_description':
        //       'आलू (सोलैनम ट्यूबेरोसम) एक बहुपरकारी, भूमि के नीचे होने वाला गोंदवार्ता क्रोप है जो विश्वभर में अनगिनत रसोई व्यंजनों के आधार का है। आलू विभिन्न आकार, आकृतियों, और रंगों में आते हैं, जिनमें सफेद, लाल, और पीला सबसे सामान्य हैं। पौधा हरा और घाना होता है और भूमि के नीचे गोंदवार्ता उत्पन्न करता है। आलू आहार में एक मौखिक आधार है और इसे विभिन्न तरीकों से बनाया जा सकता है, क्रिस्पी फ्राइज से लेकर क्रीमी मैश्ड आलू तक, जिससे इसे कई विभिन्न रसोईय व्यंजनों में पसंदीदा और बहुपरकारी घटक बनाता है।',
        //   'potato_disease_1': 'लेट ब्लाइट',
        //   'potato_disease_2': 'आर्ली ब्लाइट',
        //   'potato_disease_3': 'आलू स्कैब',
        //   'potato_disease_prevention':
        //       'क्रॉप रोटेशन, रोग-सहिष्णु प्रजातियों का चयन, और उचित भंडारण से आलू के रोगों से बचाव किया जा सकता है।',
        //   'potato_fertilizer':
        //       'आलू को फॉस्फोरस और पोटैशियम के अधिक स्तरों के साथ उर्वरक से लाभ होता है।',
        //   'potato_precautions':
        //       'हरा या अंकुरित आलू का सेवन बचावी योग्य यौगिकों को शामिल कर सकता है, इसलिए उन्हें खाने से बचें।',

        //   // "TOMATO"
        //   'tomato': 'टमाटर',
        //   'tomato_species_name': 'सोलैनम लाइकोपर्सीकम',
        //   'tomato_family_name': 'सोलैनेसी',
        //   'tomato_description':
        //       'टमाटर (सोलैनम लाइकोपर्सीकम) एक जीवंत लाल या पीला फल है जो अपने रसोईय उपयोगों के कारण कभी-कभी सब्जी के लिए गलती से गिना जाता है। ये रसीले, तीखे फल सलाद, सॉसेस, और अनगिनत तीखे व्यंजनों में आवश्यक घटक हैं। टमाटर पौधा अपनी हरे-भरे पत्तियों और एक प्रवृद्धि की प्रवृद्धि के क्षेत्रों के लिए चरित है जब यह गोल, मोटे फल के समूह उत्पन्न करता है। टमाटर अपने समृद्ध रसीले स्वाद और रसोईय उपयोगों में विविधता के लिए मनाए जाते हैं, जिनसे वे विश्वभर की रसोईयों में एक आवश्यक घटक बनते हैं।',
        //   'tomato_disease_1': 'टमाटर ब्लाइट',
        //   'tomato_disease_2': 'आर्ली ब्लाइट',
        //   'tomato_disease_3': 'पाउडरी मिल्ड्यू',
        //   'tomato_disease_prevention':
        //       'उचित दूरी, स्टेकिंग, और नियमित देखभाल से टमाटर के रोगों से बचाव किया जा सकता है।',
        //   'tomato_fertilizer':
        //       'टमाटर नाइट्रोजन पर जोर देने वाले संतुलित उर्वरकों से लाभान्वित होते हैं।',
        //   'tomato_precautions':
        //       'टमाटर पौधों में रोग विकास में अधिक पानी देना और गंदा हवा परिस्थितियों में कमी करना रोग विकास में योगदान कर सकता है।',

        //   // "CORN"

        //   'corn': 'मक्का',
        //   'corn_species_name': 'जीया मेज',
        //   'corn_family_name': 'पोएसिए',
        //   'corn_description':
        //       'मक्का, जिसे मक्का भी कहा जाता है (जीया मेज), एक महत्वपूर्ण सीरियल अनाज है जिसे इसके स्टार्ची कर्नेल्स के लिए खेती किया जाता है। इस गर्मी के मौसम की फसल में पतले, घासी डंक होती है जिसमें पतली पत्तियां होती हैं और गोल-मोटे, मीठे, और सुनहरे-पीले कर्नेल्स की छड़ी उत्पन्न होती हैं। मक्का का विभिन्न रसोईय उपयोग हैं, कच्चे मक्के से लेकर मक्के का आटा और मक्के का रस, और यह कई पारंपरिक व्यंजनों में एक स्थापित घटक है, जैसे कि टॉर्टिला, कॉर्नब्रेड, और पोलेंटा। यह न केवल एक महत्वपूर्ण खाद्य स्रोत है बल्कि पशुओं के चारा, मक्का तेल, और इथेनॉल के उत्पाद में भी एक महत्वपूर्ण घटक है।',
        //   'corn_disease_1': 'जंग',
        //   'corn_disease_2': 'श्मट',
        //   'corn_disease_3': 'उत्तरी मक्का पत्तियों की ब्लाइट',
        //   'corn_disease_prevention':
        //       'क्रॉप रोटेशन, रोग सहिष्णु प्रजातियों का उपयोग करना, और मिट्टी के स्वास्थ्य की देखभाल करना मक्के के रोगों से बचाव करने में मदद कर सकता है।',
        //   'corn_fertilizer':
        //       'मक्का को नाइट्रोजन और फॉस्फोरस की उच्च स्तरों वाले उर्वरकों से लाभ होता है।',
        //   'corn_precautions':
        //       'मक्के को अच्छे से ड्रेन होने वाली मिट्टी में बोना जाना चाहिए और बीमारी के जोखिम को कम करने के लिए उचित दूरी प्रदान करनी चाहिए।',

        //   // "SOYABEANS"
        //   'soybean': 'सोयाबीन',
        //   'soybean_species_name': 'ग्लाइसीन मैक्स',
        //   'soybean_family_name': 'फैबेसी',
        //   'soybean_description':
        //       'सोयाबीन (ग्लाइसीन मैक्स) एक दालीय फसल है जिसे इसके प्रोटीन-युक्त बीजों के लिए जाना जाता है। ये छोटे, अंडाकार बीज सामान्यत: विभिन्न खाद्य उत्पादों में उपयोग होते हैं, जिनमें टोफू, सोया दूध, और एडामामे शामिल हैं। सोयाबीन पौधा अपने त्रिपोलिएट पत्तियों और एक वृद्धि रूप में गहरे पत्तियों और सीधे डंकों को शामिल करने के अपने नम्बरवन गुणवत्ता से पहचाना जा सकता है। यह एक पौधिक आधारित प्रोटीन का महत्वपूर्ण स्रोत है और इसकी पौष्टिक गुणवत्ता के लिए अक्सर खेती किया जाता है, जिससे इसे शाकाहारी और शाकाहारी आहार में एक आवश्यक घटक बनाया जाता है।',
        //   'soybean_disease_1': 'सोयाबीन जंग',
        //   'soybean_disease_2': 'अचानक मौत सिंड्रोम',
        //   'soybean_disease_3': 'रूट रॉट',
        //   'soybean_disease_prevention':
        //       'क्रॉप रोटेशन, रोग-सहिष्णु कल्चर उपयोग करना, और नियमित मॉनिटरिंग सोयाबीन के रोगों से बचाव में मदद कर सकता है।',
        //   'soybean_fertilizer':
        //       'सोयाबीन फॉस्फोरस पर जोर देने वाले संतुलित उर्वरकों से लाभान्वित होते हैं।',
        //   'soybean_precautions':
        //       'सोयाबीन खेती के लिए उचित शीट प्रबंधन महत्वपूर्ण है।',

        //   // "GRAPE"

        //   'grapes': 'अंगूर',
        //   'grapes_species_name': 'वाइटिस विनिफेरा',
        //   'grapes_family_name': 'विटेसी',
        //   'grapes_description':
        //       'अंगूर (वाइटिस विनिफेरा) वुडी वाइंस हैं जो छोटे, गोल, रसीले फलों के समूह उत्पन्न करते हैं। अंगूर उनके उद्यमन निर्माण और ताजगी के उपयोग के लिए अत्यधिक मूल्य हैं। वाइंस को उनके कुंजील टेंड्रिल्स, बड़े हरे पत्तियों, और हरे, लाल, और बैंगनी सहित विभिन्न रंगों में आने वाले अंगूर के समूहों से चरित किया जाता है। अंगूर मेजबानी में, किशमिश में मजा किया जाता है, और इस्तेमाल किया जाता है एक विस्तृत रेंज के विभिन्न योग्यताओं के साथ, प्रत्येक के साथ उसके विशिष्ट स्वाद और विशेषताओं के साथ।',
        //   'grape_disease_1': 'पाउडरी मिल्ड्यू',
        //   'grape_disease_2': 'डाउनी मिल्ड्यू',
        //   'grape_disease_3': 'ब्लैक रॉट',
        //   'grape_disease_prevention':
        //       'अच्छी हवा सर्कुलेशन के लिए कटाई, फंगाइड का उपयोग, और वाइन स्वास्थ्य का प्रबंधन अंगूर के रोगों से बचाव में मदद कर सकते हैं।',
        //   'grape_fertilizer': 'अंगूर संतुलित पोषण से लाभान्वित होते हैं।',
        //   'grape_precautions':
        //       'अंगूरवाले स्वास्थ्य के लिए उचित ट्रेलिसिंग और समर्थन सिस्टम अत्यंत महत्वपूर्ण हैं।',

        //   // "ORANGE"

        //   'orange': 'संतरा',
        //   'orange_species_name': 'सिट्रस सिनेंसिस',
        //   'orange_family_name': 'रूटेसी',
        //   'orange_description':
        //       'संतरा (सिट्रस सिनेंसिस) एक सीताफल है जिसे इसके चमकदार नारंगी रंग और मिठा-तीखा स्वाद के लिए सराहा जाता है। ये गोल, सैगमेंटेड फल अपनी रसीलेपन और विटामिन सी की सामग्री के लिए जाने जाते हैं। संतरा के पेड़ों में चमकदार, हमेशा हरे पत्तियाँ और सुगंधित फूल होते हैं। संतरा ताजगी के लिए, जूसिंग के लिए, और विभिन्न खाद्य और पेय उत्पादों में एक स्वाद देने के लिए एक लोकप्रिय फल है। ये न केवल स्वादिष्ट हैं बल्कि आवश्यक पोषण सामग्री का भी एक समृद्ध स्रोत हैं।',
        //   'orange_disease_1': 'सिट्रस कैंकर',
        //   'orange_disease_2': 'ग्रीनिंग रोग',
        //   'orange_disease_3': 'ब्राउन रॉट',
        //   'orange_disease_prevention':
        //       'नियमित जाँच, रोग-मुक्त पौधशाला सामग्री का उपयोग, और उचित बागबानी प्रबंधन संतरे के रोगों से बचाव में मदद कर सकते हैं।',
        //   'orange_fertilizer':
        //       'संतरे सूक्ष्म पोषण से लाभान्वित होते हैं संतुलित उर्वरकों के साथ।',
        //   'orange_precautions':
        //       'संतरे के पेड़ों को काटना और आकार देना फल उत्पादन के लिए महत्वपूर्ण है।',

        //   // "STRAWBERRY"

        //   'strawberries': 'स्ट्रॉबेरीज़',
        //   'strawberries_species_name': 'फ्रेगेरिया एनानासा',
        //   'strawberries_family_name': 'रोसेसी',
        //   'strawberries_description':
        //       'स्ट्रॉबेरीज़ (फ्रेगेरिया एनानासा) छोटे, हृदयाकार, लाल बेरीज़ हैं जिनके लिए उनके रसदार, मिठा स्वाद से जाना जाता है। इन फलों को अक्सर ताजगी से, मिठाइयों में और गार्निश के रूप में आनंदित किया जाता है। स्ट्रॉबेरी पौधे तीनपत्तीय पत्तियों के साथ नीचे बढ़ते हैं, और वे सफेद फूल पैदा करते हैं जो अद्भुत लाल बेरीज़ की ओर बढ़ते हैं। स्ट्रॉबेरीज़ अपने तेज गंध और स्वाद के लिए पूजा जाता है, जिससे इन्हें एक आवश्यक गर्मी का फल बनाता है।',
        //   'strawberries_disease_1': 'ग्रे मोल्ड',
        //   'strawberries_disease_2': 'पाउडरी मिल्ड्यू',
        //   'strawberries_disease_3': 'वर्टीसिलियम विल्ट',
        //   'strawberries_disease_prevention':
        //       'रोग सहिष्णु प्रजातियों को बोना, अच्छी दूरी, और उचित स्वच्छता से स्ट्रॉबेरी के रोगों से बचाव में मदद कर सकता है।',
        //   'strawberries_fertilizer':
        //       'स्ट्रॉबेरीज़ संतुलित पोषण से लाभान्वित होते हैं।',
        //   'strawberries_precautions':
        //       'मलचिंग स्ट्रॉबेरी बेड में मिट्टी की नमी को संरक्षित करने और शियारों की वृद्धि को रोकने में मदद कर सकती है।',

        //   // "GUAVA"

        //   'guava': 'अमरूद',
        //   'guava_species_name': 'सीडियम गुआजावा',
        //   'guava_family_name': 'मायर्टेसी',
        //   'guava_description':
        //       'अमरूद (सीडियम गुआजावा) एक उष्णकटिबंधीय फल का पेड़ है जिसे इसके मिठे और सुगंधित गोल या अंडाकार फलों के लिए जाना जाता है। अमरूद का पेड़ सरल, बेलाकार पत्तियों और विशेष, छिद्रित छाल के साथ होता है। फल का मांस सफेद, गुलाबी, या लाल हो सकता है, और इसे अपने विशेष स्वाद और पोषण से प्रशंसा की जाती है। अमरूद को अक्सर ताजा खाया जाता है, जूस बनाया जाता है, जैम में बदला जाता है, या मिठाइयों में शामिल किया जाता है। ये उष्णकटिबंधीय आनंदों में विटामिन सी और आहारी ऊर्जा से भरपूर हैं।',
        //   'guava_disease_1': 'एंथ्रेकनोस',
        //   'guava_disease_2': 'अमरूद की विल्ट',
        //   'guava_disease_3': 'रूट रॉट',
        //   'guava_disease_prevention':
        //       'उचित कटाई, रोग सहिष्णु प्रजातियाँ, और अच्छे बागबानी स्वच्छता अमरूद के रोगों से बचाव में मदद कर सकती हैं।',
        //   'guava_fertilizer':
        //       'अमरूद के पेड़ संतुलित पोषण से लाभान्वित होते हैं।',
        //   'guava_precautions':
        //       'अमरूद के पेड़ों को काटना फल उत्पादन और हवा को सुधार सकता है।',

        //   // "POMEGRANATE"

        //   'pomegranate': 'अनार',
        //   'pomegranate_species_name': 'प्यूनीका ग्रैनेटम',
        //   'pomegranate_family_name': 'लिथ्रेसी',
        //   'pomegranate_description':
        //       'अनार (प्यूनीका ग्रैनेटम) एक पत्तियों से भरे हुए, जूवेल-जैसे, लाल फल के लिए पहचाने जाने वाले एक परिष्कृत छोटे पेड़ या छोटे पेड़ का वृक्ष है। अनार का पौध में चमकदार, बनमाली पत्तियाँ और उज्ज्वल, शोभायमान फूल होते हैं। अनार को उनके मिठे-तीखे स्वाद के लिए पूजा जाता है और इन्हें ताजा, जूस, या सलाद पर छिड़का जाता है। इन फलों का एक शानदार इतिहास है और इन्हें अक्सर प्रतीकता और पौराणिक कथाओं से जोड़ा जाता है।',
        //   'pomegranate_disease_1': 'कवकीय फल रॉट',
        //   'pomegranate_disease_2': 'बैक्टीरियल ब्लाइट',
        //   'pomegranate_disease_3': 'पाउडरी मिल्ड्यू',
        //   'pomegranate_disease_prevention':
        //       'उचित कटाई, रोग सहिष्णु प्रजातियाँ, और अच्छी मृदा स्वास्थ्य का प्रबंधन अनार के रोगों से बचाव में मदद कर सकता है।',
        //   'pomegranate_fertilizer': 'अनार संतुलित पोषण से लाभान्वित होते हैं।',
        //   'pomegranate_precautions':
        //       'अनार के पेड़ों को काटना और आकार देना फल की गुणवत्ता में सुधार कर सकता है।',

        //   // "CORIANDER"

        //   'coriander': 'धनिया',
        //   'coriander_species_name': 'कोरिएंड्रम सैटिवम',
        //   'coriander_family_name': 'एपिसिए',
        //   'coriander_description':
        //       'धनिया (कोरिएंड्रम सैटिवम) एक सुगंधित जड़ी-बूटी है जिसे पैट्रोली जैसे पत्तियों और छोटे, गोल बीजों के लिए जाना जाता है। यह एक बहुपरकारी रसोईया घास है, जो विभिन्न व्यंजनों को स्वादिष्ट बनाने के लिए सामान्यत: उपयोग होता है। धनिया के पत्तियाँ, जिन्हें सिलैंट्रो भी कहा जाता है, में एक ताजगीभरा, साइट्रसी रुचि होती है और इन्हें सैलेड, साल्सा, और करी में उपयोग किया जाता है। दूसरी ओर, धनिया के बीजों में एक गरम और थोड़ी सी साइट्रसी सुगंध होती है और यह विभिन्न रसोईयों में एक सामान्य मसाला है।',
        //   'coriander_disease_1': 'पाउडरी मिल्ड्यू',
        //   'coriander_disease_2': 'लीफ स्पॉट',
        //   'coriander_disease_3': 'डैम्पिंग-ऑफ',
        //   'coriander_disease_prevention':
        //       'उचित दूरी, अधिक पानी न देना, और रोग-मुक्त बीजों का उपयोग धनिया के रोगों से बचाव में मदद कर सकता है।',
        //   'coriander_fertilizer':
        //       'धनिया को संतुलित, कार्बनिक उर्वरकों से लाभ होता है।',
        //   'coriander_precautions':
        //       'नियमित रूप से धनिया के पत्तियाँ काटना ताजगी भरी वृद्धि को प्रोत्साहित करता है।',

        //   // "CHERRY"

        //   'cherry': 'चेरी',
        //   'cherry_species_name': 'प्र्यूनस एवियम',
        //   'cherry_family_name': 'रोसेसी',
        //   'cherry_description':
        //       'चेरी (प्र्यूनस एवियम) एक फल का पेड़ है जिसे इसके छोटे, गोल और मिठे स्वाद के चेरी के लिए जाना जाता है। चेरी कई रंगों में आते हैं, जैसे कि लाल, पीला, और काला, और इन्हें उनके मोहक स्वाद के लिए पूजा जाता है। चेरी के पेड़ हरित, हरा पत्तियों वाले होते हैं और इन निराले फलों के क्लस्टर बनाते हैं। चेरी ताजा, पाई में, जैम्स में और विभिन्न मिठाइयों में का आनंद लेते हैं। ये स्नैकिंग और रसोईया उपयोग के लिए एक लोकप्रिय चयन हैं, और इनका मिठा और तीखा स्वाद इन्हें कई व्यंजनों और रेसिपीज़ में पसंदीदा बनाता है।',
        //   'cherry_disease_1': 'भूरा बराबर',
        //   'cherry_disease_2': 'पत्ती स्पॉट',
        //   'cherry_disease_3': 'पाउडरी मिल्ड्यू',
        //   'cherry_disease_prevention':
        //       'कटाई, रोग सहिष्णु प्रजातियाँ, और उचित बागबानी प्रबंधन से चेरी के रोगों से बचाव में मदद कर सकती हैं।',
        //   'cherry_fertilizer':
        //       'चेरी के पेड़ संतुलित उर्वरकों से लाभान्वित होते हैं।',
        //   'cherry_precautions':
        //       'चेरी के पेड़ों की नियमित कटाई फल उत्पादन का समर्थन करती है।',

        //   // "LEMON"

        //   'lemon': 'नींबू',
        //   'lemon_species_name': 'साइट्रस लीमन',
        //   'lemon_family_name': 'रूटेसी',
        //   'lemon_description':
        //       'नींबू (साइट्रस लीमन) एक साइट्रस फल है जिसे इसके चमकदार पीले रंग और तीखे स्वाद के लिए पूजा जाता है। नींबू की बहुपरकारीता के लिए जाना जाता है और इसका व्यापक उपयोग विभिन्न रसोई और पेय अनुप्रयोगों में होता है। नींबू के पेड़ों में चमकदार, सदैव हरा पत्तियाँ और सुगंधित फूल होते हैं। नींबू को उनके रस और चटकीले स्वाद के लिए मूल्यांकन किया जाता है, जो विभिन्न व्यंजनों को स्वादिष्ट बनाने के लिए हैं, उससे मिलकर मिठे से तीखे तक। इन्हें पेयों, जैसे कि नींबूदा और कॉकटेल्स, में एक लोकप्रिय घटक के रूप में भी उपयोग किया जाता है, और यह अक्सर गार्निश के रूप में उपयोग किया जाता है। नींबू न केवल स्वादिष्ट हैं बल्कि विटामिन सी का एक शानदार स्रोत भी हैं।',
        //   'lemon_disease_1': 'साइट्रस कैंकर',
        //   'lemon_disease_2': 'ग्रीनिंग रोग',
        //   'lemon_disease_3': 'भूरा बराबर',
        //   'lemon_disease_prevention':
        //       'नियमित निरीक्षण, रोग-मुक्त पौधशाला सामग्री का उपयोग, और उचित बागबानी प्रबंधन से नींबू के रोगों से बचाव में मदद कर सकती हैं।',
        //   'lemon_fertilizer': 'नींबू संतुलित उर्वरकों से लाभान्वित होते हैं।',
        //   'lemon_precautions':
        //       'नींबू के पेड़ों की कटाई और आकारदेना फल उत्पादन के लिए महत्वपूर्ण है।',
        // },
