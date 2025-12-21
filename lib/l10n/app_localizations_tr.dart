// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Ayarlar';

  @override
  String get wikiSettings => 'Wiki Ayarları';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps wiki dosyasının URL\'sini girin. Bu wiki içeriği ana sayfada gösterilecektir.';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => 'Kaydet';

  @override
  String get marketSettings => 'Market Ayarları';

  @override
  String get marketSettingsDescription =>
      'IIS static dizin URL\'sini girin. Bu dizinden APK ve IPA dosyaları listelenecek ve indirilebilecektir.';

  @override
  String get marketUrl => 'Market URL';

  @override
  String get notificationSettings => 'Bildirim Ayarları';

  @override
  String get controlFrequency => 'Kontrol Sıklığı';

  @override
  String get pollingInterval => 'Polling Interval (saniye)';

  @override
  String get pollingIntervalHelper => '5-300 saniye arası';

  @override
  String get fast => 'Hızlı (10s)';

  @override
  String get normal => 'Normal (15s)';

  @override
  String get slow => 'Yavaş (30s)';

  @override
  String get notificationTypes => 'Bildirim Türleri';

  @override
  String get notifyOnFirstAssignment => 'İlk Atamada Bildirim';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Sadece bana ilk atandığında bildirim gönder';

  @override
  String get notifyOnAllUpdates => 'Tüm Güncellemelerde Bildirim';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Bana atanmış work item\'lar güncellendiğinde bildirim gönder';

  @override
  String get notifyOnHotfixOnly => 'Sadece Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Sadece Hotfix tipindeki work item\'lar için bildirim';

  @override
  String get notifyOnGroupAssignments => 'Grup Atamalarında Bildirim';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Belirtilen gruplara atama yapıldığında bildirim gönder';

  @override
  String get groupName => 'Grup Adı';

  @override
  String get groupNameHint => 'Örn: Developers, QA Team';

  @override
  String get smartwatchNotifications => 'Akıllı Saat Bildirimleri';

  @override
  String get smartwatchNotificationsDescription =>
      'Akıllı saatlere bildirim gönder (sadece ilk atamada)';

  @override
  String get onCallMode => 'Nöbetçi Modu';

  @override
  String get onCallModeDescription =>
      'Nöbetçi modunda bildirimler daha agresif olur ve okunmayan bildirimler 3 kez yenilenir.';

  @override
  String get onCallModePhone => 'Telefon için Nöbetçi Modu';

  @override
  String get onCallModePhoneDescription => 'Telefonda agresif bildirimler';

  @override
  String get onCallModeWatch => 'Akıllı Saat için Nöbetçi Modu';

  @override
  String get onCallModeWatchDescription => 'Akıllı saatte agresif bildirimler';

  @override
  String get vacationMode => 'Tatil Modu';

  @override
  String get vacationModeDescription => 'Tatil modunda hiçbir bildirim gelmez.';

  @override
  String get vacationModePhone => 'Telefon için Tatil Modu';

  @override
  String get vacationModePhoneDescription =>
      'Telefonda bildirimleri devre dışı bırak';

  @override
  String get vacationModeWatch => 'Akıllı Saat için Tatil Modu';

  @override
  String get vacationModeWatchDescription =>
      'Akıllı saatte bildirimleri devre dışı bırak';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get collection => 'Collection';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get languageDescription =>
      'Tercih ettiğiniz dili seçin. Uygulama varsayılan olarak cihaz dilinizi kullanacaktır.';

  @override
  String get close => 'Kapat';

  @override
  String get settingsSaved => 'Ayarlar kaydedildi';

  @override
  String get invalidUrl => 'Geçerli bir URL girin';

  @override
  String get invalidMarketUrl =>
      'Geçerli bir Market URL girin (örn: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Polling interval 5-300 saniye arasında olmalıdır';

  @override
  String couldNotOpenLink(String error) {
    return 'Link açılamadı: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Henüz grup eklenmedi. Yukarıdan grup adı girerek ekleyin.';

  @override
  String get donate => 'Bağış Yap';

  @override
  String get donateDescription => 'Bu uygulamanın geliştirilmesini destekleyin';

  @override
  String get donateButton => 'Bana Bir Kahve Ismarla';

  @override
  String get closePopup => 'Kapat';

  @override
  String get cultureFigure_ibni_sina =>
      'İbn-i Sina - Tıp alanında \"El-Kanun fi\'t-Tıb\" adlı eseriyle Orta Çağ\'ın en önemli tıp ansiklopedisini yazdı. Avicenna olarak bilinen bu büyük bilim insanı, modern tıbbın temellerini attı.';

  @override
  String get cultureFigure_ali_kuscu =>
      'Ali Kuşçu - 15. yüzyılda matematik ve astronomi alanında çığır açan çalışmalar yaptı. Fatih Sultan Mehmet\'in davetiyle İstanbul\'a geldi ve medreselerde ders verdi.';

  @override
  String get cultureFigure_ulug_bey =>
      'Uluğ Bey - Timur İmparatorluğu\'nun hükümdarı ve büyük bir astronom. Semerkant\'ta kurduğu rasathanede yıldız katalogları hazırladı. \"Zic-i Uluğ Bey\" adlı eseri yüzyıllarca kullanıldı.';

  @override
  String get cultureFigure_farabi =>
      'Farabi - İslam felsefesinin kurucularından. \"İkinci Öğretmen\" unvanıyla anıldı. Müzik teorisi, mantık ve siyaset felsefesi alanlarında önemli eserler verdi.';

  @override
  String get cultureFigure_mimar_sinan =>
      'Mimar Sinan - Osmanlı İmparatorluğu\'nun baş mimarı. 300\'den fazla eser verdi. Süleymaniye ve Selimiye camileri gibi dünya mimarlık tarihine geçen eserler yarattı.';

  @override
  String get cultureFigure_evliya_celebi =>
      'Evliya Çelebi - 17. yüzyılın büyük seyyahı. \"Seyahatname\" adlı 10 ciltlik eseriyle Osmanlı coğrafyasını ve kültürünü kayıt altına aldı. Dünya seyahat edebiyatının önemli isimlerinden.';

  @override
  String get cultureFigure_katip_celebi =>
      'Katip Çelebi - Osmanlı\'nın önemli coğrafyacı ve tarihçisi. \"Cihannüma\" adlı coğrafya eseri ve \"Keşfü\'z-Zünun\" bibliyografya eseriyle tanınır.';

  @override
  String get cultureFigure_piri_reis =>
      'Piri Reis - Osmanlı denizcisi ve haritacı. 1513 yılında çizdiği dünya haritası, Amerika kıtasının en eski haritalarından biri olarak kabul edilir.';

  @override
  String get cultureFigure_cahit_arf =>
      'Cahit Arf - Türk matematikçi. \"Arf Sabiti\" ve \"Arf Halkaları\" teorisiyle matematik dünyasında önemli bir yer edindi. Modern cebir ve sayılar teorisine katkıları büyüktür.';

  @override
  String get cultureFigure_aziz_sancar =>
      'Aziz Sancar - 2015 Nobel Kimya Ödülü sahibi. DNA onarım mekanizmalarını keşfetti. Türkiye\'den Nobel alan ilk bilim insanı.';

  @override
  String get cultureHistoricalState_gokturk_kaganligi =>
      '🏹 Göktürk Kağanlığı (552-744) - Orta Asya\'da kurulan ilk Türk devleti. Türk adını kullanan ilk devlet. Doğu ve Batı olmak üzere ikiye ayrıldı.';

  @override
  String get cultureHistoricalState_osmanli =>
      '🌙 Osmanlı İmparatorluğu (1299-1922) - Üç kıtaya yayılan büyük imparatorluk. 600 yıldan fazla hüküm sürdü. İstanbul\'un fethi ile Orta Çağ\'ı kapattı, Yeni Çağ\'ı açtı.';

  @override
  String get cultureModernState_turkiye =>
      '🇹🇷 Türkiye Cumhuriyeti (1923-) - Mustafa Kemal Atatürk önderliğinde kurulan modern Türk devleti. Laik, demokratik ve sosyal hukuk devleti. NATO ve AB üyesi.';

  @override
  String get cultureHistoricalPlace_ayasofya =>
      'Ayasofya - Dünyanın en önemli mimari anıtlarından biri. 537\'de kilise olarak inşa edildi, 1453\'te camiye çevrildi, 1935\'te müze oldu. Şimdi tekrar cami.';

  @override
  String get cultureHistoricalPlace_cappadocia =>
      'Kapadokya - Peri bacaları ve yeraltı şehirleriyle eşsiz bölge. UNESCO Dünya Mirası. Sıcak hava balonu turlarıyla ünlü.';

  @override
  String get cultureHistoricalPlace_pamukkale =>
      'Pamukkale - Beyaz traverten teraslarıyla doğa harikası. Termal kaynaklar ve Hierapolis antik kenti. UNESCO Dünya Mirası.';

  @override
  String get cultureGeographical_agri_dagi =>
      'Ağrı Dağı - Türkiye\'nin en yüksek zirvesi, 5.137 metre. Efsaneye göre Nuh\'un Gemisi buraya indi. İran ve Ermenistan sınırında.';

  @override
  String get cultureGeographical_van_golu =>
      'Van Gölü - Türkiye\'nin en büyük gölü. 3.755 km² alanıyla tuzlu göl. Eşsiz ekosistemi ve Akdamar Adası ile ünlü.';

  @override
  String get cultureCultural_turkish_coffee =>
      'Türk Kahvesi - UNESCO\'nun Somut Olmayan Kültürel Mirası listesindeki geleneksel kahve hazırlama yöntemi. Türk lokumu ile servis edilir. Türk kültürünün önemli bir parçası.';

  @override
  String get cultureCultural_whirling_dervishes =>
      'Mevlevi Sema Ayini - Mevlevi tarikatının sema ayini. UNESCO Somut Olmayan Kültürel Mirası. Ruhsal yolculuğu ve Tanrı ile birliği temsil eder.';

  @override
  String get cultureGastronomy_kebab =>
      'Kebap - Türkiye\'nin en ünlü yemeklerinden biri. Adana kebabı, Urfa kebabı ve döner gibi çeşitli türleri var. Dünya çapında tanınan ızgara et yemekleri.';

  @override
  String get cultureGastronomy_baklava =>
      'Baklava - Yufka, fıstık ve şerbetle yapılan geleneksel Türk tatlısı. Özellikle Gaziantep baklavası ünlü. UNESCO Somut Olmayan Kültürel Mirası.';

  @override
  String get cultureGeology_cappadocia_volcanic =>
      'Kapadokya Volkanik Oluşumları - Milyonlarca yıl önce volkanik patlamalarla oluştu. Erozyon eşsiz peri bacalarını yarattı. Dünyanın en eşsiz jeolojik oluşumlarından biri.';

  @override
  String get cultureGeology_pamukkale_travertine =>
      'Pamukkale Travertenleri - Termal sulardan kalsiyum karbonat birikintileriyle oluşan beyaz teraslar. Binlerce yılda oluşan doğa harikası.';

  @override
  String get cultureSea_mediterranean =>
      'Akdeniz - Türkiye\'nin güney kıyıları. Turkuaz suları, güzel plajları ve tarihi yerleriyle ünlü. Popüler turizm destinasyonu.';

  @override
  String get cultureSea_aegean =>
      'Ege Denizi - Türkiye\'nin batı kıyıları. Berrak suları, adaları ve antik kentleriyle bilinir. Birçok önemli arkeolojik alana ev sahipliği yapar.';

  @override
  String get cultureMuseum_topkapi_museum =>
      'Topkapı Sarayı Müzesi - Osmanlı padişahlarının eski ikametgahı. Peygamber\'in emanetleri dahil önemli koleksiyonları barındırır. Dünyanın en önemli saray müzelerinden biri.';

  @override
  String get cultureMuseum_archaeological_museum =>
      'İstanbul Arkeoloji Müzesi - Çeşitli medeniyetlerden eserler barındırır. Dünyanın en önemli arkeoloji müzelerinden biri. Anadolu, Yunan, Roma ve Osmanlı dönemlerinden eserler içerir.';

  @override
  String get cultureHoliday_antalya =>
      'Antalya - Türkiye\'nin en popüler tatil destinasyonu. Güzel plajlar, tarihi yerler ve lüks tatil köyleri. Türk Rivierası olarak bilinir.';

  @override
  String get cultureHoliday_cappadocia =>
      'Kapadokya - Peri bacaları ve mağara otelleriyle eşsiz tatil destinasyonu. Sıcak hava balonu turlarıyla ünlü. UNESCO Dünya Mirası.';

  @override
  String get cultureHistoricalPlace_musul =>
      'Musul - Kuzey Irak\'ta tarihi Türk şehri. Petrol kaynakları ve kültürel mirası zengin. Asur ve Osmanlı anıtlarının ev sahibi. Güzel mimarisi ve tarihi önemi ile bilinir.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kerkük - Kuzey Irak\'ta önemli Türk şehri. Petrol rezervleri ve kültürel çeşitliliği zengin. Türkmen, Kürt ve Arap topluluklarının ev sahibi. Tarihi kalesi ve geleneksel mimarisi ile ünlü.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Karabağ - Kafkasya\'da tarihi Türk bölgesi. Güzel dağları, ormanları ve kültürel mirası ile bilinir. Tarih ve doğal güzellik açısından zengin. Türk kültürü için önemli bölge.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Selanik - Kuzey Yunanistan\'da tarihi Türk şehri. Mustafa Kemal Atatürk\'ün doğum yeri. Osmanlı mimarisi ve kültürel mirası zengin. Güzel sahil şeridi ve tarihi anıtları ile ünlü.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Kıbrıs - Türk tarihinin parçası olan güzel Akdeniz adası. Muhteşem plajları, antik kalıntıları ve kültürel mirası ile bilinir. Kuzey Kıbrıs bir Türk Cumhuriyeti\'dir. Tarih ve doğal güzellik açısından zengin.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rodos - Zengin Türk tarihine sahip güzel Yunan adası. Ortaçağ mimarisi, güzel plajları ve tarihi anıtları ile bilinir. Osmanlı camileri ve Türk hamamlarının ev sahibi. Türk denizcilik tarihinin önemli parçası.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Girit - Önemli Türk mirasına sahip en büyük Yunan adası. Güzel manzaraları, antik Minos uygarlığı ve Osmanlı mimarisi ile bilinir. Tarih ve kültürel çeşitlilik açısından zengin. Türk denizcilik tarihinde önemli bölge.';

  @override
  String get turkeyGuideTitle => 'Türkiye Gezi Rehberi';

  @override
  String get turkeyGuideSubtitle =>
      'Türkiye\'nin doğal güzelliklerini, kültürel mirasını, tarihi yerlerini ve festivallerini keşfedin';

  @override
  String get turkeyGuideNatureTitle => 'Doğa ve Coğrafya';

  @override
  String get turkeyGuideNatureDescription =>
      'Türkiye\'nin eşsiz doğal harikalarını ve coğrafi özelliklerini keşfedin';

  @override
  String get turkeyGuideLycianWayTitle => 'Likya Yolu';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Likya Yolu, dünyanın en iyi 10 uzun mesafe yürüyüş parkurundan biri olup, Türkiye\'nin Akdeniz kıyısı boyunca 540 km uzanır. Antik Likya şehirleri, güzel plajlar ve muhteşem dağ manzaralarından geçer. Parkur, nefes kesen manzaralar sunar ve Fethiye\'den Antalya\'ya kadar tarihi yerleri birbirine bağlar.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Kapadokya Peri Bacaları';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Kapadokya\'nın peri bacaları, milyonlarca yıl önce volkanik patlamalarla oluşan eşsiz kaya oluşumlarıdır. Bazıları 40 metre yüksekliğe ulaşan bu koni şeklindeki oluşumlar, büyülü bir manzara yaratır. Bölge, gün doğumunda sıcak hava balonu turları ile ünlüdür ve bu UNESCO Dünya Mirası\'nın muhteşem manzaralarını sunar.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Yeraltı Şehirleri';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Kapadokya, bazıları 8 kat derinliğe uzanan olağanüstü yeraltı şehirlerine ev sahipliği yapar. Derinkuyu ve Kaymaklı en ünlüleridir ve tüneller, odalar, kiliseler ve havalandırma sistemleri içerir. Bu şehirler binlerce insanı barındırabilir ve istilalar sırasında korunma amaçlı kullanılmıştır. İnanılmaz antik mühendisliği sergilerler.';

  @override
  String get turkeyGuideCultureTitle => 'Kültür ve Gelenekler';

  @override
  String get turkeyGuideCultureDescription =>
      'Türkiye\'nin zengin kültürel mirasını ve geleneksel geleneklerini keşfedin';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nasrettin Hoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nasrettin Hoca, bilgeliği, mizahı ve zeki hikayeleri ile bilinen Türk folklorunun efsanevi bir karakteridir. 1208\'de Sivrihisar\'da doğmuş, Akşehir\'de yaşamıştır. Mizah ve bilgelik dolu hikayeleri, tüm Türk dünyasında anlatılır. Uluslararası Nasrettin Hoca Festivali, her yıl Akşehir\'de düzenlenir ve bu sevilen karakteri kutlar.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Kiraz Festivali';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Akşehir Kiraz Festivali, Türkiye\'nin en ünlü geleneksel festivallerinden biridir. Her yıl Haziran ayında düzenlenir ve bölgenin kiraz hasadını kutlar. Festival, kültürel etkinlikler, halk dansları, geleneksel müzik ve elbette bol miktarda lezzetli kiraz içerir. Binlerce ziyaretçi çeker ve yerel gelenekleri sergiler.';

  @override
  String get turkeyGuideHistoryTitle => 'Tarihi Yerler';

  @override
  String get turkeyGuideHistoryDescription =>
      'Binlerce yıllık Türkiye\'nin zengin tarihi mirasını keşfedin';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Antik Şehirler ve Anıtlar';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Türkiye, Efes, Truva, Bergama ve Hierapolis dahil sayısız tarihi yere ev sahipliği yapar. Bu antik şehirler, Yunan, Roma ve Bizans medeniyetlerini sergiler. Ülke, Ayasofya, Kapadokya, Pamukkale ve 12.000 yıl öncesine dayanan dünyanın en eski tapınaklarından biri olan Göbekli Tepe dahil 19 UNESCO Dünya Mirası\'na sahiptir.';

  @override
  String get turkeyGuideGastronomyTitle => 'Türk Mutfağı';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Dünya çapında ünlü Türk mutfağının lezzetlerini tadın';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Türk Mutfak Mirası';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Türk mutfağı, dünyanın en çeşitli ve lezzetli mutfaklarından biridir. Kebap ve baklavadan Türk lokumu ve Türk kahvesine kadar, mutfak yüzyıllarca süren kültürel alışverişi yansıtır. İstanbul\'un sokak yemekleri, bölgesel özel yemekler ve mantı, dolma ve börek gibi geleneksel yemekler unutulmaz bir gastronomi yolculuğu sunar. Türk kahvesi ve çay kültürü günlük yaşamın ayrılmaz parçalarıdır.';

  @override
  String get turkeyGuideFestivalsTitle => 'Festivaller ve Etkinlikler';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Türkiye\'nin canlı festivallerini ve kültürel etkinliklerini deneyimleyin';

  @override
  String get turkeyGuideFestivalsListTitle => 'Önemli Festivaller';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Türkiye yıl boyunca sayısız festival düzenler: Uluslararası İstanbul Film Festivali, Antalya Altın Portakal Film Festivali, Kapadokya Sıcak Hava Balonu Festivali, Uluslararası Nasrettin Hoca Festivali, Akşehir Kiraz Festivali, Konya Mevlana Sema Töreni Festivali ve müzik, dans ve geleneksel sanatları sergileyen birçok bölgesel kültürel kutlama.';

  @override
  String get turkeyGuideHistoricalPlacesTitle => 'Tarihi Yerler';

  @override
  String get turkeyGuideHistoricalPlacesDescription =>
      'Türkiye\'nin zengin tarihi mirasını, antik şehirleri, anıtları ve önemli Türk topraklarını keşfedin';

  @override
  String get turkeyGuideHistoricalPlacesListTitle =>
      'Önemli Tarihi Yerler ve Türk Toprakları';

  @override
  String get turkeyGuideHistoricalPlacesListDescription =>
      'Türkiye ve Türk toprakları sayısız tarihi yere ev sahipliği yapar: Efes, Truva, Bergama, Hierapolis, Ayasofya, Topkapı Sarayı, Süleymaniye Camii, Selimiye Camii, Göbekli Tepe (12.000 yıllık), Çatalhöyük, Hattuşa, Nemrut Dağı, Sümela Manastırı, Akdamar Kilisesi, Anıtkabir. Önemli Türk toprakları: Musul - Kuzey Irak\'ta zengin petrol kaynakları ve kültürel mirasa sahip tarihi Türk şehri. Kerkük - Tarihi kalesiyle önemli Türk şehri. Karabağ - Güzel dağları ve ormanlarıyla Kafkasya\'da tarihi Türk bölgesi. Selanik - Mustafa Kemal Atatürk\'ün doğum yeri, Osmanlı mimarisi açısından zengin. Kıbrıs - Güzel Akdeniz adası, Kuzey Kıbrıs bir Türk Cumhuriyeti. Rodos - Zengin Türk tarihi ve Osmanlı anıtlarıyla ada. Girit - Önemli Türk mirası ve Osmanlı mimarisiyle en büyük Yunan adası.';

  @override
  String get turkeyGuideSeasTitle => 'Denizler ve Kıyılar';

  @override
  String get turkeyGuideSeasDescription =>
      'Türkiye\'nin güzel denizlerini, kıyılarını ve denizcilik mirasını keşfedin';

  @override
  String get turkeyGuideSeasListTitle => 'Türk Denizleri ve Körfezleri';

  @override
  String get turkeyGuideSeasListDescription =>
      'Türkiye dört denizle çevrilidir: Akdeniz - Turkuaz suları, güzel plajları ve tarihi yerleriyle ünlü. Türk Rivierası olarak bilinir. Ege Denizi - Berrak suları, adaları ve antik şehirleriyle bilinir. Karadeniz - Doğal güzellik ve kültürel miras açısından zengin. Marmara Denizi - Karadeniz ve Ege Denizi\'ni birleştirir. Boğaziçi - Avrupa ve Asya\'yı birleştiren ikonik boğaz. Çanakkale Boğazı - Zengin denizcilik tarihiyle tarihi boğaz. Güzel körfezler: Antalya Körfezi, İzmir Körfezi, Gökova Körfezi, Fethiye Körfezi, Kaş Körfezi, Kekova, Datça Yarımadası, Bodrum Yarımadası ve Çeşme Yarımadası.';

  @override
  String get turkeyGuideMuseumsTitle => 'Müzeler';

  @override
  String get turkeyGuideMuseumsDescription =>
      'Türkiye\'nin dünya standartlarındaki müzelerini ve kültürel koleksiyonlarını keşfedin';

  @override
  String get turkeyGuideMuseumsListTitle => 'Önemli Müzeler';

  @override
  String get turkeyGuideMuseumsListDescription =>
      'Türkiye dünya çapında ünlü müzelerin evidir: Topkapı Sarayı Müzesi - Osmanlı sultanlarının eski ikametgahı, Peygamber\'in emanetlerini barındırır. Ayasofya Müzesi - Dünyanın en önemli mimari anıtlarından biri. İstanbul Arkeoloji Müzesi - Çeşitli medeniyetlerden eserler barındırır. Türk ve İslam Eserleri Müzesi, Pera Müzesi, Sakıp Sabancı Müzesi, İstanbul Modern, Anıtkabir Atatürk Müzesi, Anadolu Medeniyetleri Müzesi, Göreme Açık Hava Müzesi, Zeugma Mozaik Müzesi, Antakya Mozaik Müzesi, Hierapolis Arkeoloji Müzesi, Efes Müzesi, Bodrum Sualtı Arkeoloji Müzesi, Truva Müzesi, Gaziantep Zeugma Müzesi, Konya Mevlana Müzesi, Ankara Etnografya Müzesi ve Bursa Türk İslam Eserleri Müzesi.';

  @override
  String get turkeyGuideGeologyTitle => 'Jeolojik Özellikler';

  @override
  String get turkeyGuideGeologyDescription =>
      'Türkiye\'nin eşsiz jeolojik oluşumlarını ve doğal harikalarını keşfedin';

  @override
  String get turkeyGuideGeologyListTitle => 'Jeolojik Harikalar';

  @override
  String get turkeyGuideGeologyListDescription =>
      'Türkiye\'nin jeolojik çeşitliliği dikkat çekicidir: Kapadokya Volkanik Oluşumları - Milyonlarca yıl önce volkanik patlamalarla oluşan eşsiz peri bacaları. Pamukkale Travertenleri - Termal sulardan kalsiyum karbonat birikintileriyle oluşan beyaz teraslar. Ağrı Dağı - 5.137 metre yüksekliğinde Türkiye\'nin en yüksek zirvesi, Nuh\'un Gemisi\'nin efsanevi iniş yeri. Erciyes Volkanı, Nemrut Volkanı, Hasandağ, Karapınar Volkanik Alanı, Kula Volkanik Parkı. Tuz Gölü\'ndeki tuz yatakları. Van Gölü çevresindeki volkanik oluşumlar. Önemli deltalar: Çukurova Deltası, Bafra Deltası, Kızılırmak Deltası, Yeşilırmak Deltası, Göksu Deltası, Sakarya Deltası. Önemli fay hatları: Marmara Fayı, Kuzey Anadolu Fayı, Doğu Anadolu Fayı ve Tuz Gölü Fayı.';

  @override
  String get turkeyGuideHolidayDestinationsTitle => 'Tatil Yerleri';

  @override
  String get turkeyGuideHolidayDestinationsDescription =>
      'Türkiye\'nin en güzel tatil yerlerini ve tatil köylerini keşfedin';

  @override
  String get turkeyGuideHolidayDestinationsListTitle => 'Popüler Tatil Yerleri';

  @override
  String get turkeyGuideHolidayDestinationsListDescription =>
      'Türkiye çeşitli tatil deneyimleri sunar: Akdeniz Kıyısı - Antalya (Türk Rivierası), Bodrum, Marmaris, Fethiye, Kaş, Kalkan, Ölüdeniz, Datça. Ege Kıyısı - Çeşme, Alaçatı, Kuşadası, Didim. Doğal Harikalar - Pamukkale (beyaz travertenler), Kapadokya (peri bacaları ve mağara otelleri). Dağ Tatil Yerleri - Uludağ, Palandöken, Kartalkaya, Erciyes (kayak). Kültürel Yerler - Safranbolu (Osmanlı mimarisi), Beypazarı (geleneksel evler), Amasra (Karadeniz kıyısı). Karadeniz - Trabzon, Rize. Göller - Sapanca, Abant. Her yer plaj tatillerinden kültürel turlara, kış sporlarından termal kaynaklara kadar benzersiz deneyimler sunar.';

  @override
  String get turkeyGuideBeachesTitle => 'Güzel Sahiller & Kıyılar';

  @override
  String get turkeyGuideBeachesDescription =>
      'Türkiye\'nin muhteşem sahillerini ve el değmemiş kıyılarını keşfedin';

  @override
  String get turkeyGuideBeachesListTitle => 'Ünlü Türk Sahilleri';

  @override
  String get turkeyGuideBeachesListDescription =>
      'Türkiye dünyanın en güzel sahillerinden bazılarına sahiptir: Ölüdeniz (Mavi Lagün) - Turkuaz suları ve yamaç paraşütü ile ünlü. Kaputaş Plajı - Kaş ve Kalkan arasında kristal berraklığında suları olan muhteşem plaj. Patara Plajı - 18 km uzunluğunda kumlu plaj, Akdeniz\'in en uzunlarından biri. İztuzu Plajı - Caretta caretta deniz kaplumbağaları için korunan yuvalama alanı. Kelebekler Vadisi - Sadece tekne ile erişilebilen, gizli bir cennet. Kleopatra Plajı (Alanya) - Altın kumlu efsanevi plaj. Çıralı Plajı - Yanartaş\'ın ebedi alevleri ile bilinir. Kabak Koyu - Doğa ile çevrili tenha plaj. Her plaj benzersiz güzellik ve deneyimler sunar.';

  @override
  String get turkeyGuideForestsTitle => 'Ormanlar & Doğa Parkları';

  @override
  String get turkeyGuideForestsDescription =>
      'Türkiye\'nin yemyeşil ormanlarını ve korunan doğal alanlarını keşfedin';

  @override
  String get turkeyGuideForestsListTitle => 'Türk Ormanları & Milli Parklar';

  @override
  String get turkeyGuideForestsListDescription =>
      'Türkiye ormanlar ve doğa parkları açısından zengindir: Belgrad Ormanı (İstanbul) - Yürüyüş parkurları ve piknik alanları olan antik orman. Yedigöller Milli Parkı - Yoğun ormanlarla çevrili güzel göller. Kazdağı Milli Parkı - İda Dağı\'na ev sahipliği yapan, biyolojik çeşitlilik açısından zengin. Köprülü Kanyon Milli Parkı - Antik Roma köprüsü olan muhteşem kanyon. Kaçkar Dağları Milli Parkı - Alpin çayırlar ve el değmemiş ormanlar. Termessos Milli Parkı - Doğa parkı içinde antik kent. Dilek Yarımadası-Büyük Menderes Deltası Milli Parkı - Kıyı ormanları ve sulak alanlar. Aladağlar Milli Parkı - Dağ ormanları ve yaban hayatı. Bu alanlar yürüyüş, kampçılık ve doğa gözlemi fırsatları sunar.';
}
