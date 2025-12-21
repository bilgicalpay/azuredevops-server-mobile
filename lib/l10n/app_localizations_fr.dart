// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Paramètres';

  @override
  String get wikiSettings => 'Paramètres Wiki';

  @override
  String get wikiSettingsDescription =>
      'Entrez l\'URL du fichier wiki Azure DevOps. Ce contenu wiki sera affiché sur la page d\'accueil.';

  @override
  String get wikiUrl => 'URL Wiki';

  @override
  String get save => 'Enregistrer';

  @override
  String get marketSettings => 'Paramètres du Marché';

  @override
  String get marketSettingsDescription =>
      'Entrez l\'URL du répertoire statique IIS. Les fichiers APK et IPA seront listés et téléchargeables depuis ce répertoire.';

  @override
  String get marketUrl => 'URL du Marché';

  @override
  String get notificationSettings => 'Paramètres de Notification';

  @override
  String get controlFrequency => 'Fréquence de Contrôle';

  @override
  String get pollingInterval => 'Intervalle d\'Interrogation (secondes)';

  @override
  String get pollingIntervalHelper => 'Entre 5-300 secondes';

  @override
  String get fast => 'Rapide (10s)';

  @override
  String get normal => 'Normal (15s)';

  @override
  String get slow => 'Lent (30s)';

  @override
  String get notificationTypes => 'Types de Notification';

  @override
  String get notifyOnFirstAssignment =>
      'Notification lors de la Première Attribution';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Envoyer une notification uniquement lors de la première attribution';

  @override
  String get notifyOnAllUpdates =>
      'Notification lors de Toutes les Mises à Jour';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Envoyer une notification lorsque les éléments de travail qui me sont attribués sont mis à jour';

  @override
  String get notifyOnHotfixOnly => 'Uniquement Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Notification uniquement pour les éléments de travail de type Hotfix';

  @override
  String get notifyOnGroupAssignments =>
      'Notification lors des Attributions de Groupe';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Envoyer une notification lorsque des attributions sont faites aux groupes spécifiés';

  @override
  String get groupName => 'Nom du Groupe';

  @override
  String get groupNameHint => 'Ex: Développeurs, Équipe QA';

  @override
  String get smartwatchNotifications => 'Notifications Montre Intelligente';

  @override
  String get smartwatchNotificationsDescription =>
      'Envoyer des notifications aux montres intelligentes (uniquement lors de la première attribution)';

  @override
  String get onCallMode => 'Mode de Garde';

  @override
  String get onCallModeDescription =>
      'En mode de garde, les notifications deviennent plus agressives et les notifications non lues sont actualisées 3 fois.';

  @override
  String get onCallModePhone => 'Mode de Garde pour Téléphone';

  @override
  String get onCallModePhoneDescription =>
      'Notifications agressives sur le téléphone';

  @override
  String get onCallModeWatch => 'Mode de Garde pour Montre Intelligente';

  @override
  String get onCallModeWatchDescription =>
      'Notifications agressives sur la montre intelligente';

  @override
  String get vacationMode => 'Mode Vacances';

  @override
  String get vacationModeDescription =>
      'Aucune notification n\'est reçue en mode vacances.';

  @override
  String get vacationModePhone => 'Mode Vacances pour Téléphone';

  @override
  String get vacationModePhoneDescription =>
      'Désactiver les notifications sur le téléphone';

  @override
  String get vacationModeWatch => 'Mode Vacances pour Montre Intelligente';

  @override
  String get vacationModeWatchDescription =>
      'Désactiver les notifications sur la montre intelligente';

  @override
  String get serverUrl => 'URL du Serveur';

  @override
  String get collection => 'Collection';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Sélectionner la Langue';

  @override
  String get languageDescription =>
      'Choisissez votre langue préférée. L\'application utilisera la langue de votre appareil par défaut.';

  @override
  String get close => 'Fermer';

  @override
  String get settingsSaved => 'Paramètres enregistrés';

  @override
  String get invalidUrl => 'Veuillez entrer une URL valide';

  @override
  String get invalidMarketUrl =>
      'Veuillez entrer une URL de Marché valide (ex: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'L\'intervalle d\'interrogation doit être entre 5-300 secondes';

  @override
  String couldNotOpenLink(String error) {
    return 'Impossible d\'ouvrir le lien: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Aucun groupe ajouté pour le moment. Ajoutez un nom de groupe ci-dessus.';

  @override
  String get donate => 'Faire un Don';

  @override
  String get donateDescription =>
      'Soutenez le développement de cette application';

  @override
  String get donateButton => 'Offrez-moi un Café';

  @override
  String get closePopup => 'Close';

  @override
  String get cultureFigure_ibni_sina =>
      'Ibn Sina (Avicenna) - Wrote the most important medical encyclopedia of the Middle Ages with his work \'El-Kanun fi\'t-Tıb\'. This great scientist, known as Avicenna, laid the foundations of modern medicine.';

  @override
  String get cultureFigure_ali_kuscu =>
      'Ali Kuşçu - Made groundbreaking work in mathematics and astronomy in the 15th century. Came to Istanbul at the invitation of Fatih Sultan Mehmet and taught in madrasas.';

  @override
  String get cultureFigure_ulug_bey =>
      'Uluğ Bey - Ruler of the Timurid Empire and a great astronomer. Prepared star catalogs at the observatory he established in Samarkand. His work \'Zic-i Uluğ Bey\' was used for centuries.';

  @override
  String get cultureFigure_farabi =>
      'Farabi - One of the founders of Islamic philosophy. Known as the \'Second Teacher\'. Made important works in music theory, logic and political philosophy.';

  @override
  String get cultureFigure_mimar_sinan =>
      'Mimar Sinan - Chief architect of the Ottoman Empire. Created more than 300 works. Created works that entered world architectural history such as Süleymaniye and Selimiye mosques.';

  @override
  String get cultureFigure_evliya_celebi =>
      'Evliya Çelebi - Great traveler of the 17th century. Recorded Ottoman geography and culture with his 10-volume work \'Seyahatname\'. One of the important names in world travel literature.';

  @override
  String get cultureFigure_katip_celebi =>
      'Katip Çelebi - Important Ottoman geographer and historian. Known for his geography work \'Cihannüma\' and bibliography work \'Keşfü\'z-Zünun\'.';

  @override
  String get cultureFigure_piri_reis =>
      'Piri Reis - Ottoman sailor and cartographer. The world map he drew in 1513 is considered one of the oldest maps of the American continent.';

  @override
  String get cultureFigure_cahit_arf =>
      'Cahit Arf - Turkish mathematician. Gained an important place in the mathematical world with \'Arf Constant\' and \'Arf Rings\' theory. His contributions to modern algebra and number theory are great.';

  @override
  String get cultureFigure_aziz_sancar =>
      'Aziz Sancar - 2015 Nobel Prize in Chemistry winner. Discovered DNA repair mechanisms. First scientist from Turkey to receive a Nobel Prize.';

  @override
  String get cultureHistoricalState_gokturk_kaganligi =>
      '🏹 Göktürk Khaganate (552-744) - The first Turkic state established in Central Asia. The first state to use the name Turk. Divided into Eastern and Western.';

  @override
  String get cultureHistoricalState_osmanli =>
      '🌙 Ottoman Empire (1299-1922) - Great empire spread across three continents. Ruled for more than 600 years. With the conquest of Istanbul, it closed the Middle Ages and opened the Modern Age.';

  @override
  String get cultureModernState_turkiye =>
      '🇹🇷 Republic of Turkey (1923-) - Modern Turkish state founded under the leadership of Mustafa Kemal Atatürk. Secular, democratic and social state of law. Member of NATO and EU.';

  @override
  String get cultureHistoricalPlace_ayasofya =>
      'Hagia Sophia - One of the world\'s most important architectural monuments. Built as a church in 537, converted to a mosque in 1453, and became a museum in 1935. It is now a mosque again.';

  @override
  String get cultureHistoricalPlace_cappadocia =>
      'Cappadocia - Unique region with fairy chimneys and underground cities. UNESCO World Heritage Site. Famous for hot air balloon tours.';

  @override
  String get cultureHistoricalPlace_pamukkale =>
      'Pamukkale - Natural wonder with white travertine terraces. Thermal springs and ancient city of Hierapolis. UNESCO World Heritage Site.';

  @override
  String get cultureGeographical_agri_dagi =>
      'Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters. According to legend, Noah\'s Ark landed here. Located on the border with Iran and Armenia.';

  @override
  String get cultureGeographical_van_golu =>
      'Lake Van - Turkey\'s largest lake. Saline lake with an area of 3,755 km². Famous for its unique ecosystem and Akdamar Island.';

  @override
  String get cultureCultural_turkish_coffee =>
      'Turkish Coffee - Traditional coffee preparation method included in UNESCO\'s Intangible Cultural Heritage. Served with Turkish delight. An important part of Turkish culture.';

  @override
  String get cultureCultural_whirling_dervishes =>
      'Mevlevi Sema Ceremony - Whirling dervish ritual of the Mevlevi order. UNESCO Intangible Cultural Heritage. Represents spiritual journey and unity with God.';

  @override
  String get cultureGastronomy_kebab =>
      'Kebab - One of Turkey\'s most famous dishes. Various types including Adana kebab, Urfa kebab, and döner. Grilled meat dishes that are world-renowned.';

  @override
  String get cultureGastronomy_baklava =>
      'Baklava - Traditional Turkish dessert made with phyllo dough, nuts and syrup. Gaziantep baklava is particularly famous. UNESCO Intangible Cultural Heritage.';

  @override
  String get cultureGeology_cappadocia_volcanic =>
      'Cappadocia Volcanic Formations - Formed by volcanic eruptions millions of years ago. Erosion created unique fairy chimneys. One of the world\'s most unique geological formations.';

  @override
  String get cultureGeology_pamukkale_travertine =>
      'Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Natural wonder formed over thousands of years.';

  @override
  String get cultureSea_mediterranean =>
      'Mediterranean Sea - Turkey\'s southern coast. Famous for its turquoise waters, beautiful beaches and historical sites. Popular tourist destination.';

  @override
  String get cultureSea_aegean =>
      'Aegean Sea - Turkey\'s western coast. Known for its clear waters, islands and ancient cities. Home to many important archaeological sites.';

  @override
  String get cultureMuseum_topkapi_museum =>
      'Topkapı Palace Museum - Former residence of Ottoman sultans. Houses important collections including the Prophet\'s relics. One of the world\'s most important palace museums.';

  @override
  String get cultureMuseum_archaeological_museum =>
      'Istanbul Archaeological Museum - Houses artifacts from various civilizations. One of the world\'s most important archaeological museums. Contains works from Anatolian, Greek, Roman and Ottoman periods.';

  @override
  String get cultureHoliday_antalya =>
      'Antalya - Turkey\'s most popular holiday destination. Beautiful beaches, historical sites and luxury resorts. Known as the Turkish Riviera.';

  @override
  String get cultureHoliday_cappadocia =>
      'Cappadocia - Unique holiday destination with fairy chimneys and cave hotels. Famous for hot air balloon tours. UNESCO World Heritage Site.';

  @override
  String get cultureHistoricalPlace_musul =>
      'Mossoul - Ville turque historique dans le nord de l\'Irak. Riche en ressources pétrolières et patrimoine culturel. Abrite des monuments assyriens et ottomans antiques. Connue pour sa belle architecture et son importance historique.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kirkouk - Ville turque importante dans le nord de l\'Irak. Riche en réserves pétrolières et diversité culturelle. Foyer de communautés turkmènes, kurdes et arabes. Connue pour sa citadelle historique et son architecture traditionnelle.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Karabagh - Région turque historique dans le Caucase. Connue pour ses belles montagnes, forêts et patrimoine culturel. Riche en histoire et beauté naturelle. Région importante pour la culture turque.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Thessalonique - Ville turque historique dans le nord de la Grèce. Lieu de naissance de Mustafa Kemal Atatürk. Riche en architecture ottomane et patrimoine culturel. Connue pour son beau front de mer et ses monuments historiques.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Chypre - Belle île méditerranéenne, partie de l\'histoire turque. Connue pour ses plages magnifiques, ruines antiques et patrimoine culturel. Chypre du Nord est une République turque. Riche en histoire et beauté naturelle.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rhodes - Belle île grecque avec une riche histoire turque. Connue pour son architecture médiévale, belles plages et monuments historiques. Abrite des mosquées ottomanes et bains turcs. Partie importante de l\'histoire maritime turque.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Crète - Plus grande île grecque avec un patrimoine turc important. Connue pour ses beaux paysages, civilisation minoenne antique et architecture ottomane. Riche en histoire et diversité culturelle. Région importante dans l\'histoire maritime turque.';

  @override
  String get turkeyGuideTitle => 'Guide de Voyage en Turquie';

  @override
  String get turkeyGuideSubtitle =>
      'Découvrez la beauté naturelle, le patrimoine culturel, les sites historiques et les festivals de la Turquie';

  @override
  String get turkeyGuideNatureTitle => 'Nature & Géographie';

  @override
  String get turkeyGuideNatureDescription =>
      'Explorez les merveilles naturelles uniques et les caractéristiques géographiques de la Turquie';

  @override
  String get turkeyGuideLycianWayTitle => 'Sentier Lycien';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Le Sentier Lycien est l\'un des 10 meilleurs sentiers de randonnée longue distance au monde, s\'étendant sur 540 km le long de la côte méditerranéenne de la Turquie. Il traverse d\'anciennes villes lyciennes, de belles plages et des paysages montagneux époustouflants. Le sentier offre des vues à couper le souffle et relie les sites historiques de Fethiye à Antalya.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Cheminées de Fées de Cappadoce';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Les cheminées de fées de Cappadoce sont des formations rocheuses uniques créées par des éruptions volcaniques il y a des millions d\'années. Ces formations en forme de cône, certaines atteignant 40 mètres de hauteur, créent un paysage magique. La région est célèbre pour les tours en montgolfière au lever du soleil, offrant des vues spectaculaires de ce site du patrimoine mondial de l\'UNESCO.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Villes Souterraines';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'La Cappadoce abrite des villes souterraines remarquables, certaines s\'étendant sur 8 niveaux de profondeur. Derinkuyu et Kaymaklı sont les plus célèbres, avec des tunnels, des chambres, des églises et des systèmes de ventilation. Ces villes pouvaient abriter des milliers de personnes et étaient utilisées pour la protection pendant les invasions. Elles montrent une ingénierie ancienne incroyable.';

  @override
  String get turkeyGuideCultureTitle => 'Culture & Traditions';

  @override
  String get turkeyGuideCultureDescription =>
      'Découvrez le riche patrimoine culturel et les coutumes traditionnelles de la Turquie';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nasreddin Hoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nasreddin Hoca est une figure légendaire du folklore turc, connue pour sa sagesse, son humour et ses histoires intelligentes. Né en 1208 à Sivrihisar, il a vécu à Akşehir. Ses contes, remplis d\'humour et de sagesse, sont racontés dans tout le monde turc. Le Festival International Nasreddin Hoca se tient chaque année à Akşehir, célébrant ce personnage bien-aimé.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Festival des Cerises';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Le Festival des Cerises à Akşehir est l\'un des festivals traditionnels les plus célèbres de Turquie. Organisé chaque année en juin, il célèbre la récolte des cerises de la région. Le festival comprend des événements culturels, des danses folkloriques, de la musique traditionnelle et, bien sûr, beaucoup de délicieuses cerises. Il attire des milliers de visiteurs et présente les traditions locales.';

  @override
  String get turkeyGuideHistoryTitle => 'Sites Historiques';

  @override
  String get turkeyGuideHistoryDescription =>
      'Explorez le riche patrimoine historique de la Turquie s\'étendant sur des milliers d\'années';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Villes Antiques & Monuments';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'La Turquie abrite d\'innombrables sites historiques, notamment Éphèse, Troie, Pergame et Hiérapolis. Ces villes antiques montrent les civilisations grecque, romaine et byzantine. Le pays compte 19 sites du patrimoine mondial de l\'UNESCO, notamment Sainte-Sophie, la Cappadoce, Pamukkale et Göbekli Tepe, l\'un des plus anciens temples du monde datant de 12 000 ans.';

  @override
  String get turkeyGuideGastronomyTitle => 'Cuisine Turque';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Savourez les saveurs de la cuisine turque de renommée mondiale';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Patrimoine Culinaire Turc';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'La cuisine turque est l\'une des plus diverses et délicieuses au monde. Des kebabs et baklavas aux loukoums et au café turc, la cuisine reflète des siècles d\'échanges culturels. La street food d\'Istanbul, les spécialités régionales et les plats traditionnels comme le mantı, le dolma et le börek offrent un voyage culinaire inoubliable. Le café turc et la culture du thé sont des parties intégrantes de la vie quotidienne.';

  @override
  String get turkeyGuideFestivalsTitle => 'Festivals & Événements';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Vivez les festivals animés et les événements culturels de la Turquie';

  @override
  String get turkeyGuideFestivalsListTitle => 'Festivals Majeurs';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'La Turquie accueille de nombreux festivals tout au long de l\'année : Festival International du Film d\'Istanbul, Festival du Film Antalya Golden Orange, Festival de Montgolfières de Cappadoce, Festival International Nasreddin Hoca, Festival des Cerises à Akşehir, Festival des Derviches Tourneurs de Mevlana à Konya, et de nombreuses célébrations culturelles régionales présentant la musique, la danse et les arts traditionnels.';

  @override
  String get turkeyGuideHistoricalPlacesTitle => 'Historical Places';

  @override
  String get turkeyGuideHistoricalPlacesDescription =>
      'Discover Turkey\'s rich historical heritage including ancient cities, monuments, and important Turkish lands';

  @override
  String get turkeyGuideHistoricalPlacesListTitle =>
      'Important Historical Places & Turkish Lands';

  @override
  String get turkeyGuideHistoricalPlacesListDescription =>
      'Turkey and Turkish lands are home to countless historical sites: Ephesus, Troy, Pergamon, Hierapolis, Hagia Sophia, Topkapı Palace, Süleymaniye Mosque, Selimiye Mosque, Göbekli Tepe (12,000 years old), Çatalhöyük, Hattuşa, Mount Nemrut, Sümela Monastery, Akdamar Church, Anıtkabir. Important Turkish lands include: Mosul (Musul) - Historic Turkish city in northern Iraq with rich oil resources and cultural heritage. Kirkuk (Kerkük) - Important Turkish city with historical citadel. Karabakh (Karabağ) - Historic Turkish region in the Caucasus with beautiful mountains and forests. Thessaloniki (Selanik) - Birthplace of Mustafa Kemal Atatürk, rich in Ottoman architecture. Cyprus (Kıbrıs) - Beautiful Mediterranean island, Northern Cyprus is a Turkish Republic. Rhodes (Rodos) - Island with rich Turkish history and Ottoman monuments. Crete (Girit) - Largest Greek island with significant Turkish heritage and Ottoman architecture.';

  @override
  String get turkeyGuideSeasTitle => 'Seas & Coastlines';

  @override
  String get turkeyGuideSeasDescription =>
      'Explore Turkey\'s beautiful seas, coastlines, and maritime heritage';

  @override
  String get turkeyGuideSeasListTitle => 'Turkish Seas & Bays';

  @override
  String get turkeyGuideSeasListDescription =>
      'Turkey is surrounded by four seas: Mediterranean Sea (Akdeniz) - Famous for turquoise waters, beautiful beaches, and historical sites. Known as the Turkish Riviera. Aegean Sea (Ege Denizi) - Known for clear waters, islands, and ancient cities. Black Sea (Karadeniz) - Rich in natural beauty and cultural heritage. Sea of Marmara (Marmara Denizi) - Connects the Black Sea and Aegean Sea. Bosphorus (Boğaziçi) - Iconic strait connecting Europe and Asia. Dardanelles (Çanakkale Boğazı) - Historic strait with rich maritime history. Beautiful bays include: Antalya Bay, İzmir Bay, Gökova Bay, Fethiye Bay, Kaş Bay, Kekova, Datça Peninsula, Bodrum Peninsula, and Çeşme Peninsula.';

  @override
  String get turkeyGuideMuseumsTitle => 'Museums';

  @override
  String get turkeyGuideMuseumsDescription =>
      'Discover Turkey\'s world-class museums and cultural collections';

  @override
  String get turkeyGuideMuseumsListTitle => 'Important Museums';

  @override
  String get turkeyGuideMuseumsListDescription =>
      'Turkey is home to world-renowned museums: Topkapı Palace Museum - Former residence of Ottoman sultans, houses Prophet\'s relics. Hagia Sophia Museum - One of the world\'s most important architectural monuments. Istanbul Archaeological Museum - Houses artifacts from various civilizations. Turkish and Islamic Arts Museum, Pera Museum, Sakıp Sabancı Museum, İstanbul Modern, Anıtkabir Atatürk Museum, Museum of Anatolian Civilizations, Göreme Open Air Museum, Zeugma Mosaic Museum, Antakya Mosaic Museum, Hierapolis Archaeological Museum, Ephesus Museum, Bodrum Underwater Archaeology Museum, Troy Museum, Gaziantep Zeugma Museum, Konya Mevlana Museum, Ankara Ethnography Museum, and Bursa Turkish and Islamic Arts Museum.';

  @override
  String get turkeyGuideGeologyTitle => 'Geological Features';

  @override
  String get turkeyGuideGeologyDescription =>
      'Explore Turkey\'s unique geological formations and natural wonders';

  @override
  String get turkeyGuideGeologyListTitle => 'Geological Wonders';

  @override
  String get turkeyGuideGeologyListDescription =>
      'Turkey\'s geological diversity is remarkable: Cappadocia Volcanic Formations - Unique fairy chimneys created by volcanic eruptions millions of years ago. Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters, legendary landing place of Noah\'s Ark. Erciyes Volcano, Nemrut Volcano, Hasandağ, Karapınar Volcanic Area, Kula Volcanic Park. Salt deposits at Lake Tuz (Tuz Gölü). Volcanic formations around Lake Van. Important deltas: Çukurova Delta, Bafra Delta, Kızılırmak Delta, Yeşilırmak Delta, Göksu Delta, Sakarya Delta. Major fault lines: Marmara Fault, North Anatolian Fault, East Anatolian Fault, and Tuz Gölü Fault.';

  @override
  String get turkeyGuideHolidayDestinationsTitle => 'Holiday Destinations';

  @override
  String get turkeyGuideHolidayDestinationsDescription =>
      'Discover Turkey\'s most beautiful holiday destinations and resorts';

  @override
  String get turkeyGuideHolidayDestinationsListTitle =>
      'Popular Holiday Destinations';

  @override
  String get turkeyGuideHolidayDestinationsListDescription =>
      'Turkey offers diverse holiday experiences: Mediterranean Coast - Antalya (Turkish Riviera), Bodrum, Marmaris, Fethiye, Kaş, Kalkan, Ölüdeniz, Datça. Aegean Coast - Çeşme, Alaçatı, Kuşadası, Didim. Natural Wonders - Pamukkale (white travertines), Cappadocia (fairy chimneys and cave hotels). Mountain Resorts - Uludağ, Palandöken, Kartalkaya, Erciyes (skiing). Cultural Destinations - Safranbolu (Ottoman architecture), Beypazarı (traditional houses), Amasra (Black Sea coast). Black Sea - Trabzon, Rize. Lakes - Sapanca, Abant. Each destination offers unique experiences from beach holidays to cultural tours, from winter sports to thermal springs.';

  @override
  String get turkeyGuideBeachesTitle => 'Beautiful Beaches & Coastlines';

  @override
  String get turkeyGuideBeachesDescription =>
      'Discover Turkey\'s stunning beaches and pristine coastlines';

  @override
  String get turkeyGuideBeachesListTitle => 'Famous Turkish Beaches';

  @override
  String get turkeyGuideBeachesListDescription =>
      'Turkey boasts some of the world\'s most beautiful beaches: Ölüdeniz (Blue Lagoon) - Famous for its turquoise waters and paragliding. Kaputaş Beach - Stunning beach between Kaş and Kalkan with crystal-clear waters. Patara Beach - 18 km long sandy beach, one of the longest in the Mediterranean. Iztuzu Beach - Protected nesting ground for Caretta caretta sea turtles. Butterfly Valley - Accessible only by boat, a hidden paradise. Cleopatra Beach (Alanya) - Legendary beach with golden sand. Çıralı Beach - Known for the eternal flames of the Chimaera. Kabak Bay - Secluded beach surrounded by nature. Each beach offers unique beauty and experiences.';

  @override
  String get turkeyGuideForestsTitle => 'Forests & Natural Parks';

  @override
  String get turkeyGuideForestsDescription =>
      'Explore Turkey\'s lush forests and protected natural areas';

  @override
  String get turkeyGuideForestsListTitle => 'Turkish Forests & National Parks';

  @override
  String get turkeyGuideForestsListDescription =>
      'Turkey is rich in forests and natural parks: Belgrad Forest (Istanbul) - Ancient forest with hiking trails and picnic areas. Yedigöller National Park (Seven Lakes) - Beautiful lakes surrounded by dense forests. Kazdağı National Park - Home to Mount Ida, rich in biodiversity. Köprülü Canyon National Park - Stunning canyon with ancient Roman bridge. Kaçkar Mountains National Park - Alpine meadows and pristine forests. Termessos National Park - Ancient city within a natural park. Dilek Peninsula-Büyük Menderes Delta National Park - Coastal forests and wetlands. Aladağlar National Park - Mountain forests and wildlife. These areas offer hiking, camping, and nature observation opportunities.';
}
