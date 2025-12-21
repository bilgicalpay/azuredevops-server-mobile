// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Instellingen';

  @override
  String get wikiSettings => 'Wiki Instellingen';

  @override
  String get wikiSettingsDescription =>
      'Voer de URL van het Azure DevOps wiki-bestand in. Deze wiki-inhoud wordt op de startpagina weergegeven.';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => 'Opslaan';

  @override
  String get marketSettings => 'Markt Instellingen';

  @override
  String get marketSettingsDescription =>
      'Voer de URL van de IIS statische directory in. APK- en IPA-bestanden worden uit deze directory weergegeven en gedownload.';

  @override
  String get marketUrl => 'Markt URL';

  @override
  String get notificationSettings => 'Melding Instellingen';

  @override
  String get controlFrequency => 'Controle Frequentie';

  @override
  String get pollingInterval => 'Polling Interval (seconden)';

  @override
  String get pollingIntervalHelper => 'Tussen 5-300 seconden';

  @override
  String get fast => 'Snel (10s)';

  @override
  String get normal => 'Normaal (15s)';

  @override
  String get slow => 'Langzaam (30s)';

  @override
  String get notificationTypes => 'Melding Typen';

  @override
  String get notifyOnFirstAssignment => 'Melding bij Eerste Toewijzing';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Melding alleen verzenden bij eerste toewijzing aan mij';

  @override
  String get notifyOnAllUpdates => 'Melding bij Alle Updates';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Melding verzenden wanneer aan mij toegewezen werkitems worden bijgewerkt';

  @override
  String get notifyOnHotfixOnly => 'Alleen Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Melding alleen voor werkitems van het type Hotfix';

  @override
  String get notifyOnGroupAssignments => 'Melding bij Groepstoewijzingen';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Melding verzenden wanneer toewijzingen worden gemaakt aan opgegeven groepen';

  @override
  String get groupName => 'Groepsnaam';

  @override
  String get groupNameHint => 'Bijv: Ontwikkelaars, QA Team';

  @override
  String get smartwatchNotifications => 'Smartwatch Meldingen';

  @override
  String get smartwatchNotificationsDescription =>
      'Meldingen naar smartwatches verzenden (alleen bij eerste toewijzing)';

  @override
  String get onCallMode => 'Dienstmodus';

  @override
  String get onCallModeDescription =>
      'In dienstmodus worden meldingen agressiever en ongelezen meldingen worden 3 keer vernieuwd.';

  @override
  String get onCallModePhone => 'Dienstmodus voor Telefoon';

  @override
  String get onCallModePhoneDescription => 'Agressieve meldingen op telefoon';

  @override
  String get onCallModeWatch => 'Dienstmodus voor Smartwatch';

  @override
  String get onCallModeWatchDescription => 'Agressieve meldingen op smartwatch';

  @override
  String get vacationMode => 'Vakantiemodus';

  @override
  String get vacationModeDescription =>
      'In vakantiemodus worden geen meldingen ontvangen.';

  @override
  String get vacationModePhone => 'Vakantiemodus voor Telefoon';

  @override
  String get vacationModePhoneDescription =>
      'Meldingen op telefoon uitschakelen';

  @override
  String get vacationModeWatch => 'Vakantiemodus voor Smartwatch';

  @override
  String get vacationModeWatchDescription =>
      'Meldingen op smartwatch uitschakelen';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get collection => 'Collectie';

  @override
  String get language => 'Taal';

  @override
  String get selectLanguage => 'Selecteer Taal';

  @override
  String get languageDescription =>
      'Kies uw voorkeurstaal. De app gebruikt standaard de taal van uw apparaat.';

  @override
  String get close => 'Sluiten';

  @override
  String get settingsSaved => 'Instellingen opgeslagen';

  @override
  String get invalidUrl => 'Voer een geldige URL in';

  @override
  String get invalidMarketUrl =>
      'Voer een geldige Markt URL in (bijv: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Polling interval moet tussen 5-300 seconden liggen';

  @override
  String couldNotOpenLink(String error) {
    return 'Kon link niet openen: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Nog geen groepen toegevoegd. Voeg hierboven een groepsnaam toe.';

  @override
  String get donate => 'Doneren';

  @override
  String get donateDescription => 'Ondersteun de ontwikkeling van deze app';

  @override
  String get donateButton => 'Koop me een Koffie';

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
      'Mosul - Historische Turkse stad in het noorden van Irak. Rijk aan oliebronnen en cultureel erfgoed. Thuis van oude Assyrische en Ottomaanse monumenten. Bekend om zijn prachtige architectuur en historische betekenis.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kirkuk - Belangrijke Turkse stad in het noorden van Irak. Rijk aan oliereserves en culturele diversiteit. Thuis van Turkmeense, Koerdische en Arabische gemeenschappen. Bekend om zijn historische citadel en traditionele architectuur.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Karabach - Historische Turkse regio in de Kaukasus. Bekend om zijn prachtige bergen, bossen en cultureel erfgoed. Rijk aan geschiedenis en natuurlijke schoonheid. Belangrijke regio voor de Turkse cultuur.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Thessaloniki - Historische Turkse stad in het noorden van Griekenland. Geboorteplaats van Mustafa Kemal Atatürk. Rijk aan Ottomaanse architectuur en cultureel erfgoed. Bekend om zijn prachtige waterfront en historische monumenten.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Cyprus - Mooi Middellandse Zee-eiland, onderdeel van de Turkse geschiedenis. Bekend om zijn adembenemende stranden, oude ruïnes en cultureel erfgoed. Noord-Cyprus is een Turkse Republiek. Rijk aan geschiedenis en natuurlijke schoonheid.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rhodos - Mooi Grieks eiland met een rijke Turkse geschiedenis. Bekend om zijn middeleeuwse architectuur, prachtige stranden en historische monumenten. Thuis van Ottomaanse moskeeën en Turkse baden. Belangrijk onderdeel van de Turkse maritieme geschiedenis.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Kreta - Grootste Griekse eiland met een belangrijk Turks erfgoed. Bekend om zijn prachtige landschappen, oude Minoïsche beschaving en Ottomaanse architectuur. Rijk aan geschiedenis en culturele diversiteit. Belangrijke regio in de Turkse maritieme geschiedenis.';

  @override
  String get turkeyGuideTitle => 'Turkije Reisgids';

  @override
  String get turkeyGuideSubtitle =>
      'Ontdek de natuurlijke schoonheid, cultureel erfgoed, historische plaatsen en festivals van Turkije';

  @override
  String get turkeyGuideNatureTitle => 'Natuur & Geografie';

  @override
  String get turkeyGuideNatureDescription =>
      'Verken de unieke natuurlijke wonderen en geografische kenmerken van Turkije';

  @override
  String get turkeyGuideLycianWayTitle => 'Lykische Weg';

  @override
  String get turkeyGuideLycianWayDescription =>
      'De Lykische Weg is een van \'s werelds top 10 langeafstandswandelpaden, die zich 540 km uitstrekt langs de Turkse Middellandse Zeekust. Het loopt door oude Lykische steden, prachtige stranden en adembenemende berglandschappen. Het pad biedt adembenemende uitzichten en verbindt historische plaatsen van Fethiye tot Antalya.';

  @override
  String get turkeyGuideFairyChimneysTitle =>
      'Feeënschoorstenen van Cappadocië';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'De feeënschoorstenen van Cappadocië zijn unieke rotsformaties die miljoenen jaren geleden zijn ontstaan door vulkaanuitbarstingen. Deze kegelvormige formaties, waarvan sommige 40 meter hoog zijn, creëren een magisch landschap. De regio is beroemd om ballonvaarten bij zonsopgang, die spectaculaire uitzichten bieden op deze UNESCO Werelderfgoedlocatie.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Ondergrondse Steden';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Cappadocië is de thuisbasis van opmerkelijke ondergrondse steden, waarvan sommige 8 niveaus diep reiken. Derinkuyu en Kaymaklı zijn de beroemdste, met tunnels, kamers, kerken en ventilatiesystemen. Deze steden konden duizenden mensen huisvesten en werden gebruikt voor bescherming tijdens invasies. Ze tonen ongelooflijke oude engineering.';

  @override
  String get turkeyGuideCultureTitle => 'Cultuur & Tradities';

  @override
  String get turkeyGuideCultureDescription =>
      'Ontdek het rijke culturele erfgoed en traditionele gewoonten van Turkije';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nasreddin Hoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nasreddin Hoca is een legendarische figuur in de Turkse folklore, bekend om zijn wijsheid, humor en slimme verhalen. Geboren in 1208 in Sivrihisar, woonde hij in Akşehir. Zijn verhalen, vol humor en wijsheid, worden verteld in de hele Turkse wereld. Het Internationale Nasreddin Hoca Festival wordt jaarlijks gehouden in Akşehir, waarbij dit geliefde personage wordt gevierd.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Kersenfestival';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Het Kersenfestival in Akşehir is een van de beroemdste traditionele festivals van Turkije. Het wordt jaarlijks in juni gehouden en viert de kersenoogst van de regio. Het festival omvat culturele evenementen, volksdansen, traditionele muziek en natuurlijk veel heerlijke kersen. Het trekt duizenden bezoekers en toont lokale tradities.';

  @override
  String get turkeyGuideHistoryTitle => 'Historische Plaatsen';

  @override
  String get turkeyGuideHistoryDescription =>
      'Verken het rijke historische erfgoed van Turkije dat duizenden jaren beslaat';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Oude Steden & Monumenten';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Turkije is de thuisbasis van talloze historische plaatsen, waaronder Efeze, Troje, Pergamon en Hierapolis. Deze oude steden tonen Griekse, Romeinse en Byzantijnse beschavingen. Het land heeft 19 UNESCO Werelderfgoedlocaties, waaronder Hagia Sophia, Cappadocië, Pamukkale en Göbekli Tepe, een van de oudste tempels ter wereld die 12.000 jaar teruggaat.';

  @override
  String get turkeyGuideGastronomyTitle => 'Turkse Keuken';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Geniet van de smaken van de wereldberoemde Turkse keuken';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Turkse Culinair Erfgoed';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'De Turkse keuken is een van de meest diverse en heerlijke ter wereld. Van kebabs en baklava tot Turks fruit en Turkse koffie, de keuken weerspiegelt eeuwen van culturele uitwisseling. Istanbuls straatvoedsel, regionale specialiteiten en traditionele gerechten zoals mantı, dolma en börek bieden een onvergetelijke culinaire reis. Turkse koffie en theecultuur zijn integrale onderdelen van het dagelijks leven.';

  @override
  String get turkeyGuideFestivalsTitle => 'Festivals & Evenementen';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Ervaar de levendige festivals en culturele evenementen van Turkije';

  @override
  String get turkeyGuideFestivalsListTitle => 'Belangrijke Festivals';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Turkije organiseert het hele jaar door talrijke festivals: Internationaal Istanbul Film Festival, Antalya Golden Orange Film Festival, Cappadocië Luchtballon Festival, Internationaal Nasreddin Hoca Festival, Kersenfestival in Akşehir, Mevlana Wervelende Derwisjen Festival in Konya, en vele regionale culturele vieringen die muziek, dans en traditionele kunsten tonen.';

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
