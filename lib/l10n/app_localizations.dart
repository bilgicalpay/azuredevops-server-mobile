import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_az.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('az'),
    Locale('de'),
    Locale('en'),
    Locale('fr'),
    Locale('hi'),
    Locale('ja'),
    Locale('ky'),
    Locale('nl'),
    Locale('ru'),
    Locale('tr'),
    Locale('ug'),
    Locale('ur')
  ];

  /// Application title
  ///
  /// In en, this message translates to:
  /// **'Azure DevOps'**
  String get appTitle;

  /// Settings screen title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Wiki settings section title
  ///
  /// In en, this message translates to:
  /// **'Wiki Settings'**
  String get wikiSettings;

  /// Wiki settings description
  ///
  /// In en, this message translates to:
  /// **'Enter the URL of the Azure DevOps wiki file. This wiki content will be displayed on the home page.'**
  String get wikiSettingsDescription;

  /// Wiki URL input label
  ///
  /// In en, this message translates to:
  /// **'Wiki URL'**
  String get wikiUrl;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Market settings section title
  ///
  /// In en, this message translates to:
  /// **'Market Settings'**
  String get marketSettings;

  /// Market settings description
  ///
  /// In en, this message translates to:
  /// **'Enter the IIS static directory URL. APK and IPA files will be listed and downloadable from this directory.'**
  String get marketSettingsDescription;

  /// Market URL input label
  ///
  /// In en, this message translates to:
  /// **'Market URL'**
  String get marketUrl;

  /// Notification settings section title
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notificationSettings;

  /// Control frequency section title
  ///
  /// In en, this message translates to:
  /// **'Control Frequency'**
  String get controlFrequency;

  /// Polling interval input label
  ///
  /// In en, this message translates to:
  /// **'Polling Interval (seconds)'**
  String get pollingInterval;

  /// Polling interval helper text
  ///
  /// In en, this message translates to:
  /// **'Between 5-300 seconds'**
  String get pollingIntervalHelper;

  /// Fast polling interval button
  ///
  /// In en, this message translates to:
  /// **'Fast (10s)'**
  String get fast;

  /// Normal polling interval button
  ///
  /// In en, this message translates to:
  /// **'Normal (15s)'**
  String get normal;

  /// Slow polling interval button
  ///
  /// In en, this message translates to:
  /// **'Slow (30s)'**
  String get slow;

  /// Notification types section title
  ///
  /// In en, this message translates to:
  /// **'Notification Types'**
  String get notificationTypes;

  /// Notify on first assignment toggle title
  ///
  /// In en, this message translates to:
  /// **'Notification on First Assignment'**
  String get notifyOnFirstAssignment;

  /// Notify on first assignment description
  ///
  /// In en, this message translates to:
  /// **'Send notification only when first assigned to me'**
  String get notifyOnFirstAssignmentDescription;

  /// Notify on all updates toggle title
  ///
  /// In en, this message translates to:
  /// **'Notification on All Updates'**
  String get notifyOnAllUpdates;

  /// Notify on all updates description
  ///
  /// In en, this message translates to:
  /// **'Send notification when work items assigned to me are updated'**
  String get notifyOnAllUpdatesDescription;

  /// Notify on hotfix only toggle title
  ///
  /// In en, this message translates to:
  /// **'Only Hotfix'**
  String get notifyOnHotfixOnly;

  /// Notify on hotfix only description
  ///
  /// In en, this message translates to:
  /// **'Notification for work items of Hotfix type only'**
  String get notifyOnHotfixOnlyDescription;

  /// Notify on group assignments toggle title
  ///
  /// In en, this message translates to:
  /// **'Notification on Group Assignments'**
  String get notifyOnGroupAssignments;

  /// Notify on group assignments description
  ///
  /// In en, this message translates to:
  /// **'Send notification when assignments are made to specified groups'**
  String get notifyOnGroupAssignmentsDescription;

  /// Group name input label
  ///
  /// In en, this message translates to:
  /// **'Group Name'**
  String get groupName;

  /// Group name input hint
  ///
  /// In en, this message translates to:
  /// **'E.g: Developers, QA Team'**
  String get groupNameHint;

  /// Smartwatch notifications toggle title
  ///
  /// In en, this message translates to:
  /// **'Smartwatch Notifications'**
  String get smartwatchNotifications;

  /// Smartwatch notifications description
  ///
  /// In en, this message translates to:
  /// **'Send notifications to smartwatches (only on first assignment)'**
  String get smartwatchNotificationsDescription;

  /// On-call mode section title
  ///
  /// In en, this message translates to:
  /// **'On-Call Mode'**
  String get onCallMode;

  /// On-call mode description
  ///
  /// In en, this message translates to:
  /// **'In on-call mode, notifications become more aggressive and unread notifications are refreshed 3 times.'**
  String get onCallModeDescription;

  /// On-call mode for phone toggle title
  ///
  /// In en, this message translates to:
  /// **'On-Call Mode for Phone'**
  String get onCallModePhone;

  /// On-call mode for phone description
  ///
  /// In en, this message translates to:
  /// **'Aggressive notifications on phone'**
  String get onCallModePhoneDescription;

  /// On-call mode for watch toggle title
  ///
  /// In en, this message translates to:
  /// **'On-Call Mode for Smart Watch'**
  String get onCallModeWatch;

  /// On-call mode for watch description
  ///
  /// In en, this message translates to:
  /// **'Aggressive notifications on smartwatch'**
  String get onCallModeWatchDescription;

  /// Vacation mode section title
  ///
  /// In en, this message translates to:
  /// **'Vacation Mode'**
  String get vacationMode;

  /// Vacation mode description
  ///
  /// In en, this message translates to:
  /// **'No notifications are received in vacation mode.'**
  String get vacationModeDescription;

  /// Vacation mode for phone toggle title
  ///
  /// In en, this message translates to:
  /// **'Vacation Mode for Phone'**
  String get vacationModePhone;

  /// Vacation mode for phone description
  ///
  /// In en, this message translates to:
  /// **'Disable notifications on phone'**
  String get vacationModePhoneDescription;

  /// Vacation mode for watch toggle title
  ///
  /// In en, this message translates to:
  /// **'Vacation Mode for Smart Watch'**
  String get vacationModeWatch;

  /// Vacation mode for watch description
  ///
  /// In en, this message translates to:
  /// **'Disable notifications on smartwatch'**
  String get vacationModeWatchDescription;

  /// Server URL label
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get serverUrl;

  /// Collection label
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// Language settings section title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Select language dropdown label
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Language settings description
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language. The app will use your device language by default.'**
  String get languageDescription;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Settings saved message
  ///
  /// In en, this message translates to:
  /// **'Settings saved'**
  String get settingsSaved;

  /// Invalid URL error message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid URL'**
  String get invalidUrl;

  /// Invalid market URL error message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid Market URL (e.g: https://devops.higgscloud.com/_static/market/)'**
  String get invalidMarketUrl;

  /// Invalid polling interval error message
  ///
  /// In en, this message translates to:
  /// **'Polling interval must be between 5-300 seconds'**
  String get invalidPollingInterval;

  /// Error message when link cannot be opened
  ///
  /// In en, this message translates to:
  /// **'Could not open link: {error}'**
  String couldNotOpenLink(String error);

  /// Wiki URL input hint text
  ///
  /// In en, this message translates to:
  /// **'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README'**
  String get wikiUrlHint;

  /// Market URL input hint text
  ///
  /// In en, this message translates to:
  /// **'https://devops.higgscloud.com/_static/market/'**
  String get marketUrlHint;

  /// No groups added message
  ///
  /// In en, this message translates to:
  /// **'No groups added yet. Add a group name above.'**
  String get noGroupsAdded;

  /// Donate button text
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get donate;

  /// Donate section description
  ///
  /// In en, this message translates to:
  /// **'Support the development of this app'**
  String get donateDescription;

  /// Donate button label
  ///
  /// In en, this message translates to:
  /// **'Buy Me a Coffee'**
  String get donateButton;

  /// Close button text for culture popup
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closePopup;

  /// No description provided for @cultureFigure_ibni_sina.
  ///
  /// In en, this message translates to:
  /// **'Ibn Sina (Avicenna) - Wrote the most important medical encyclopedia of the Middle Ages with his work \'El-Kanun fi\'t-Tıb\'. This great scientist, known as Avicenna, laid the foundations of modern medicine.'**
  String get cultureFigure_ibni_sina;

  /// No description provided for @cultureFigure_ali_kuscu.
  ///
  /// In en, this message translates to:
  /// **'Ali Kuşçu - Made groundbreaking work in mathematics and astronomy in the 15th century. Came to Istanbul at the invitation of Fatih Sultan Mehmet and taught in madrasas.'**
  String get cultureFigure_ali_kuscu;

  /// No description provided for @cultureFigure_ulug_bey.
  ///
  /// In en, this message translates to:
  /// **'Uluğ Bey - Ruler of the Timurid Empire and a great astronomer. Prepared star catalogs at the observatory he established in Samarkand. His work \'Zic-i Uluğ Bey\' was used for centuries.'**
  String get cultureFigure_ulug_bey;

  /// No description provided for @cultureFigure_farabi.
  ///
  /// In en, this message translates to:
  /// **'Farabi - One of the founders of Islamic philosophy. Known as the \'Second Teacher\'. Made important works in music theory, logic and political philosophy.'**
  String get cultureFigure_farabi;

  /// No description provided for @cultureFigure_mimar_sinan.
  ///
  /// In en, this message translates to:
  /// **'Mimar Sinan - Chief architect of the Ottoman Empire. Created more than 300 works. Created works that entered world architectural history such as Süleymaniye and Selimiye mosques.'**
  String get cultureFigure_mimar_sinan;

  /// No description provided for @cultureFigure_evliya_celebi.
  ///
  /// In en, this message translates to:
  /// **'Evliya Çelebi - Great traveler of the 17th century. Recorded Ottoman geography and culture with his 10-volume work \'Seyahatname\'. One of the important names in world travel literature.'**
  String get cultureFigure_evliya_celebi;

  /// No description provided for @cultureFigure_katip_celebi.
  ///
  /// In en, this message translates to:
  /// **'Katip Çelebi - Important Ottoman geographer and historian. Known for his geography work \'Cihannüma\' and bibliography work \'Keşfü\'z-Zünun\'.'**
  String get cultureFigure_katip_celebi;

  /// No description provided for @cultureFigure_piri_reis.
  ///
  /// In en, this message translates to:
  /// **'Piri Reis - Ottoman sailor and cartographer. The world map he drew in 1513 is considered one of the oldest maps of the American continent.'**
  String get cultureFigure_piri_reis;

  /// No description provided for @cultureFigure_cahit_arf.
  ///
  /// In en, this message translates to:
  /// **'Cahit Arf - Turkish mathematician. Gained an important place in the mathematical world with \'Arf Constant\' and \'Arf Rings\' theory. His contributions to modern algebra and number theory are great.'**
  String get cultureFigure_cahit_arf;

  /// No description provided for @cultureFigure_aziz_sancar.
  ///
  /// In en, this message translates to:
  /// **'Aziz Sancar - 2015 Nobel Prize in Chemistry winner. Discovered DNA repair mechanisms. First scientist from Turkey to receive a Nobel Prize.'**
  String get cultureFigure_aziz_sancar;

  /// No description provided for @cultureHistoricalState_gokturk_kaganligi.
  ///
  /// In en, this message translates to:
  /// **'🏹 Göktürk Khaganate (552-744) - The first Turkic state established in Central Asia. The first state to use the name Turk. Divided into Eastern and Western.'**
  String get cultureHistoricalState_gokturk_kaganligi;

  /// No description provided for @cultureHistoricalState_osmanli.
  ///
  /// In en, this message translates to:
  /// **'🌙 Ottoman Empire (1299-1922) - Great empire spread across three continents. Ruled for more than 600 years. With the conquest of Istanbul, it closed the Middle Ages and opened the Modern Age.'**
  String get cultureHistoricalState_osmanli;

  /// No description provided for @cultureModernState_turkiye.
  ///
  /// In en, this message translates to:
  /// **'🇹🇷 Republic of Turkey (1923-) - Modern Turkish state founded under the leadership of Mustafa Kemal Atatürk. Secular, democratic and social state of law. Member of NATO and EU.'**
  String get cultureModernState_turkiye;

  /// No description provided for @cultureHistoricalPlace_ayasofya.
  ///
  /// In en, this message translates to:
  /// **'Hagia Sophia - One of the world\'s most important architectural monuments. Built as a church in 537, converted to a mosque in 1453, and became a museum in 1935. It is now a mosque again.'**
  String get cultureHistoricalPlace_ayasofya;

  /// No description provided for @cultureHistoricalPlace_cappadocia.
  ///
  /// In en, this message translates to:
  /// **'Cappadocia - Unique region with fairy chimneys and underground cities. UNESCO World Heritage Site. Famous for hot air balloon tours.'**
  String get cultureHistoricalPlace_cappadocia;

  /// No description provided for @cultureHistoricalPlace_pamukkale.
  ///
  /// In en, this message translates to:
  /// **'Pamukkale - Natural wonder with white travertine terraces. Thermal springs and ancient city of Hierapolis. UNESCO World Heritage Site.'**
  String get cultureHistoricalPlace_pamukkale;

  /// No description provided for @cultureGeographical_agri_dagi.
  ///
  /// In en, this message translates to:
  /// **'Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters. According to legend, Noah\'s Ark landed here. Located on the border with Iran and Armenia.'**
  String get cultureGeographical_agri_dagi;

  /// No description provided for @cultureGeographical_van_golu.
  ///
  /// In en, this message translates to:
  /// **'Lake Van - Turkey\'s largest lake. Saline lake with an area of 3,755 km². Famous for its unique ecosystem and Akdamar Island.'**
  String get cultureGeographical_van_golu;

  /// No description provided for @cultureCultural_turkish_coffee.
  ///
  /// In en, this message translates to:
  /// **'Turkish Coffee - Traditional coffee preparation method included in UNESCO\'s Intangible Cultural Heritage. Served with Turkish delight. An important part of Turkish culture.'**
  String get cultureCultural_turkish_coffee;

  /// No description provided for @cultureCultural_whirling_dervishes.
  ///
  /// In en, this message translates to:
  /// **'Mevlevi Sema Ceremony - Whirling dervish ritual of the Mevlevi order. UNESCO Intangible Cultural Heritage. Represents spiritual journey and unity with God.'**
  String get cultureCultural_whirling_dervishes;

  /// No description provided for @cultureGastronomy_kebab.
  ///
  /// In en, this message translates to:
  /// **'Kebab - One of Turkey\'s most famous dishes. Various types including Adana kebab, Urfa kebab, and döner. Grilled meat dishes that are world-renowned.'**
  String get cultureGastronomy_kebab;

  /// No description provided for @cultureGastronomy_baklava.
  ///
  /// In en, this message translates to:
  /// **'Baklava - Traditional Turkish dessert made with phyllo dough, nuts and syrup. Gaziantep baklava is particularly famous. UNESCO Intangible Cultural Heritage.'**
  String get cultureGastronomy_baklava;

  /// No description provided for @cultureGeology_cappadocia_volcanic.
  ///
  /// In en, this message translates to:
  /// **'Cappadocia Volcanic Formations - Formed by volcanic eruptions millions of years ago. Erosion created unique fairy chimneys. One of the world\'s most unique geological formations.'**
  String get cultureGeology_cappadocia_volcanic;

  /// No description provided for @cultureGeology_pamukkale_travertine.
  ///
  /// In en, this message translates to:
  /// **'Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Natural wonder formed over thousands of years.'**
  String get cultureGeology_pamukkale_travertine;

  /// No description provided for @cultureSea_mediterranean.
  ///
  /// In en, this message translates to:
  /// **'Mediterranean Sea - Turkey\'s southern coast. Famous for its turquoise waters, beautiful beaches and historical sites. Popular tourist destination.'**
  String get cultureSea_mediterranean;

  /// No description provided for @cultureSea_aegean.
  ///
  /// In en, this message translates to:
  /// **'Aegean Sea - Turkey\'s western coast. Known for its clear waters, islands and ancient cities. Home to many important archaeological sites.'**
  String get cultureSea_aegean;

  /// No description provided for @cultureMuseum_topkapi_museum.
  ///
  /// In en, this message translates to:
  /// **'Topkapı Palace Museum - Former residence of Ottoman sultans. Houses important collections including the Prophet\'s relics. One of the world\'s most important palace museums.'**
  String get cultureMuseum_topkapi_museum;

  /// No description provided for @cultureMuseum_archaeological_museum.
  ///
  /// In en, this message translates to:
  /// **'Istanbul Archaeological Museum - Houses artifacts from various civilizations. One of the world\'s most important archaeological museums. Contains works from Anatolian, Greek, Roman and Ottoman periods.'**
  String get cultureMuseum_archaeological_museum;

  /// No description provided for @cultureHoliday_antalya.
  ///
  /// In en, this message translates to:
  /// **'Antalya - Turkey\'s most popular holiday destination. Beautiful beaches, historical sites and luxury resorts. Known as the Turkish Riviera.'**
  String get cultureHoliday_antalya;

  /// No description provided for @cultureHoliday_cappadocia.
  ///
  /// In en, this message translates to:
  /// **'Cappadocia - Unique holiday destination with fairy chimneys and cave hotels. Famous for hot air balloon tours. UNESCO World Heritage Site.'**
  String get cultureHoliday_cappadocia;

  /// No description provided for @cultureHistoricalPlace_musul.
  ///
  /// In en, this message translates to:
  /// **'Mosul (Musul) - Historic Turkish city in northern Iraq. Rich in oil resources and cultural heritage. Home to ancient Assyrian and Ottoman monuments. Known for its beautiful architecture and historical significance.'**
  String get cultureHistoricalPlace_musul;

  /// No description provided for @cultureHistoricalPlace_kerkuk.
  ///
  /// In en, this message translates to:
  /// **'Kirkuk (Kerkük) - Important Turkish city in northern Iraq. Rich in oil reserves and cultural diversity. Home to Turkmen, Kurdish, and Arab communities. Known for its historical citadel and traditional architecture.'**
  String get cultureHistoricalPlace_kerkuk;

  /// No description provided for @cultureHistoricalPlace_karabag.
  ///
  /// In en, this message translates to:
  /// **'Karabakh (Karabağ) - Historic Turkish region in the Caucasus. Known for its beautiful mountains, forests, and cultural heritage. Rich in history and natural beauty. Important region for Turkic culture.'**
  String get cultureHistoricalPlace_karabag;

  /// No description provided for @cultureHistoricalPlace_selanik.
  ///
  /// In en, this message translates to:
  /// **'Thessaloniki (Selanik) - Historic Turkish city in northern Greece. Birthplace of Mustafa Kemal Atatürk. Rich in Ottoman architecture and cultural heritage. Known for its beautiful waterfront and historical monuments.'**
  String get cultureHistoricalPlace_selanik;

  /// No description provided for @cultureHistoricalPlace_kibris.
  ///
  /// In en, this message translates to:
  /// **'Cyprus (Kıbrıs) - Beautiful Mediterranean island, part of Turkish history. Known for its stunning beaches, ancient ruins, and cultural heritage. Northern Cyprus is a Turkish Republic. Rich in history and natural beauty.'**
  String get cultureHistoricalPlace_kibris;

  /// No description provided for @cultureHistoricalPlace_rodos.
  ///
  /// In en, this message translates to:
  /// **'Rhodes (Rodos) - Beautiful Greek island with rich Turkish history. Known for its medieval architecture, beautiful beaches, and historical monuments. Home to Ottoman mosques and Turkish baths. Important part of Turkish maritime history.'**
  String get cultureHistoricalPlace_rodos;

  /// No description provided for @cultureHistoricalPlace_girit.
  ///
  /// In en, this message translates to:
  /// **'Crete (Girit) - Largest Greek island with significant Turkish heritage. Known for its beautiful landscapes, ancient Minoan civilization, and Ottoman architecture. Rich in history and cultural diversity. Important region in Turkish maritime history.'**
  String get cultureHistoricalPlace_girit;

  /// No description provided for @turkeyGuideTitle.
  ///
  /// In en, this message translates to:
  /// **'Turkey Travel Guide'**
  String get turkeyGuideTitle;

  /// No description provided for @turkeyGuideSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover the natural beauty, cultural heritage, historical sites, and festivals of Turkey'**
  String get turkeyGuideSubtitle;

  /// No description provided for @turkeyGuideNatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Nature & Geography'**
  String get turkeyGuideNatureTitle;

  /// No description provided for @turkeyGuideNatureDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore Turkey\'s unique natural wonders and geographical features'**
  String get turkeyGuideNatureDescription;

  /// No description provided for @turkeyGuideLycianWayTitle.
  ///
  /// In en, this message translates to:
  /// **'Lycian Way'**
  String get turkeyGuideLycianWayTitle;

  /// No description provided for @turkeyGuideLycianWayDescription.
  ///
  /// In en, this message translates to:
  /// **'The Lycian Way is one of the world\'s top 10 long-distance hiking trails, stretching 540 km along Turkey\'s Mediterranean coast. It passes through ancient Lycian cities, beautiful beaches, and stunning mountain landscapes. The trail offers breathtaking views and connects historical sites from Fethiye to Antalya.'**
  String get turkeyGuideLycianWayDescription;

  /// No description provided for @turkeyGuideFairyChimneysTitle.
  ///
  /// In en, this message translates to:
  /// **'Fairy Chimneys of Cappadocia'**
  String get turkeyGuideFairyChimneysTitle;

  /// No description provided for @turkeyGuideFairyChimneysDescription.
  ///
  /// In en, this message translates to:
  /// **'Cappadocia\'s fairy chimneys are unique rock formations created by volcanic eruptions millions of years ago. These cone-shaped formations, some reaching 40 meters in height, create a magical landscape. The region is famous for hot air balloon tours at sunrise, offering spectacular views of this UNESCO World Heritage Site.'**
  String get turkeyGuideFairyChimneysDescription;

  /// No description provided for @turkeyGuideUndergroundCityTitle.
  ///
  /// In en, this message translates to:
  /// **'Underground Cities'**
  String get turkeyGuideUndergroundCityTitle;

  /// No description provided for @turkeyGuideUndergroundCityDescription.
  ///
  /// In en, this message translates to:
  /// **'Cappadocia is home to remarkable underground cities, some extending 8 levels deep. Derinkuyu and Kaymaklı are the most famous, with tunnels, rooms, churches, and ventilation systems. These cities could house thousands of people and were used for protection during invasions. They showcase incredible ancient engineering.'**
  String get turkeyGuideUndergroundCityDescription;

  /// No description provided for @turkeyGuideCultureTitle.
  ///
  /// In en, this message translates to:
  /// **'Culture & Traditions'**
  String get turkeyGuideCultureTitle;

  /// No description provided for @turkeyGuideCultureDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover Turkey\'s rich cultural heritage and traditional customs'**
  String get turkeyGuideCultureDescription;

  /// No description provided for @turkeyGuideNasreddinHocaTitle.
  ///
  /// In en, this message translates to:
  /// **'Nasreddin Hoca'**
  String get turkeyGuideNasreddinHocaTitle;

  /// No description provided for @turkeyGuideNasreddinHocaDescription.
  ///
  /// In en, this message translates to:
  /// **'Nasreddin Hoca is a legendary figure in Turkish folklore, known for his wisdom, humor, and clever stories. Born in 1208 in Sivrihisar, he lived in Akşehir. His tales, filled with humor and wisdom, are told throughout the Turkic world. The International Nasreddin Hoca Festival is held annually in Akşehir, celebrating this beloved character.'**
  String get turkeyGuideNasreddinHocaDescription;

  /// No description provided for @turkeyGuideCherryFestivalTitle.
  ///
  /// In en, this message translates to:
  /// **'Kiraz Festivali (Cherry Festival)'**
  String get turkeyGuideCherryFestivalTitle;

  /// No description provided for @turkeyGuideCherryFestivalDescription.
  ///
  /// In en, this message translates to:
  /// **'The Cherry Festival in Akşehir is one of Turkey\'s most famous traditional festivals. Held annually in June, it celebrates the region\'s cherry harvest. The festival features cultural events, folk dances, traditional music, and of course, plenty of delicious cherries. It attracts thousands of visitors and showcases local traditions.'**
  String get turkeyGuideCherryFestivalDescription;

  /// No description provided for @turkeyGuideHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Historical Sites'**
  String get turkeyGuideHistoryTitle;

  /// No description provided for @turkeyGuideHistoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore Turkey\'s rich historical heritage spanning thousands of years'**
  String get turkeyGuideHistoryDescription;

  /// No description provided for @turkeyGuideHistoricalSitesTitle.
  ///
  /// In en, this message translates to:
  /// **'Ancient Cities & Monuments'**
  String get turkeyGuideHistoricalSitesTitle;

  /// No description provided for @turkeyGuideHistoricalSitesDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey is home to countless historical sites including Ephesus, Troy, Pergamon, and Hierapolis. These ancient cities showcase Greek, Roman, and Byzantine civilizations. The country has 19 UNESCO World Heritage Sites, including Hagia Sophia, Cappadocia, Pamukkale, and Göbekli Tepe, one of the world\'s oldest temples dating back 12,000 years.'**
  String get turkeyGuideHistoricalSitesDescription;

  /// No description provided for @turkeyGuideGastronomyTitle.
  ///
  /// In en, this message translates to:
  /// **'Turkish Cuisine'**
  String get turkeyGuideGastronomyTitle;

  /// No description provided for @turkeyGuideGastronomyDescription.
  ///
  /// In en, this message translates to:
  /// **'Savor the flavors of world-renowned Turkish cuisine'**
  String get turkeyGuideGastronomyDescription;

  /// No description provided for @turkeyGuideTurkishCuisineTitle.
  ///
  /// In en, this message translates to:
  /// **'Turkish Culinary Heritage'**
  String get turkeyGuideTurkishCuisineTitle;

  /// No description provided for @turkeyGuideTurkishCuisineDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkish cuisine is one of the world\'s most diverse and delicious. From kebabs and baklava to Turkish delight and Turkish coffee, the cuisine reflects centuries of cultural exchange. Istanbul\'s street food, regional specialties, and traditional dishes like mantı, dolma, and börek offer an unforgettable culinary journey. Turkish coffee and tea culture are integral parts of daily life.'**
  String get turkeyGuideTurkishCuisineDescription;

  /// No description provided for @turkeyGuideFestivalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Festivals & Events'**
  String get turkeyGuideFestivalsTitle;

  /// No description provided for @turkeyGuideFestivalsDescription.
  ///
  /// In en, this message translates to:
  /// **'Experience Turkey\'s vibrant festivals and cultural events'**
  String get turkeyGuideFestivalsDescription;

  /// No description provided for @turkeyGuideFestivalsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Major Festivals'**
  String get turkeyGuideFestivalsListTitle;

  /// No description provided for @turkeyGuideFestivalsListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey hosts numerous festivals throughout the year: International Istanbul Film Festival, Antalya Golden Orange Film Festival, Cappadocia Hot Air Balloon Festival, International Nasreddin Hoca Festival, Cherry Festival in Akşehir, Mevlana Whirling Dervishes Festival in Konya, and many regional cultural celebrations showcasing music, dance, and traditional arts.'**
  String get turkeyGuideFestivalsListDescription;

  /// No description provided for @turkeyGuideHistoricalPlacesTitle.
  ///
  /// In en, this message translates to:
  /// **'Historical Places'**
  String get turkeyGuideHistoricalPlacesTitle;

  /// No description provided for @turkeyGuideHistoricalPlacesDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover Turkey\'s rich historical heritage including ancient cities, monuments, and important Turkish lands'**
  String get turkeyGuideHistoricalPlacesDescription;

  /// No description provided for @turkeyGuideHistoricalPlacesListTitle.
  ///
  /// In en, this message translates to:
  /// **'Important Historical Places & Turkish Lands'**
  String get turkeyGuideHistoricalPlacesListTitle;

  /// No description provided for @turkeyGuideHistoricalPlacesListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey and Turkish lands are home to countless historical sites: Ephesus, Troy, Pergamon, Hierapolis, Hagia Sophia, Topkapı Palace, Süleymaniye Mosque, Selimiye Mosque, Göbekli Tepe (12,000 years old), Çatalhöyük, Hattuşa, Mount Nemrut, Sümela Monastery, Akdamar Church, Anıtkabir. Important Turkish lands include: Mosul (Musul) - Historic Turkish city in northern Iraq with rich oil resources and cultural heritage. Kirkuk (Kerkük) - Important Turkish city with historical citadel. Karabakh (Karabağ) - Historic Turkish region in the Caucasus with beautiful mountains and forests. Thessaloniki (Selanik) - Birthplace of Mustafa Kemal Atatürk, rich in Ottoman architecture. Cyprus (Kıbrıs) - Beautiful Mediterranean island, Northern Cyprus is a Turkish Republic. Rhodes (Rodos) - Island with rich Turkish history and Ottoman monuments. Crete (Girit) - Largest Greek island with significant Turkish heritage and Ottoman architecture.'**
  String get turkeyGuideHistoricalPlacesListDescription;

  /// No description provided for @turkeyGuideSeasTitle.
  ///
  /// In en, this message translates to:
  /// **'Seas & Coastlines'**
  String get turkeyGuideSeasTitle;

  /// No description provided for @turkeyGuideSeasDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore Turkey\'s beautiful seas, coastlines, and maritime heritage'**
  String get turkeyGuideSeasDescription;

  /// No description provided for @turkeyGuideSeasListTitle.
  ///
  /// In en, this message translates to:
  /// **'Turkish Seas & Bays'**
  String get turkeyGuideSeasListTitle;

  /// No description provided for @turkeyGuideSeasListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey is surrounded by four seas: Mediterranean Sea (Akdeniz) - Famous for turquoise waters, beautiful beaches, and historical sites. Known as the Turkish Riviera. Aegean Sea (Ege Denizi) - Known for clear waters, islands, and ancient cities. Black Sea (Karadeniz) - Rich in natural beauty and cultural heritage. Sea of Marmara (Marmara Denizi) - Connects the Black Sea and Aegean Sea. Bosphorus (Boğaziçi) - Iconic strait connecting Europe and Asia. Dardanelles (Çanakkale Boğazı) - Historic strait with rich maritime history. Beautiful bays include: Antalya Bay, İzmir Bay, Gökova Bay, Fethiye Bay, Kaş Bay, Kekova, Datça Peninsula, Bodrum Peninsula, and Çeşme Peninsula.'**
  String get turkeyGuideSeasListDescription;

  /// No description provided for @turkeyGuideMuseumsTitle.
  ///
  /// In en, this message translates to:
  /// **'Museums'**
  String get turkeyGuideMuseumsTitle;

  /// No description provided for @turkeyGuideMuseumsDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover Turkey\'s world-class museums and cultural collections'**
  String get turkeyGuideMuseumsDescription;

  /// No description provided for @turkeyGuideMuseumsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Important Museums'**
  String get turkeyGuideMuseumsListTitle;

  /// No description provided for @turkeyGuideMuseumsListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey is home to world-renowned museums: Topkapı Palace Museum - Former residence of Ottoman sultans, houses Prophet\'s relics. Hagia Sophia Museum - One of the world\'s most important architectural monuments. Istanbul Archaeological Museum - Houses artifacts from various civilizations. Turkish and Islamic Arts Museum, Pera Museum, Sakıp Sabancı Museum, İstanbul Modern, Anıtkabir Atatürk Museum, Museum of Anatolian Civilizations, Göreme Open Air Museum, Zeugma Mosaic Museum, Antakya Mosaic Museum, Hierapolis Archaeological Museum, Ephesus Museum, Bodrum Underwater Archaeology Museum, Troy Museum, Gaziantep Zeugma Museum, Konya Mevlana Museum, Ankara Ethnography Museum, and Bursa Turkish and Islamic Arts Museum.'**
  String get turkeyGuideMuseumsListDescription;

  /// No description provided for @turkeyGuideGeologyTitle.
  ///
  /// In en, this message translates to:
  /// **'Geological Features'**
  String get turkeyGuideGeologyTitle;

  /// No description provided for @turkeyGuideGeologyDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore Turkey\'s unique geological formations and natural wonders'**
  String get turkeyGuideGeologyDescription;

  /// No description provided for @turkeyGuideGeologyListTitle.
  ///
  /// In en, this message translates to:
  /// **'Geological Wonders'**
  String get turkeyGuideGeologyListTitle;

  /// No description provided for @turkeyGuideGeologyListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey\'s geological diversity is remarkable: Cappadocia Volcanic Formations - Unique fairy chimneys created by volcanic eruptions millions of years ago. Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters, legendary landing place of Noah\'s Ark. Erciyes Volcano, Nemrut Volcano, Hasandağ, Karapınar Volcanic Area, Kula Volcanic Park. Salt deposits at Lake Tuz (Tuz Gölü). Volcanic formations around Lake Van. Important deltas: Çukurova Delta, Bafra Delta, Kızılırmak Delta, Yeşilırmak Delta, Göksu Delta, Sakarya Delta. Major fault lines: Marmara Fault, North Anatolian Fault, East Anatolian Fault, and Tuz Gölü Fault.'**
  String get turkeyGuideGeologyListDescription;

  /// No description provided for @turkeyGuideHolidayDestinationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Holiday Destinations'**
  String get turkeyGuideHolidayDestinationsTitle;

  /// No description provided for @turkeyGuideHolidayDestinationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover Turkey\'s most beautiful holiday destinations and resorts'**
  String get turkeyGuideHolidayDestinationsDescription;

  /// No description provided for @turkeyGuideHolidayDestinationsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Popular Holiday Destinations'**
  String get turkeyGuideHolidayDestinationsListTitle;

  /// No description provided for @turkeyGuideHolidayDestinationsListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey offers diverse holiday experiences: Mediterranean Coast - Antalya (Turkish Riviera), Bodrum, Marmaris, Fethiye, Kaş, Kalkan, Ölüdeniz, Datça. Aegean Coast - Çeşme, Alaçatı, Kuşadası, Didim. Natural Wonders - Pamukkale (white travertines), Cappadocia (fairy chimneys and cave hotels). Mountain Resorts - Uludağ, Palandöken, Kartalkaya, Erciyes (skiing). Cultural Destinations - Safranbolu (Ottoman architecture), Beypazarı (traditional houses), Amasra (Black Sea coast). Black Sea - Trabzon, Rize. Lakes - Sapanca, Abant. Each destination offers unique experiences from beach holidays to cultural tours, from winter sports to thermal springs.'**
  String get turkeyGuideHolidayDestinationsListDescription;

  /// No description provided for @turkeyGuideBeachesTitle.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Beaches & Coastlines'**
  String get turkeyGuideBeachesTitle;

  /// No description provided for @turkeyGuideBeachesDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover Turkey\'s stunning beaches and pristine coastlines'**
  String get turkeyGuideBeachesDescription;

  /// No description provided for @turkeyGuideBeachesListTitle.
  ///
  /// In en, this message translates to:
  /// **'Famous Turkish Beaches'**
  String get turkeyGuideBeachesListTitle;

  /// No description provided for @turkeyGuideBeachesListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey boasts some of the world\'s most beautiful beaches: Ölüdeniz (Blue Lagoon) - Famous for its turquoise waters and paragliding. Kaputaş Beach - Stunning beach between Kaş and Kalkan with crystal-clear waters. Patara Beach - 18 km long sandy beach, one of the longest in the Mediterranean. Iztuzu Beach - Protected nesting ground for Caretta caretta sea turtles. Butterfly Valley - Accessible only by boat, a hidden paradise. Cleopatra Beach (Alanya) - Legendary beach with golden sand. Çıralı Beach - Known for the eternal flames of the Chimaera. Kabak Bay - Secluded beach surrounded by nature. Each beach offers unique beauty and experiences.'**
  String get turkeyGuideBeachesListDescription;

  /// No description provided for @turkeyGuideForestsTitle.
  ///
  /// In en, this message translates to:
  /// **'Forests & Natural Parks'**
  String get turkeyGuideForestsTitle;

  /// No description provided for @turkeyGuideForestsDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore Turkey\'s lush forests and protected natural areas'**
  String get turkeyGuideForestsDescription;

  /// No description provided for @turkeyGuideForestsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Turkish Forests & National Parks'**
  String get turkeyGuideForestsListTitle;

  /// No description provided for @turkeyGuideForestsListDescription.
  ///
  /// In en, this message translates to:
  /// **'Turkey is rich in forests and natural parks: Belgrad Forest (Istanbul) - Ancient forest with hiking trails and picnic areas. Yedigöller National Park (Seven Lakes) - Beautiful lakes surrounded by dense forests. Kazdağı National Park - Home to Mount Ida, rich in biodiversity. Köprülü Canyon National Park - Stunning canyon with ancient Roman bridge. Kaçkar Mountains National Park - Alpine meadows and pristine forests. Termessos National Park - Ancient city within a natural park. Dilek Peninsula-Büyük Menderes Delta National Park - Coastal forests and wetlands. Aladağlar National Park - Mountain forests and wildlife. These areas offer hiking, camping, and nature observation opportunities.'**
  String get turkeyGuideForestsListDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'az',
        'de',
        'en',
        'fr',
        'hi',
        'ja',
        'ky',
        'nl',
        'ru',
        'tr',
        'ug',
        'ur'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'az':
      return AppLocalizationsAz();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'ja':
      return AppLocalizationsJa();
    case 'ky':
      return AppLocalizationsKy();
    case 'nl':
      return AppLocalizationsNl();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'ug':
      return AppLocalizationsUg();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
