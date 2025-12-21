// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get wikiSettings => 'विकी सेटिंग्स';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps विकी फ़ाइल का URL दर्ज करें। यह विकी सामग्री होम पेज पर प्रदर्शित की जाएगी।';

  @override
  String get wikiUrl => 'विकी URL';

  @override
  String get save => 'सहेजें';

  @override
  String get marketSettings => 'मार्केट सेटिंग्स';

  @override
  String get marketSettingsDescription =>
      'IIS स्थिर निर्देशिका URL दर्ज करें। APK और IPA फ़ाइलें इस निर्देशिका से सूचीबद्ध और डाउनलोड करने योग्य होंगी।';

  @override
  String get marketUrl => 'मार्केट URL';

  @override
  String get notificationSettings => 'सूचना सेटिंग्स';

  @override
  String get controlFrequency => 'नियंत्रण आवृत्ति';

  @override
  String get pollingInterval => 'पोलिंग अंतराल (सेकंड)';

  @override
  String get pollingIntervalHelper => '5-300 सेकंड के बीच';

  @override
  String get fast => 'तेज़ (10s)';

  @override
  String get normal => 'सामान्य (15s)';

  @override
  String get slow => 'धीमा (30s)';

  @override
  String get notificationTypes => 'सूचना प्रकार';

  @override
  String get notifyOnFirstAssignment => 'पहले असाइनमेंट पर सूचना';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'केवल पहली बार मुझे असाइन किए जाने पर सूचना भेजें';

  @override
  String get notifyOnAllUpdates => 'सभी अपडेट पर सूचना';

  @override
  String get notifyOnAllUpdatesDescription =>
      'मुझे असाइन किए गए कार्य आइटम अपडेट होने पर सूचना भेजें';

  @override
  String get notifyOnHotfixOnly => 'केवल Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'केवल Hotfix प्रकार के कार्य आइटम के लिए सूचना';

  @override
  String get notifyOnGroupAssignments => 'समूह असाइनमेंट पर सूचना';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'निर्दिष्ट समूहों को असाइनमेंट किए जाने पर सूचना भेजें';

  @override
  String get groupName => 'समूह नाम';

  @override
  String get groupNameHint => 'उदाहरण: डेवलपर्स, QA टीम';

  @override
  String get smartwatchNotifications => 'स्मार्टवॉच सूचनाएं';

  @override
  String get smartwatchNotificationsDescription =>
      'स्मार्टवॉच पर सूचनाएं भेजें (केवल पहले असाइनमेंट पर)';

  @override
  String get onCallMode => 'ऑन-कॉल मोड';

  @override
  String get onCallModeDescription =>
      'ऑन-कॉल मोड में, सूचनाएं अधिक आक्रामक हो जाती हैं और अपठित सूचनाएं 3 बार ताज़ा की जाती हैं।';

  @override
  String get onCallModePhone => 'फोन के लिए ऑन-कॉल मोड';

  @override
  String get onCallModePhoneDescription => 'फोन पर आक्रामक सूचनाएं';

  @override
  String get onCallModeWatch => 'स्मार्टवॉच के लिए ऑन-कॉल मोड';

  @override
  String get onCallModeWatchDescription => 'स्मार्टवॉच पर आक्रामक सूचनाएं';

  @override
  String get vacationMode => 'छुट्टी मोड';

  @override
  String get vacationModeDescription =>
      'छुट्टी मोड में कोई सूचना प्राप्त नहीं होती है।';

  @override
  String get vacationModePhone => 'फोन के लिए छुट्टी मोड';

  @override
  String get vacationModePhoneDescription => 'फोन पर सूचनाएं अक्षम करें';

  @override
  String get vacationModeWatch => 'स्मार्टवॉच के लिए छुट्टी मोड';

  @override
  String get vacationModeWatchDescription => 'स्मार्टवॉच पर सूचनाएं अक्षम करें';

  @override
  String get serverUrl => 'सर्वर URL';

  @override
  String get collection => 'संग्रह';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get languageDescription =>
      'अपनी पसंदीदा भाषा चुनें। ऐप डिफ़ॉल्ट रूप से आपकी डिवाइस भाषा का उपयोग करेगा।';

  @override
  String get close => 'बंद करें';

  @override
  String get settingsSaved => 'सेटिंग्स सहेजी गईं';

  @override
  String get invalidUrl => 'कृपया एक वैध URL दर्ज करें';

  @override
  String get invalidMarketUrl =>
      'कृपया एक वैध मार्केट URL दर्ज करें (उदा: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'पोलिंग अंतराल 5-300 सेकंड के बीच होना चाहिए';

  @override
  String couldNotOpenLink(String error) {
    return 'लिंक खोल नहीं सका: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'अभी तक कोई समूह नहीं जोड़ा गया है। ऊपर से समूह नाम जोड़ें।';

  @override
  String get donate => 'दान करें';

  @override
  String get donateDescription => 'इस ऐप के विकास का समर्थन करें';

  @override
  String get donateButton => 'मुझे एक कॉफी खरीदें';

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
      'मोसुल - उत्तरी इराक में ऐतिहासिक तुर्क शहर। तेल संसाधनों और सांस्कृतिक विरासत से समृद्ध। प्राचीन असीरियन और ओटोमन स्मारकों का घर। अपनी सुंदर वास्तुकला और ऐतिहासिक महत्व के लिए जाना जाता है।';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'किरकुक - उत्तरी इराक में महत्वपूर्ण तुर्क शहर। तेल भंडार और सांस्कृतिक विविधता से समृद्ध। तुर्कमेन, कुर्द और अरब समुदायों का घर। अपने ऐतिहासिक किले और पारंपरिक वास्तुकला के लिए जाना जाता है।';

  @override
  String get cultureHistoricalPlace_karabag =>
      'कराबाख - काकेशस में ऐतिहासिक तुर्क क्षेत्र। अपने सुंदर पहाड़ों, जंगलों और सांस्कृतिक विरासत के लिए जाना जाता है। इतिहास और प्राकृतिक सुंदरता से समृद्ध। तुर्क संस्कृति के लिए महत्वपूर्ण क्षेत्र।';

  @override
  String get cultureHistoricalPlace_selanik =>
      'थेसालोनिकी - उत्तरी ग्रीस में ऐतिहासिक तुर्क शहर। मुस्तफा केमल अतातुर्क का जन्मस्थान। ओटोमन वास्तुकला और सांस्कृतिक विरासत से समृद्ध। अपनी सुंदर वाटरफ्रंट और ऐतिहासिक स्मारकों के लिए जाना जाता है।';

  @override
  String get cultureHistoricalPlace_kibris =>
      'साइप्रस - सुंदर भूमध्यसागरीय द्वीप, तुर्क इतिहास का हिस्सा। अपने शानदार समुद्र तटों, प्राचीन खंडहरों और सांस्कृतिक विरासत के लिए जाना जाता है। उत्तरी साइप्रस एक तुर्क गणराज्य है। इतिहास और प्राकृतिक सुंदरता से समृद्ध।';

  @override
  String get cultureHistoricalPlace_rodos =>
      'रोड्स - समृद्ध तुर्क इतिहास के साथ सुंदर ग्रीक द्वीप। अपनी मध्ययुगीन वास्तुकला, सुंदर समुद्र तटों और ऐतिहासिक स्मारकों के लिए जाना जाता है। ओटोमन मस्जिदों और तुर्क स्नानघरों का घर। तुर्क समुद्री इतिहास का महत्वपूर्ण हिस्सा।';

  @override
  String get cultureHistoricalPlace_girit =>
      'क्रेते - महत्वपूर्ण तुर्क विरासत के साथ सबसे बड़ा ग्रीक द्वीप। अपने सुंदर परिदृश्य, प्राचीन मिनोअन सभ्यता और ओटोमन वास्तुकला के लिए जाना जाता है। इतिहास और सांस्कृतिक विविधता से समृद्ध। तुर्क समुद्री इतिहास में महत्वपूर्ण क्षेत्र।';

  @override
  String get turkeyGuideTitle => 'तुर्की यात्रा गाइड';

  @override
  String get turkeyGuideSubtitle =>
      'तुर्की की प्राकृतिक सुंदरता, सांस्कृतिक विरासत, ऐतिहासिक स्थलों और त्योहारों की खोज करें';

  @override
  String get turkeyGuideNatureTitle => 'प्रकृति और भूगोल';

  @override
  String get turkeyGuideNatureDescription =>
      'तुर्की के अद्वितीय प्राकृतिक चमत्कारों और भौगोलिक विशेषताओं का अन्वेषण करें';

  @override
  String get turkeyGuideLycianWayTitle => 'लिसियन वे';

  @override
  String get turkeyGuideLycianWayDescription =>
      'लिसियन वे दुनिया की शीर्ष 10 लंबी दूरी की हाइकिंग ट्रेल्स में से एक है, जो तुर्की के भूमध्यसागरीय तट के साथ 540 किमी तक फैली हुई है। यह प्राचीन लिसियन शहरों, सुंदर समुद्र तटों और आश्चर्यजनक पहाड़ी परिदृश्यों से होकर गुजरती है। ट्रेल आश्चर्यजनक दृश्य प्रदान करती है और फेथिये से अंताल्या तक ऐतिहासिक स्थलों को जोड़ती है।';

  @override
  String get turkeyGuideFairyChimneysTitle => 'कप्पादोसिया की परी चिमनी';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'कप्पादोसिया की परी चिमनी लाखों साल पहले ज्वालामुखी विस्फोटों से बनी अद्वितीय चट्टानी संरचनाएं हैं। ये शंकु के आकार की संरचनाएं, कुछ 40 मीटर की ऊंचाई तक पहुंचती हैं, एक जादुई परिदृश्य बनाती हैं। यह क्षेत्र सूर्योदय पर गर्म हवा के गुब्बारे के दौरे के लिए प्रसिद्ध है, जो यूनेस्को विश्व धरोहर स्थल के शानदार दृश्य प्रदान करता है।';

  @override
  String get turkeyGuideUndergroundCityTitle => 'भूमिगत शहर';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'कप्पादोसिया उल्लेखनीय भूमिगत शहरों का घर है, कुछ 8 स्तरों तक गहरे तक फैले हुए हैं। डेरिंकुयू और कायमकली सबसे प्रसिद्ध हैं, जिनमें सुरंगें, कमरे, चर्च और वेंटिलेशन सिस्टम हैं। ये शहर हजारों लोगों को रख सकते थे और आक्रमण के दौरान सुरक्षा के लिए उपयोग किए जाते थे। वे अविश्वसनीय प्राचीन इंजीनियरिंग दिखाते हैं।';

  @override
  String get turkeyGuideCultureTitle => 'संस्कृति और परंपराएं';

  @override
  String get turkeyGuideCultureDescription =>
      'तुर्की की समृद्ध सांस्कृतिक विरासत और पारंपरिक रीति-रिवाजों की खोज करें';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'नसरुद्दीन होजा';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'नसरुद्दीन होजा तुर्की लोककथाओं में एक पौराणिक व्यक्ति हैं, जो अपनी बुद्धिमत्ता, हास्य और चतुर कहानियों के लिए जाने जाते हैं। 1208 में सिवरिहिसार में जन्मे, वे अक्शेहीर में रहते थे। उनकी कहानियां, हास्य और बुद्धिमत्ता से भरी हुई, पूरे तुर्की दुनिया में सुनाई जाती हैं। अंतर्राष्ट्रीय नसरुद्दीन होजा महोत्सव हर साल अक्शेहीर में आयोजित किया जाता है, इस प्रिय चरित्र का जश्न मनाते हुए।';

  @override
  String get turkeyGuideCherryFestivalTitle => 'चेरी महोत्सव';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'अक्शेहीर में चेरी महोत्सव तुर्की के सबसे प्रसिद्ध पारंपरिक त्योहारों में से एक है। हर साल जून में आयोजित, यह क्षेत्र की चेरी फसल का जश्न मनाता है। महोत्सव में सांस्कृतिक कार्यक्रम, लोक नृत्य, पारंपरिक संगीत और निश्चित रूप से, बहुत सारे स्वादिष्ट चेरी शामिल हैं। यह हजारों आगंतुकों को आकर्षित करता है और स्थानीय परंपराओं को प्रदर्शित करता है।';

  @override
  String get turkeyGuideHistoryTitle => 'ऐतिहासिक स्थल';

  @override
  String get turkeyGuideHistoryDescription =>
      'हजारों वर्षों में फैले तुर्की की समृद्ध ऐतिहासिक विरासत का अन्वेषण करें';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'प्राचीन शहर और स्मारक';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'तुर्की एफेसस, ट्रॉय, पेर्गामोन और हायरापोलिस सहित अनगिनत ऐतिहासिक स्थलों का घर है। ये प्राचीन शहर ग्रीक, रोमन और बीजान्टिन सभ्यताओं को दर्शाते हैं। देश में 19 यूनेस्को विश्व धरोहर स्थल हैं, जिनमें हागिया सोफिया, कप्पादोसिया, पामुक्कले और गोबेकली टेपे शामिल हैं, जो दुनिया के सबसे पुराने मंदिरों में से एक है, जो 12,000 साल पहले का है।';

  @override
  String get turkeyGuideGastronomyTitle => 'तुर्की व्यंजन';

  @override
  String get turkeyGuideGastronomyDescription =>
      'विश्व-प्रसिद्ध तुर्की व्यंजन के स्वादों का आनंद लें';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'तुर्की पाक विरासत';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'तुर्की व्यंजन दुनिया के सबसे विविध और स्वादिष्ट व्यंजनों में से एक है। केबाब और बकलावा से लेकर तुर्की मिठाई और तुर्की कॉफी तक, व्यंजन सदियों के सांस्कृतिक आदान-प्रदान को दर्शाता है। इस्तांबुल की सड़क खाना, क्षेत्रीय विशेषताएं, और मंटी, डोलमा और बोरेक जैसे पारंपरिक व्यंजन एक अविस्मरणीय पाक यात्रा प्रदान करते हैं। तुर्की कॉफी और चाय संस्कृति दैनिक जीवन का अभिन्न अंग हैं।';

  @override
  String get turkeyGuideFestivalsTitle => 'त्योहार और कार्यक्रम';

  @override
  String get turkeyGuideFestivalsDescription =>
      'तुर्की के जीवंत त्योहारों और सांस्कृतिक कार्यक्रमों का अनुभव करें';

  @override
  String get turkeyGuideFestivalsListTitle => 'प्रमुख त्योहार';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'तुर्की पूरे वर्ष कई त्योहारों की मेजबानी करता है: अंतर्राष्ट्रीय इस्तांबुल फिल्म महोत्सव, अंताल्या गोल्डन ऑरेंज फिल्म महोत्सव, कप्पादोसिया हॉट एयर बैलून महोत्सव, अंतर्राष्ट्रीय नसरुद्दीन होजा महोत्सव, अक्शेहीर में चेरी महोत्सव, कोन्या में मेवलाना व्हर्लिंग डर्विश महोत्सव, और कई क्षेत्रीय सांस्कृतिक उत्सव जो संगीत, नृत्य और पारंपरिक कलाओं को प्रदर्शित करते हैं।';

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
