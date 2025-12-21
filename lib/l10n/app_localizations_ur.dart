// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'ترتیبات';

  @override
  String get wikiSettings => 'ویکی ترتیبات';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps ویکی فائل کا URL درج کریں۔ یہ ویکی مواد ہوم پیج پر دکھایا جائے گا۔';

  @override
  String get wikiUrl => 'ویکی URL';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get marketSettings => 'مارکیٹ ترتیبات';

  @override
  String get marketSettingsDescription =>
      'IIS static directory کا URL درج کریں۔ APK اور IPA فائلیں اس directory سے فہرست میں آئیں گی اور ڈاؤن لوڈ کی جا سکیں گی۔';

  @override
  String get marketUrl => 'مارکیٹ URL';

  @override
  String get notificationSettings => 'اطلاعات کی ترتیبات';

  @override
  String get controlFrequency => 'کنٹرول کی تعدد';

  @override
  String get pollingInterval => 'پولنگ وقفہ (سیکنڈ)';

  @override
  String get pollingIntervalHelper => '5-300 سیکنڈ کے درمیان';

  @override
  String get fast => 'تیز (10s)';

  @override
  String get normal => 'عام (15s)';

  @override
  String get slow => 'سست (30s)';

  @override
  String get notificationTypes => 'اطلاعات کی اقسام';

  @override
  String get notifyOnFirstAssignment => 'پہلی تفویض پر اطلاع';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'صرف پہلی بار مجھے تفویض ہونے پر اطلاع بھیجیں';

  @override
  String get notifyOnAllUpdates => 'تمام اپ ڈیٹس پر اطلاع';

  @override
  String get notifyOnAllUpdatesDescription =>
      'میرے نام تفویض کردہ کام کے آئٹمز اپ ڈیٹ ہونے پر اطلاع بھیجیں';

  @override
  String get notifyOnHotfixOnly => 'صرف Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'صرف Hotfix قسم کے کام کے آئٹمز کے لیے اطلاع';

  @override
  String get notifyOnGroupAssignments => 'گروپ تفویضات پر اطلاع';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'مخصوص گروپس کو تفویضات ہونے پر اطلاع بھیجیں';

  @override
  String get groupName => 'گروپ کا نام';

  @override
  String get groupNameHint => 'مثال: ڈویلپرز، QA ٹیم';

  @override
  String get smartwatchNotifications => 'اسمارٹ واچ اطلاعات';

  @override
  String get smartwatchNotificationsDescription =>
      'اسمارٹ واچز کو اطلاعات بھیجیں (صرف پہلی تفویض پر)';

  @override
  String get onCallMode => 'ڈیوٹی موڈ';

  @override
  String get onCallModeDescription =>
      'ڈیوٹی موڈ میں، اطلاعات زیادہ جارحانہ ہو جاتی ہیں اور ناپڑھی اطلاعات 3 بار تازہ کی جاتی ہیں۔';

  @override
  String get onCallModePhone => 'فون کے لیے ڈیوٹی موڈ';

  @override
  String get onCallModePhoneDescription => 'فون پر جارحانہ اطلاعات';

  @override
  String get onCallModeWatch => 'اسمارٹ واچ کے لیے ڈیوٹی موڈ';

  @override
  String get onCallModeWatchDescription => 'اسمارٹ واچ پر جارحانہ اطلاعات';

  @override
  String get vacationMode => 'چھٹی موڈ';

  @override
  String get vacationModeDescription =>
      'چھٹی موڈ میں کوئی اطلاع موصول نہیں ہوتی۔';

  @override
  String get vacationModePhone => 'فون کے لیے چھٹی موڈ';

  @override
  String get vacationModePhoneDescription => 'فون پر اطلاعات غیر فعال کریں';

  @override
  String get vacationModeWatch => 'اسمارٹ واچ کے لیے چھٹی موڈ';

  @override
  String get vacationModeWatchDescription =>
      'اسمارٹ واچ پر اطلاعات غیر فعال کریں';

  @override
  String get serverUrl => 'سرور URL';

  @override
  String get collection => 'مجموعہ';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get languageDescription =>
      'اپنی پسندیدہ زبان منتخب کریں۔ ایپ ڈیفالٹ کے طور پر آپ کی ڈیوائس کی زبان استعمال کرے گی۔';

  @override
  String get close => 'بند کریں';

  @override
  String get settingsSaved => 'ترتیبات محفوظ ہو گئیں';

  @override
  String get invalidUrl => 'براہ کرم ایک درست URL درج کریں';

  @override
  String get invalidMarketUrl =>
      'براہ کرم ایک درست مارکیٹ URL درج کریں (مثال: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'پولنگ وقفہ 5-300 سیکنڈ کے درمیان ہونا چاہیے';

  @override
  String couldNotOpenLink(String error) {
    return 'لنک کھول نہیں سکا: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'ابھی تک کوئی گروپ شامل نہیں کیا گیا۔ اوپر سے گروپ کا نام شامل کریں۔';

  @override
  String get donate => 'عطیہ کریں';

  @override
  String get donateDescription => 'اس ایپ کی ترقی کی حمایت کریں';

  @override
  String get donateButton => 'مجھے ایک کافی خریدیں';

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
      'موصل - شمالی عراق میں تاریخی ترک شہر۔ تیل کے وسائل اور ثقافتی ورثہ سے مالا مال۔ قدیم اشوری اور عثمانی یادگاروں کا گھر۔ اپنے خوبصورت فن تعمیر اور تاریخی اہمیت کے لیے جانا جاتا ہے۔';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'کرکوک - شمالی عراق میں اہم ترک شہر۔ تیل کے ذخائر اور ثقافتی تنوع سے مالا مال۔ ترکمان، کرد اور عرب کمیونٹیز کا گھر۔ اپنے تاریخی قلعے اور روایتی فن تعمیر کے لیے جانا جاتا ہے۔';

  @override
  String get cultureHistoricalPlace_karabag =>
      'قرہ باغ - قفقاز میں تاریخی ترک خطہ۔ اپنے خوبصورت پہاڑوں، جنگلات اور ثقافتی ورثہ کے لیے جانا جاتا ہے۔ تاریخ اور قدرتی خوبصورتی سے مالا مال۔ ترک ثقافت کے لیے اہم خطہ۔';

  @override
  String get cultureHistoricalPlace_selanik =>
      'تھیسالونیکی - شمالی یونان میں تاریخی ترک شہر۔ مصطفیٰ کمال اتاترک کی جائے پیدائش۔ عثمانی فن تعمیر اور ثقافتی ورثہ سے مالا مال۔ اپنے خوبصورت واٹر فرنٹ اور تاریخی یادگاروں کے لیے جانا جاتا ہے۔';

  @override
  String get cultureHistoricalPlace_kibris =>
      'قبرص - خوبصورت بحیرہ روم جزیرہ، ترک تاریخ کا حصہ۔ اپنے شاندار ساحلوں، قدیم کھنڈرات اور ثقافتی ورثہ کے لیے جانا جاتا ہے۔ شمالی قبرص ایک ترک جمہوریہ ہے۔ تاریخ اور قدرتی خوبصورتی سے مالا مال۔';

  @override
  String get cultureHistoricalPlace_rodos =>
      'رہوڈس - بھرپور ترک تاریخ کے ساتھ خوبصورت یونانی جزیرہ۔ اپنے قرون وسطیٰ کے فن تعمیر، خوبصورت ساحلوں اور تاریخی یادگاروں کے لیے جانا جاتا ہے۔ عثمانی مساجد اور ترک حماموں کا گھر۔ ترک بحری تاریخ کا اہم حصہ۔';

  @override
  String get cultureHistoricalPlace_girit =>
      'کریٹ - اہم ترک ورثہ کے ساتھ سب سے بڑا یونانی جزیرہ۔ اپنے خوبصورت مناظر، قدیم مینوئن تہذیب اور عثمانی فن تعمیر کے لیے جانا جاتا ہے۔ تاریخ اور ثقافتی تنوع سے مالا مال۔ ترک بحری تاریخ میں اہم خطہ۔';

  @override
  String get turkeyGuideTitle => 'ترکی سفر گائیڈ';

  @override
  String get turkeyGuideSubtitle =>
      'ترکی کی قدرتی خوبصورتی، ثقافتی ورثہ، تاریخی مقامات اور تہواروں کی دریافت کریں';

  @override
  String get turkeyGuideNatureTitle => 'فطرت اور جغرافیہ';

  @override
  String get turkeyGuideNatureDescription =>
      'ترکی کے منفرد قدرتی عجائبات اور جغرافیائی خصوصیات کا دریافت کریں';

  @override
  String get turkeyGuideLycianWayTitle => 'لیکیئن وے';

  @override
  String get turkeyGuideLycianWayDescription =>
      'لیکیئن وے دنیا کے ٹاپ 10 لمبی دوری ہائیکنگ ٹریلز میں سے ایک ہے، جو ترکی کے بحیرہ روم کے ساحل کے ساتھ 540 کلومیٹر تک پھیلا ہوا ہے۔ یہ قدیم لیکیئن شہروں، خوبصورت ساحلوں اور حیرت انگیز پہاڑی مناظر سے گزرتا ہے۔ ٹریل دلکش نظارے پیش کرتا ہے اور فیتھیے سے انطالیہ تک تاریخی مقامات کو جوڑتا ہے۔';

  @override
  String get turkeyGuideFairyChimneysTitle => 'کیپاڈوشیا کی پری چمنیاں';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'کیپاڈوشیا کی پری چمنیاں لاکھوں سال پہلے آتش فشاں دھماکوں سے بنی منفرد چٹانی ساختیں ہیں۔ یہ مخروطی ساختیں، جن میں سے کچھ 40 میٹر کی اونچائی تک پہنچتی ہیں، ایک جادوئی منظر نامہ بناتی ہیں۔ یہ خطہ سورج طلوع ہونے پر گرم ہوا کے غبارے کے دوروں کے لیے مشہور ہے، جو یونیسکو عالمی ثقافتی ورثہ سائٹ کے شاندار نظارے پیش کرتا ہے۔';

  @override
  String get turkeyGuideUndergroundCityTitle => 'زیر زمین شہر';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'کیپاڈوشیا قابل ذکر زیر زمین شہروں کا گھر ہے، جن میں سے کچھ 8 سطحوں تک گہرے ہیں۔ ڈیرنکویو اور کایمکلی سب سے مشہور ہیں، جن میں سرنگیں، کمرے، گرجا گھر اور وینٹیلیشن سسٹم ہیں۔ یہ شہر ہزاروں لوگوں کو رکھ سکتے تھے اور حملوں کے دوران تحفظ کے لیے استعمال ہوتے تھے۔ وہ ناقابل یقین قدیم انجینئرنگ دکھاتے ہیں۔';

  @override
  String get turkeyGuideCultureTitle => 'ثقافت اور روایات';

  @override
  String get turkeyGuideCultureDescription =>
      'ترکی کی بھرپور ثقافتی ورثہ اور روایتی رسوم و رواج دریافت کریں';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'نصرالدین خوجا';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'نصرالدین خوجا ترک فولکلور میں ایک افسانوی شخصیت ہے، جو اپنی حکمت، مزاح اور ذہین کہانیوں کے لیے جانا جاتا ہے۔ 1208 میں سوریہیسار میں پیدا ہوئے، وہ اکشہیر میں رہتے تھے۔ ان کی کہانیاں، مزاح اور حکمت سے بھری ہوئی، پورے ترک دنیا میں سنائی جاتی ہیں۔ بین الاقوامی نصرالدین خوجا فیسٹیول ہر سال اکشہیر میں منعقد ہوتا ہے، اس محبوب کردار کا جشن مناتے ہوئے۔';

  @override
  String get turkeyGuideCherryFestivalTitle => 'چیری فیسٹیول';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'اکشہیر میں چیری فیسٹیول ترکی کے سب سے مشہور روایتی تہواروں میں سے ایک ہے۔ ہر سال جون میں منعقد، یہ خطے کی چیری کی فصل کا جشن مناتا ہے۔ فیسٹیول میں ثقافتی تقریبات، لوک رقص، روایتی موسیقی اور یقیناً بہت ساری مزیدار چیری شامل ہیں۔ یہ ہزاروں زائرین کو اپنی طرف متوجہ کرتا ہے اور مقامی روایات کو پیش کرتا ہے۔';

  @override
  String get turkeyGuideHistoryTitle => 'تاریخی مقامات';

  @override
  String get turkeyGuideHistoryDescription =>
      'ہزاروں سالوں میں پھیلے ترکی کے بھرپور تاریخی ورثہ کا دریافت کریں';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'قدیم شہر اور یادگاریں';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'ترکی ایفیسس، ٹرائے، پرگامون اور ہائیراپولس سمیت بے شمار تاریخی مقامات کا گھر ہے۔ یہ قدیم شہر یونانی، رومی اور بازنطینی تہذیبوں کو پیش کرتے ہیں۔ ملک میں 19 یونیسکو عالمی ثقافتی ورثہ سائٹس ہیں، جن میں ہیگیا صوفیا، کیپاڈوشیا، پاموکلے اور گوبیکلی تیپے شامل ہیں، جو دنیا کے قدیم ترین مندروں میں سے ایک ہے جو 12,000 سال پہلے کی تاریخ ہے۔';

  @override
  String get turkeyGuideGastronomyTitle => 'ترک کھانا';

  @override
  String get turkeyGuideGastronomyDescription =>
      'دنیا بھر میں مشہور ترک کھانے کے ذائقوں سے لطف اندوز ہوں';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'ترک کھانے کی وراثت';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'ترک کھانا دنیا کے سب سے متنوع اور مزیدار کھانوں میں سے ایک ہے۔ کباب اور بکلوا سے لے کر ترک مٹھائی اور ترک کافی تک، کھانا صدیوں کے ثقافتی تبادلے کو ظاہر کرتا ہے۔ استنبول کی گلی کا کھانا، علاقائی خصوصیات، اور روایتی پکوان جیسے منتی، دولما اور بورک ایک ناقابل فراموش کھانے کا سفر پیش کرتے ہیں۔ ترک کافی اور چائے کی ثقافت روزمرہ زندگی کا لازمی حصہ ہیں۔';

  @override
  String get turkeyGuideFestivalsTitle => 'تہوار اور تقریبات';

  @override
  String get turkeyGuideFestivalsDescription =>
      'ترکی کے پرجوش تہواروں اور ثقافتی تقریبات کا تجربہ کریں';

  @override
  String get turkeyGuideFestivalsListTitle => 'اہم تہوار';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'ترکی پورے سال میں متعدد تہواروں کی میزبانی کرتا ہے: بین الاقوامی استنبول فلم فیسٹیول، انطالیہ گولڈن اورنج فلم فیسٹیول، کیپاڈوشیا ہاٹ ایئر بیلون فیسٹیول، بین الاقوامی نصرالدین خوجا فیسٹیول، اکشہیر میں چیری فیسٹیول، کونیا میں میولانا وہرلنگ درویش فیسٹیول، اور بہت سے علاقائی ثقافتی جشن جو موسیقی، رقص اور روایتی فنون کو پیش کرتے ہیں۔';

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
