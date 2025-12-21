// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => '設定';

  @override
  String get wikiSettings => 'Wiki設定';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps wikiファイルのURLを入力してください。このwikiコンテンツはホームページに表示されます。';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => '保存';

  @override
  String get marketSettings => 'マーケット設定';

  @override
  String get marketSettingsDescription =>
      'IIS静的ディレクトリのURLを入力してください。APKおよびIPAファイルはこのディレクトリから一覧表示され、ダウンロード可能になります。';

  @override
  String get marketUrl => 'マーケットURL';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get controlFrequency => '制御頻度';

  @override
  String get pollingInterval => 'ポーリング間隔（秒）';

  @override
  String get pollingIntervalHelper => '5-300秒の間';

  @override
  String get fast => '高速（10秒）';

  @override
  String get normal => '通常（15秒）';

  @override
  String get slow => '低速（30秒）';

  @override
  String get notificationTypes => '通知タイプ';

  @override
  String get notifyOnFirstAssignment => '初回割り当て時の通知';

  @override
  String get notifyOnFirstAssignmentDescription => '初めて割り当てられた時のみ通知を送信';

  @override
  String get notifyOnAllUpdates => 'すべての更新時の通知';

  @override
  String get notifyOnAllUpdatesDescription => '割り当てられた作業項目が更新された時に通知を送信';

  @override
  String get notifyOnHotfixOnly => 'Hotfixのみ';

  @override
  String get notifyOnHotfixOnlyDescription => 'Hotfixタイプの作業項目のみ通知';

  @override
  String get notifyOnGroupAssignments => 'グループ割り当て時の通知';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      '指定されたグループに割り当てが行われた時に通知を送信';

  @override
  String get groupName => 'グループ名';

  @override
  String get groupNameHint => '例：開発者、QAチーム';

  @override
  String get smartwatchNotifications => 'スマートウォッチ通知';

  @override
  String get smartwatchNotificationsDescription => 'スマートウォッチに通知を送信（初回割り当て時のみ）';

  @override
  String get onCallMode => 'オンコールモード';

  @override
  String get onCallModeDescription => 'オンコールモードでは、通知がより積極的になり、未読の通知が3回更新されます。';

  @override
  String get onCallModePhone => '電話用オンコールモード';

  @override
  String get onCallModePhoneDescription => '電話での積極的な通知';

  @override
  String get onCallModeWatch => 'スマートウォッチ用オンコールモード';

  @override
  String get onCallModeWatchDescription => 'スマートウォッチでの積極的な通知';

  @override
  String get vacationMode => '休暇モード';

  @override
  String get vacationModeDescription => '休暇モードでは通知を受信しません。';

  @override
  String get vacationModePhone => '電話用休暇モード';

  @override
  String get vacationModePhoneDescription => '電話での通知を無効化';

  @override
  String get vacationModeWatch => 'スマートウォッチ用休暇モード';

  @override
  String get vacationModeWatchDescription => 'スマートウォッチでの通知を無効化';

  @override
  String get serverUrl => 'サーバーURL';

  @override
  String get collection => 'コレクション';

  @override
  String get language => '言語';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get languageDescription => '希望する言語を選択してください。アプリはデフォルトでデバイスの言語を使用します。';

  @override
  String get close => '閉じる';

  @override
  String get settingsSaved => '設定が保存されました';

  @override
  String get invalidUrl => '有効なURLを入力してください';

  @override
  String get invalidMarketUrl =>
      '有効なマーケットURLを入力してください（例：https://devops.higgscloud.com/_static/market/）';

  @override
  String get invalidPollingInterval => 'ポーリング間隔は5-300秒の間である必要があります';

  @override
  String couldNotOpenLink(String error) {
    return 'リンクを開けませんでした: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded => 'まだグループが追加されていません。上からグループ名を追加してください。';

  @override
  String get donate => '寄付';

  @override
  String get donateDescription => 'このアプリの開発をサポートしてください';

  @override
  String get donateButton => 'コーヒーを一杯';

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
      'モスル - イラク北部の歴史的なトルコの都市。石油資源と文化的遺産に富む。古代アッシリアとオスマン帝国の記念碑の故郷。美しい建築と歴史的重要性で知られる。';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'キルクーク - イラク北部の重要なトルコの都市。石油埋蔵量と文化的多様性に富む。トルクメン、クルド、アラブのコミュニティの故郷。歴史的な城塞と伝統的な建築で知られる。';

  @override
  String get cultureHistoricalPlace_karabag =>
      'カラバフ - コーカサス地方の歴史的なトルコ地域。美しい山々、森、文化的遺産で知られる。歴史と自然の美しさに富む。トルコ文化にとって重要な地域。';

  @override
  String get cultureHistoricalPlace_selanik =>
      'テッサロニキ - ギリシャ北部の歴史的なトルコの都市。ムスタファ・ケマル・アタテュルクの出生地。オスマン建築と文化的遺産に富む。美しいウォーターフロントと歴史的記念碑で知られる。';

  @override
  String get cultureHistoricalPlace_kibris =>
      'キプロス - トルコの歴史の一部である美しい地中海の島。息を呑むようなビーチ、古代の遺跡、文化的遺産で知られる。北キプロスはトルコ共和国。歴史と自然の美しさに富む。';

  @override
  String get cultureHistoricalPlace_rodos =>
      'ロードス - 豊かなトルコの歴史を持つ美しいギリシャの島。中世の建築、美しいビーチ、歴史的記念碑で知られる。オスマン帝国のモスクとトルコの浴場の故郷。トルコの海事史の重要な部分。';

  @override
  String get cultureHistoricalPlace_girit =>
      'クレタ - 重要なトルコの遺産を持つ最大のギリシャの島。美しい風景、古代ミノア文明、オスマン建築で知られる。歴史と文化的多様性に富む。トルコの海事史における重要な地域。';

  @override
  String get turkeyGuideTitle => 'トルコ旅行ガイド';

  @override
  String get turkeyGuideSubtitle => 'トルコの自然の美しさ、文化的遺産、歴史的遺跡、祭りを発見する';

  @override
  String get turkeyGuideNatureTitle => '自然と地理';

  @override
  String get turkeyGuideNatureDescription => 'トルコのユニークな自然の驚異と地理的特徴を探索する';

  @override
  String get turkeyGuideLycianWayTitle => 'リキアン・ウェイ';

  @override
  String get turkeyGuideLycianWayDescription =>
      'リキアン・ウェイは世界のトップ10の長距離ハイキングトレイルの一つで、トルコの地中海沿岸に沿って540 km伸びています。古代リキアの都市、美しいビーチ、息を呑むような山の風景を通り抜けます。トレイルは息を呑むような景色を提供し、フェティエからアンタルヤまでの歴史的遺跡を結んでいます。';

  @override
  String get turkeyGuideFairyChimneysTitle => 'カッパドキアの妖精の煙突';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'カッパドキアの妖精の煙突は、数百万年前の火山噴火によって作られたユニークな岩の形成物です。高さ40メートルに達するものもあるこれらの円錐形の形成物は、魔法のような風景を作り出します。この地域は日の出時の熱気球ツアーで有名で、このユネスコ世界遺産の壮大な景色を提供します。';

  @override
  String get turkeyGuideUndergroundCityTitle => '地下都市';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'カッパドキアは、一部は8階層の深さまで伸びる注目すべき地下都市の本拠地です。デリンクユとカイマクルが最も有名で、トンネル、部屋、教会、換気システムがあります。これらの都市は数千人を収容でき、侵略時の保護に使用されました。信じられないほどの古代の工学を示しています。';

  @override
  String get turkeyGuideCultureTitle => '文化と伝統';

  @override
  String get turkeyGuideCultureDescription => 'トルコの豊かな文化的遺産と伝統的な習慣を発見する';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'ナスレッディン・ホジャ';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'ナスレッディン・ホジャはトルコの民間伝承における伝説的人物で、その知恵、ユーモア、巧妙な物語で知られています。1208年にシヴリヒサルで生まれ、アクシェヒルで暮らしました。ユーモアと知恵に満ちた彼の物語は、トルコ世界全体で語られています。国際ナスレッディン・ホジャ祭は毎年アクシェヒルで開催され、この愛されるキャラクターを祝います。';

  @override
  String get turkeyGuideCherryFestivalTitle => '桜祭り';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'アクシェヒルの桜祭りは、トルコで最も有名な伝統的な祭りの一つです。毎年6月に開催され、地域の桜の収穫を祝います。祭りには文化的イベント、フォークダンス、伝統音楽、そしてもちろん、たくさんの美味しい桜が含まれます。数千人の訪問者を引き付け、地元の伝統を紹介します。';

  @override
  String get turkeyGuideHistoryTitle => '歴史的遺跡';

  @override
  String get turkeyGuideHistoryDescription => '数千年にわたるトルコの豊かな歴史的遺産を探索する';

  @override
  String get turkeyGuideHistoricalSitesTitle => '古代都市と記念碑';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'トルコはエフェソス、トロイ、ペルガモン、ヒエラポリスを含む無数の歴史的遺跡の本拠地です。これらの古代都市は、ギリシャ、ローマ、ビザンチンの文明を示しています。国には19のユネスコ世界遺産があり、ハギア・ソフィア、カッパドキア、パムッカレ、12,000年前にさかのぼる世界最古の寺院の一つであるギョベクリ・テペが含まれます。';

  @override
  String get turkeyGuideGastronomyTitle => 'トルコ料理';

  @override
  String get turkeyGuideGastronomyDescription => '世界的に有名なトルコ料理の味を味わう';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'トルコ料理の遺産';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'トルコ料理は世界で最も多様で美味しい料理の一つです。ケバブやバクラヴァからトルコのデリシャスやトルココーヒーまで、料理は何世紀にもわたる文化交流を反映しています。イスタンブールのストリートフード、地域の特産品、マントゥ、ドルマ、ボレクなどの伝統的な料理は、忘れられない料理の旅を提供します。トルココーヒーと紅茶文化は日常生活の不可欠な部分です。';

  @override
  String get turkeyGuideFestivalsTitle => '祭りとイベント';

  @override
  String get turkeyGuideFestivalsDescription => 'トルコの活気ある祭りと文化的イベントを体験する';

  @override
  String get turkeyGuideFestivalsListTitle => '主要な祭り';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'トルコは一年を通じて数多くの祭りを開催しています：国際イスタンブール映画祭、アンタルヤゴールデンオレンジ映画祭、カッパドキア熱気球祭、国際ナスレッディン・ホジャ祭、アクシェヒルの桜祭り、コンヤのメヴラーナ旋回ダーヴィッシュ祭、そして音楽、ダンス、伝統芸術を紹介する多くの地域文化祭典。';

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
