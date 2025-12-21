// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Einstellungen';

  @override
  String get wikiSettings => 'Wiki-Einstellungen';

  @override
  String get wikiSettingsDescription =>
      'Geben Sie die URL der Azure DevOps Wiki-Datei ein. Dieser Wiki-Inhalt wird auf der Startseite angezeigt.';

  @override
  String get wikiUrl => 'Wiki-URL';

  @override
  String get save => 'Speichern';

  @override
  String get marketSettings => 'Markt-Einstellungen';

  @override
  String get marketSettingsDescription =>
      'Geben Sie die URL des IIS-Statikverzeichnisses ein. APK- und IPA-Dateien werden aus diesem Verzeichnis aufgelistet und heruntergeladen.';

  @override
  String get marketUrl => 'Markt-URL';

  @override
  String get notificationSettings => 'Benachrichtigungseinstellungen';

  @override
  String get controlFrequency => 'Kontrollhäufigkeit';

  @override
  String get pollingInterval => 'Abfrageintervall (Sekunden)';

  @override
  String get pollingIntervalHelper => 'Zwischen 5-300 Sekunden';

  @override
  String get fast => 'Schnell (10s)';

  @override
  String get normal => 'Normal (15s)';

  @override
  String get slow => 'Langsam (30s)';

  @override
  String get notificationTypes => 'Benachrichtigungstypen';

  @override
  String get notifyOnFirstAssignment => 'Benachrichtigung bei Erster Zuweisung';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Benachrichtigung nur senden, wenn mir zum ersten Mal zugewiesen';

  @override
  String get notifyOnAllUpdates =>
      'Benachrichtigung bei Allen Aktualisierungen';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Benachrichtigung senden, wenn mir zugewiesene Arbeitselemente aktualisiert werden';

  @override
  String get notifyOnHotfixOnly => 'Nur Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Benachrichtigung nur für Arbeitselemente vom Typ Hotfix';

  @override
  String get notifyOnGroupAssignments =>
      'Benachrichtigung bei Gruppen-Zuweisungen';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Benachrichtigung senden, wenn Zuweisungen an angegebene Gruppen vorgenommen werden';

  @override
  String get groupName => 'Gruppenname';

  @override
  String get groupNameHint => 'Z.B.: Entwickler, QA-Team';

  @override
  String get smartwatchNotifications => 'Smartwatch-Benachrichtigungen';

  @override
  String get smartwatchNotificationsDescription =>
      'Benachrichtigungen an Smartwatches senden (nur bei erster Zuweisung)';

  @override
  String get onCallMode => 'Bereitschaftsmodus';

  @override
  String get onCallModeDescription =>
      'Im Bereitschaftsmodus werden Benachrichtigungen aggressiver und ungelesene Benachrichtigungen werden 3-mal aktualisiert.';

  @override
  String get onCallModePhone => 'Bereitschaftsmodus für Telefon';

  @override
  String get onCallModePhoneDescription =>
      'Aggressive Benachrichtigungen auf dem Telefon';

  @override
  String get onCallModeWatch => 'Bereitschaftsmodus für Smartwatch';

  @override
  String get onCallModeWatchDescription =>
      'Aggressive Benachrichtigungen auf der Smartwatch';

  @override
  String get vacationMode => 'Urlaubsmodus';

  @override
  String get vacationModeDescription =>
      'Im Urlaubsmodus werden keine Benachrichtigungen empfangen.';

  @override
  String get vacationModePhone => 'Urlaubsmodus für Telefon';

  @override
  String get vacationModePhoneDescription =>
      'Benachrichtigungen auf dem Telefon deaktivieren';

  @override
  String get vacationModeWatch => 'Urlaubsmodus für Smartwatch';

  @override
  String get vacationModeWatchDescription =>
      'Benachrichtigungen auf der Smartwatch deaktivieren';

  @override
  String get serverUrl => 'Server-URL';

  @override
  String get collection => 'Sammlung';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Sprache Auswählen';

  @override
  String get languageDescription =>
      'Wählen Sie Ihre bevorzugte Sprache. Die App verwendet standardmäßig die Sprache Ihres Geräts.';

  @override
  String get close => 'Schließen';

  @override
  String get settingsSaved => 'Einstellungen gespeichert';

  @override
  String get invalidUrl => 'Bitte geben Sie eine gültige URL ein';

  @override
  String get invalidMarketUrl =>
      'Bitte geben Sie eine gültige Markt-URL ein (z.B: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Abfrageintervall muss zwischen 5-300 Sekunden liegen';

  @override
  String couldNotOpenLink(String error) {
    return 'Link konnte nicht geöffnet werden: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Noch keine Gruppen hinzugefügt. Fügen Sie oben einen Gruppennamen hinzu.';

  @override
  String get donate => 'Spenden';

  @override
  String get donateDescription => 'Unterstützen Sie die Entwicklung dieser App';

  @override
  String get donateButton => 'Kaufen Sie mir einen Kaffee';

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
      'Mosul - Historische türkische Stadt im Norden des Irak. Reich an Ölressourcen und kulturellem Erbe. Heimat antiker assyrischer und osmanischer Denkmäler. Bekannt für seine schöne Architektur und historische Bedeutung.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kirkuk - Wichtige türkische Stadt im Norden des Irak. Reich an Ölreserven und kultureller Vielfalt. Heimat turkmenischer, kurdischer und arabischer Gemeinschaften. Bekannt für seine historische Zitadelle und traditionelle Architektur.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Karabach - Historische türkische Region im Kaukasus. Bekannt für seine schönen Berge, Wälder und kulturelles Erbe. Reich an Geschichte und natürlicher Schönheit. Wichtige Region für die türkische Kultur.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Thessaloniki - Historische türkische Stadt im Norden Griechenlands. Geburtsort von Mustafa Kemal Atatürk. Reich an osmanischer Architektur und kulturellem Erbe. Bekannt für seine schöne Uferpromenade und historische Denkmäler.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Zypern - Schöne Mittelmeerinsel, Teil der türkischen Geschichte. Bekannt für seine atemberaubenden Strände, antiken Ruinen und kulturelles Erbe. Nordzypern ist eine türkische Republik. Reich an Geschichte und natürlicher Schönheit.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rhodos - Schöne griechische Insel mit reicher türkischer Geschichte. Bekannt für ihre mittelalterliche Architektur, schöne Strände und historische Denkmäler. Heimat osmanischer Moscheen und türkischer Bäder. Wichtiger Teil der türkischen Seefahrtsgeschichte.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Kreta - Größte griechische Insel mit bedeutendem türkischem Erbe. Bekannt für ihre schönen Landschaften, antike minoische Zivilisation und osmanische Architektur. Reich an Geschichte und kultureller Vielfalt. Wichtige Region in der türkischen Seefahrtsgeschichte.';

  @override
  String get turkeyGuideTitle => 'Türkei Reiseführer';

  @override
  String get turkeyGuideSubtitle =>
      'Entdecken Sie die natürliche Schönheit, das kulturelle Erbe, historische Stätten und Feste der Türkei';

  @override
  String get turkeyGuideNatureTitle => 'Natur & Geographie';

  @override
  String get turkeyGuideNatureDescription =>
      'Erkunden Sie die einzigartigen Naturwunder und geografischen Besonderheiten der Türkei';

  @override
  String get turkeyGuideLycianWayTitle => 'Lykischer Weg';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Der Lykische Weg ist einer der 10 besten Fernwanderwege der Welt und erstreckt sich über 540 km entlang der türkischen Mittelmeerküste. Er führt durch antike lykische Städte, schöne Strände und atemberaubende Berglandschaften. Der Weg bietet atemberaubende Aussichten und verbindet historische Stätten von Fethiye bis Antalya.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Feenkamine von Kappadokien';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Die Feenkamine von Kappadokien sind einzigartige Felsformationen, die vor Millionen von Jahren durch Vulkanausbrüche entstanden sind. Diese kegelförmigen Formationen, von denen einige 40 Meter hoch sind, schaffen eine magische Landschaft. Die Region ist berühmt für Heißluftballonfahrten bei Sonnenaufgang, die spektakuläre Aussichten auf diese UNESCO-Welterbestätte bieten.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Unterirdische Städte';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Kappadokien beherbergt bemerkenswerte unterirdische Städte, von denen einige 8 Ebenen tief reichen. Derinkuyu und Kaymaklı sind die berühmtesten, mit Tunneln, Räumen, Kirchen und Belüftungssystemen. Diese Städte konnten Tausende von Menschen beherbergen und wurden zum Schutz während Invasionen verwendet. Sie zeigen unglaubliche antike Ingenieurskunst.';

  @override
  String get turkeyGuideCultureTitle => 'Kultur & Traditionen';

  @override
  String get turkeyGuideCultureDescription =>
      'Entdecken Sie das reiche kulturelle Erbe und die traditionellen Bräuche der Türkei';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nasreddin Hoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nasreddin Hoca ist eine legendäre Figur im türkischen Volksmund, bekannt für seine Weisheit, seinen Humor und seine klugen Geschichten. Geboren 1208 in Sivrihisar, lebte er in Akşehir. Seine Geschichten, voller Humor und Weisheit, werden in der gesamten türkischen Welt erzählt. Das Internationale Nasreddin Hoca Festival wird jährlich in Akşehir abgehalten und feiert diese beliebte Figur.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Kirschfest';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Das Kirschfest in Akşehir ist eines der berühmtesten traditionellen Feste der Türkei. Es wird jährlich im Juni abgehalten und feiert die Kirschernte der Region. Das Festival bietet kulturelle Veranstaltungen, Volkstänze, traditionelle Musik und natürlich viele köstliche Kirschen. Es zieht Tausende von Besuchern an und zeigt lokale Traditionen.';

  @override
  String get turkeyGuideHistoryTitle => 'Historische Stätten';

  @override
  String get turkeyGuideHistoryDescription =>
      'Erkunden Sie das reiche historische Erbe der Türkei, das sich über Tausende von Jahren erstreckt';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Antike Städte & Denkmäler';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Die Türkei beherbergt unzählige historische Stätten, darunter Ephesus, Troja, Pergamon und Hierapolis. Diese antiken Städte zeigen griechische, römische und byzantinische Zivilisationen. Das Land hat 19 UNESCO-Welterbestätten, darunter die Hagia Sophia, Kappadokien, Pamukkale und Göbekli Tepe, einer der ältesten Tempel der Welt, der 12.000 Jahre zurückreicht.';

  @override
  String get turkeyGuideGastronomyTitle => 'Türkische Küche';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Genießen Sie die Aromen der weltberühmten türkischen Küche';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Türkisches kulinarisches Erbe';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Die türkische Küche ist eine der vielfältigsten und köstlichsten der Welt. Von Kebabs und Baklava bis hin zu türkischen Süßigkeiten und türkischem Kaffee spiegelt die Küche jahrhundertelangen kulturellen Austausch wider. Istanbuls Street Food, regionale Spezialitäten und traditionelle Gerichte wie Mantı, Dolma und Börek bieten eine unvergessliche kulinarische Reise. Türkischer Kaffee und Teekultur sind ein integraler Bestandteil des täglichen Lebens.';

  @override
  String get turkeyGuideFestivalsTitle => 'Feste & Veranstaltungen';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Erleben Sie die lebendigen Feste und kulturellen Veranstaltungen der Türkei';

  @override
  String get turkeyGuideFestivalsListTitle => 'Hauptfeste';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Die Türkei veranstaltet das ganze Jahr über zahlreiche Feste: Internationales Istanbul Film Festival, Antalya Golden Orange Film Festival, Kappadokien Heißluftballon Festival, Internationales Nasreddin Hoca Festival, Kirschfest in Akşehir, Mevlana Wirbelnde Derwische Festival in Konya und viele regionale kulturelle Feiern, die Musik, Tanz und traditionelle Künste zeigen.';

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
