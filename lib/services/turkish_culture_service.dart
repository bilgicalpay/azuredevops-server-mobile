/// Turkish Culture Service
/// 
/// Provides random information about Turkish history, science, art, historical Turkish states,
/// historical places, geographical features, cultural elements, gastronomy, geology, seas, museums, and holiday destinations
/// All content is localized based on the app's language setting
/// 
/// @author Alpay Bilgiç
library;

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:azuredevops_onprem/l10n/app_localizations.dart';

/// Turkish culture information data
class TurkishCultureService {
  static final Random _random = Random();
  
  // Track shown information to avoid duplicates
  static final Set<String> _shownInfoKeys = <String>{};
  
  /// Category definitions with their IDs
  static final Map<String, List<Map<String, String>>> _categories = {
    'figures': [
      {'id': 'ibni_sina', 'name': 'İbn-i Sina'},
      {'id': 'ali_kuscu', 'name': 'Ali Kuşçu'},
      {'id': 'ulug_bey', 'name': 'Uluğ Bey'},
      {'id': 'farabi', 'name': 'Farabi'},
      {'id': 'mimar_sinan', 'name': 'Mimar Sinan'},
      {'id': 'evliya_celebi', 'name': 'Evliya Çelebi'},
      {'id': 'katip_celebi', 'name': 'Katip Çelebi'},
      {'id': 'piri_reis', 'name': 'Piri Reis'},
      {'id': 'cahit_arf', 'name': 'Cahit Arf'},
      {'id': 'aziz_sancar', 'name': 'Aziz Sancar'},
      {'id': 'fazil_say', 'name': 'Fazıl Say'},
      {'id': 'yunus_emre', 'name': 'Yunus Emre'},
      {'id': 'mehmet_akif_ersoy', 'name': 'Mehmet Akif Ersoy'},
      {'id': 'nazim_hikmet', 'name': 'Nazım Hikmet'},
      {'id': 'osman_hamdi_bey', 'name': 'Osman Hamdi Bey'},
      {'id': 'harezmi', 'name': 'Harezmi'},
      {'id': 'biruni', 'name': 'Biruni'},
      {'id': 'ibni_heysem', 'name': 'İbn-i Heysem'},
      {'id': 'takiyuddin', 'name': 'Takiyüddin'},
      {'id': 'gelenbevi_ismail_efendi', 'name': 'Gelenbevi İsmail Efendi'},
      {'id': 'salih_zeki', 'name': 'Salih Zeki'},
      {'id': 'kerim_erim', 'name': 'Kerim Erim'},
      {'id': 'feza_gursey', 'name': 'Feza Gürsey'},
      {'id': 'ratip_berker', 'name': 'Ratip Berker'},
      {'id': 'behram_kursunoglu', 'name': 'Behram Kurşunoğlu'},
      {'id': 'gazi_yasargil', 'name': 'Gazi Yaşargil'},
      {'id': 'erdal_inonu', 'name': 'Erdal İnönü'},
      {'id': 'asim_orhan_barut', 'name': 'Asım Orhan Barut'},
      {'id': 'mehmet_oz', 'name': 'Mehmet Öz'},
      {'id': 'canan_dagdeviren', 'name': 'Canan Dağdeviren'},
      {'id': 'yasar_kemal', 'name': 'Yaşar Kemal'},
      {'id': 'sabahattin_ali', 'name': 'Sabahattin Ali'},
      {'id': 'ahmet_hamdi_tanpinar', 'name': 'Ahmet Hamdi Tanpınar'},
      {'id': 'zeki_muren', 'name': 'Zeki Müren'},
      {'id': 'munir_nurettin_selcuk', 'name': 'Münir Nurettin Selçuk'},
      {'id': 'neset_ertas', 'name': 'Neşet Ertaş'},
    ],
    'historical_states': [
      {'id': 'gokturk_kaganligi', 'name': 'Göktürk Kağanlığı', 'years': '552-744', 'flag': '🏹'},
      {'id': 'uygur_kaganligi', 'name': 'Uygur Kağanlığı', 'years': '744-840', 'flag': '🦅'},
      {'id': 'karahanlilar', 'name': 'Karahanlılar', 'years': '840-1212', 'flag': '⚔️'},
      {'id': 'gazneliler', 'name': 'Gazneliler', 'years': '963-1186', 'flag': '🛡️'},
      {'id': 'buyuk_selcuklu', 'name': 'Büyük Selçuklu İmparatorluğu', 'years': '1037-1194', 'flag': '👑'},
      {'id': 'anadolu_selcuklu', 'name': 'Anadolu Selçuklu Devleti', 'years': '1077-1308', 'flag': '🏛️'},
      {'id': 'osmanli', 'name': 'Osmanlı İmparatorluğu', 'years': '1299-1922', 'flag': '🌙'},
      {'id': 'timur', 'name': 'Timur İmparatorluğu', 'years': '1370-1507', 'flag': '⚡'},
      {'id': 'babur', 'name': 'Babür İmparatorluğu', 'years': '1526-1858', 'flag': '🐘'},
      {'id': 'altin_orda', 'name': 'Altın Orda Devleti', 'years': '1242-1502', 'flag': '🐎'},
      {'id': 'harezmsahlar', 'name': 'Harezmşahlar', 'years': '1077-1231', 'flag': '🗡️'},
      {'id': 'akkoyunlular', 'name': 'Akkoyunlular', 'years': '1378-1508', 'flag': '🐑'},
    ],
    'modern_states': [
      {'id': 'turkiye', 'name': 'Türkiye Cumhuriyeti', 'years': '1923-', 'flag': '🇹🇷'},
      {'id': 'azerbaycan', 'name': 'Azerbaycan Cumhuriyeti', 'years': '1991-', 'flag': '🇦🇿'},
      {'id': 'kazakistan', 'name': 'Kazakistan Cumhuriyeti', 'years': '1991-', 'flag': '🇰🇿'},
      {'id': 'kirgizistan', 'name': 'Kırgızistan Cumhuriyeti', 'years': '1991-', 'flag': '🇰🇬'},
      {'id': 'ozbekistan', 'name': 'Özbekistan Cumhuriyeti', 'years': '1991-', 'flag': '🇺🇿'},
      {'id': 'turkmenistan', 'name': 'Türkmenistan', 'years': '1991-', 'flag': '🇹🇲'},
      {'id': 'dogu_turkistan', 'name': 'Doğu Türkistan (Uygur Özerk Bölgesi)', 'years': '1955-', 'flag': '🌙'},
      {'id': 'kibris', 'name': 'Kuzey Kıbrıs Türk Cumhuriyeti', 'years': '1983-', 'flag': '🇹🇷'},
      {'id': 'tataristan', 'name': 'Tataristan Cumhuriyeti', 'years': '1992-', 'flag': '🏛️'},
      {'id': 'baskurdistan', 'name': 'Başkurdistan Cumhuriyeti', 'years': '1992-', 'flag': '🐝'},
      {'id': 'cuvasistan', 'name': 'Çuvaşistan Cumhuriyeti', 'years': '1992-', 'flag': '⭐'},
      {'id': 'saha', 'name': 'Saha (Yakut) Cumhuriyeti', 'years': '1992-', 'flag': '❄️'},
      {'id': 'tuva', 'name': 'Tuva Cumhuriyeti', 'years': '1993-', 'flag': '🏔️'},
      {'id': 'altay', 'name': 'Altay Cumhuriyeti', 'years': '1992-', 'flag': '⛰️'},
      {'id': 'hakasya', 'name': 'Hakasya Cumhuriyeti', 'years': '1992-', 'flag': '🌲'},
    ],
    'historical_places': [
      {'id': 'ayasofya', 'name': 'Ayasofya'},
      {'id': 'topkapi', 'name': 'Topkapı Sarayı'},
      {'id': 'suleymaniye', 'name': 'Süleymaniye Camii'},
      {'id': 'selimiye', 'name': 'Selimiye Camii'},
      {'id': 'cappadocia', 'name': 'Kapadokya'},
      {'id': 'efes', 'name': 'Efes Antik Kenti'},
      {'id': 'pamukkale', 'name': 'Pamukkale'},
      {'id': 'troy', 'name': 'Truva'},
      {'id': 'hierapolis', 'name': 'Hierapolis'},
      {'id': 'pergamum', 'name': 'Bergama'},
      {'id': 'aspendos', 'name': 'Aspendos'},
      {'id': 'side', 'name': 'Side'},
      {'id': 'myra', 'name': 'Myra'},
      {'id': 'patara', 'name': 'Patara'},
      {'id': 'xanthos', 'name': 'Xanthos'},
      {'id': 'letoon', 'name': 'Letoon'},
      {'id': 'sagalassos', 'name': 'Sagalassos'},
      {'id': 'aphrodisias', 'name': 'Aphrodisias'},
      {'id': 'milet', 'name': 'Milet'},
      {'id': 'priene', 'name': 'Priene'},
      {'id': 'didyma', 'name': 'Didyma'},
      {'id': 'knidos', 'name': 'Knidos'},
      {'id': 'halikarnas', 'name': 'Halikarnas'},
      {'id': 'gobekli_tepe', 'name': 'Göbekli Tepe'},
      {'id': 'catalhoyuk', 'name': 'Çatalhöyük'},
      {'id': 'hattusa', 'name': 'Hattuşa'},
      {'id': 'mount_nemrut', 'name': 'Nemrut Dağı'},
      {'id': 'sumela', 'name': 'Sümela Manastırı'},
      {'id': 'akdamar', 'name': 'Akdamar Kilisesi'},
      {'id': 'anıtkabir', 'name': 'Anıtkabir'},
      {'id': 'musul', 'name': 'Musul'},
      {'id': 'kerkuk', 'name': 'Kerkük'},
      {'id': 'karabag', 'name': 'Karabağ'},
      {'id': 'selanik', 'name': 'Selanik'},
      {'id': 'kibris', 'name': 'Kıbrıs'},
      {'id': 'rodos', 'name': 'Rodos'},
      {'id': 'girit', 'name': 'Girit'},
    ],
    'geographical': [
      {'id': 'van_golu', 'name': 'Van Gölü'},
      {'id': 'tuz_golu', 'name': 'Tuz Gölü'},
      {'id': 'beysehir_golu', 'name': 'Beyşehir Gölü'},
      {'id': 'egirdir_golu', 'name': 'Eğirdir Gölü'},
      {'id': 'agri_dagi', 'name': 'Ağrı Dağı'},
      {'id': 'erciyes', 'name': 'Erciyes Dağı'},
      {'id': 'uludag', 'name': 'Uludağ'},
      {'id': 'kackar', 'name': 'Kaçkar Dağları'},
      {'id': 'toros', 'name': 'Toros Dağları'},
      {'id': 'pontic', 'name': 'Karadeniz Dağları'},
      {'id': 'kizilirmak', 'name': 'Kızılırmak'},
      {'id': 'firat', 'name': 'Fırat Nehri'},
      {'id': 'dicle', 'name': 'Dicle Nehri'},
      {'id': 'sakarya', 'name': 'Sakarya Nehri'},
      {'id': 'yesilirmak', 'name': 'Yeşilırmak'},
      {'id': 'cukurova', 'name': 'Çukurova'},
      {'id': 'konya_ovasi', 'name': 'Konya Ovası'},
      {'id': 'harran_ovasi', 'name': 'Harran Ovası'},
      {'id': 'bafra_deltasi', 'name': 'Bafra Deltası'},
      {'id': 'kizilirmak_deltasi', 'name': 'Kızılırmak Deltası'},
    ],
    'cultural': [
      {'id': 'whirling_dervishes', 'name': 'Mevlevi Sema Ayini'},
      {'id': 'karagoz', 'name': 'Karagöz ve Hacivat'},
      {'id': 'nasreddin_hoca', 'name': 'Nasreddin Hoca'},
      {'id': 'turkish_bath', 'name': 'Türk Hamamı'},
      {'id': 'turkish_coffee', 'name': 'Türk Kahvesi'},
      {'id': 'turkish_delight', 'name': 'Türk Lokumu'},
      {'id': 'turkish_carpet', 'name': 'Türk Halısı'},
      {'id': 'turkish_ceramic', 'name': 'Türk Çinisi'},
      {'id': 'ebru', 'name': 'Ebru Sanatı'},
      {'id': 'hat', 'name': 'Hat Sanatı'},
      {'id': 'tezhip', 'name': 'Tezhip Sanatı'},
      {'id': 'minyatur', 'name': 'Minyatür Sanatı'},
      {'id': 'kilim', 'name': 'Kilim Dokuma'},
      {'id': 'cini', 'name': 'Çini Sanatı'},
      {'id': 'oyuncak', 'name': 'Geleneksel Oyuncaklar'},
      {'id': 'shadow_theater', 'name': 'Gölge Oyunu'},
      {'id': 'folk_dance', 'name': 'Halk Dansları'},
      {'id': 'turkish_music', 'name': 'Türk Müziği'},
      {'id': 'ashik', 'name': 'Aşık Geleneği'},
      {'id': 'dervish_lodge', 'name': 'Derviş Tekkeleri'},
    ],
    'gastronomy': [
      {'id': 'kebab', 'name': 'Kebap'},
      {'id': 'doner', 'name': 'Döner'},
      {'id': 'lahmacun', 'name': 'Lahmacun'},
      {'id': 'pide', 'name': 'Pide'},
      {'id': 'borek', 'name': 'Börek'},
      {'id': 'baklava', 'name': 'Baklava'},
      {'id': 'kadayif', 'name': 'Kadayıf'},
      {'id': 'lokum', 'name': 'Lokum'},
      {'id': 'helva', 'name': 'Helva'},
      {'id': 'sutlac', 'name': 'Sütlaç'},
      {'id': 'kunefe', 'name': 'Künefe'},
      {'id': 'revani', 'name': 'Revani'},
      {'id': 'manti', 'name': 'Mantı'},
      {'id': 'dolma', 'name': 'Dolma'},
      {'id': 'sarma', 'name': 'Sarma'},
      {'id': 'imam_bayildi', 'name': 'İmam Bayıldı'},
      {'id': 'karniyarik', 'name': 'Karnıyarık'},
      {'id': 'menemen', 'name': 'Menemen'},
      {'id': 'cacik', 'name': 'Cacık'},
      {'id': 'tarator', 'name': 'Tarator'},
      {'id': 'ezme', 'name': 'Ezme'},
      {'id': 'hummus', 'name': 'Humus'},
      {'id': 'pilav', 'name': 'Pilav'},
      {'id': 'bulgur', 'name': 'Bulgur'},
      {'id': 'cig_kofte', 'name': 'Çiğ Köfte'},
    ],
    'geology': [
      {'id': 'cappadocia_volcanic', 'name': 'Kapadokya Volkanik Oluşumları'},
      {'id': 'pamukkale_travertine', 'name': 'Pamukkale Travertenleri'},
      {'id': 'agri_volcano', 'name': 'Ağrı Dağı Volkanı'},
      {'id': 'erciyes_volcano', 'name': 'Erciyes Volkanı'},
      {'id': 'nemrut_volcano', 'name': 'Nemrut Volkanı'},
      {'id': 'hasandag', 'name': 'Hasandağ'},
      {'id': 'karapinar', 'name': 'Karapınar Volkanik Alanı'},
      {'id': 'kula_volcanic', 'name': 'Kula Volkanik Parkı'},
      {'id': 'tuz_golu_salt', 'name': 'Tuz Gölü Tuz Yatakları'},
      {'id': 'van_golu_volcanic', 'name': 'Van Gölü Volkanik Oluşumları'},
      {'id': 'cukurova_delta', 'name': 'Çukurova Deltası'},
      {'id': 'bafra_delta', 'name': 'Bafra Deltası'},
      {'id': 'kizilirmak_delta', 'name': 'Kızılırmak Deltası'},
      {'id': 'yesilirmak_delta', 'name': 'Yeşilırmak Deltası'},
      {'id': 'goksu_delta', 'name': 'Göksu Deltası'},
      {'id': 'sakarya_delta', 'name': 'Sakarya Deltası'},
      {'id': 'marmara_fault', 'name': 'Marmara Fay Hattı'},
      {'id': 'north_anatolian_fault', 'name': 'Kuzey Anadolu Fay Hattı'},
      {'id': 'east_anatolian_fault', 'name': 'Doğu Anadolu Fay Hattı'},
      {'id': 'tuz_golu_fault', 'name': 'Tuz Gölü Fay Hattı'},
    ],
    'seas': [
      {'id': 'mediterranean', 'name': 'Akdeniz'},
      {'id': 'aegean', 'name': 'Ege Denizi'},
      {'id': 'black_sea', 'name': 'Karadeniz'},
      {'id': 'marmara', 'name': 'Marmara Denizi'},
      {'id': 'bosphorus', 'name': 'Boğaziçi'},
      {'id': 'dardanelles', 'name': 'Çanakkale Boğazı'},
      {'id': 'antalya_bay', 'name': 'Antalya Körfezi'},
      {'id': 'izmir_bay', 'name': 'İzmir Körfezi'},
      {'id': 'gokova_bay', 'name': 'Gökova Körfezi'},
      {'id': 'fethiye_bay', 'name': 'Fethiye Körfezi'},
      {'id': 'kas_bay', 'name': 'Kaş Körfezi'},
      {'id': 'kekova', 'name': 'Kekova'},
      {'id': 'datca', 'name': 'Datça Yarımadası'},
      {'id': 'bodrum', 'name': 'Bodrum Yarımadası'},
      {'id': 'cesme', 'name': 'Çeşme Yarımadası'},
    ],
    'museums': [
      {'id': 'topkapi_museum', 'name': 'Topkapı Sarayı Müzesi'},
      {'id': 'ayasofya_museum', 'name': 'Ayasofya Müzesi'},
      {'id': 'archaeological_museum', 'name': 'İstanbul Arkeoloji Müzesi'},
      {'id': 'turkish_islamic', 'name': 'Türk ve İslam Eserleri Müzesi'},
      {'id': 'pera_museum', 'name': 'Pera Müzesi'},
      {'id': 'sakip_sabanci', 'name': 'Sakıp Sabancı Müzesi'},
      {'id': 'istanbul_modern', 'name': 'İstanbul Modern'},
      {'id': 'anitkabir', 'name': 'Anıtkabir Atatürk Müzesi'},
      {'id': 'anatolian_civilizations', 'name': 'Anadolu Medeniyetleri Müzesi'},
      {'id': 'goreme_open_air', 'name': 'Göreme Açık Hava Müzesi'},
      {'id': 'zeugma_mosaic', 'name': 'Zeugma Mozaik Müzesi'},
      {'id': 'antakya_mosaic', 'name': 'Antakya Mozaik Müzesi'},
      {'id': 'hierapolis_archaeological', 'name': 'Hierapolis Arkeoloji Müzesi'},
      {'id': 'efes_museum', 'name': 'Efes Müzesi'},
      {'id': 'bodrum_underwater', 'name': 'Bodrum Sualtı Arkeoloji Müzesi'},
      {'id': 'troy_museum', 'name': 'Truva Müzesi'},
      {'id': 'gaziantep_zeugma', 'name': 'Gaziantep Zeugma Müzesi'},
      {'id': 'konya_mevlana', 'name': 'Konya Mevlana Müzesi'},
      {'id': 'ankara_ethnography', 'name': 'Ankara Etnografya Müzesi'},
      {'id': 'bursa_turkish_islamic', 'name': 'Bursa Türk İslam Eserleri Müzesi'},
    ],
    'holiday_destinations': [
      {'id': 'antalya', 'name': 'Antalya'},
      {'id': 'bodrum', 'name': 'Bodrum'},
      {'id': 'marmaris', 'name': 'Marmaris'},
      {'id': 'fethiye', 'name': 'Fethiye'},
      {'id': 'kas', 'name': 'Kaş'},
      {'id': 'kalkan', 'name': 'Kalkan'},
      {'id': 'oludeniz', 'name': 'Ölüdeniz'},
      {'id': 'datca', 'name': 'Datça'},
      {'id': 'cesme', 'name': 'Çeşme'},
      {'id': 'alacati', 'name': 'Alaçatı'},
      {'id': 'kusadasi', 'name': 'Kuşadası'},
      {'id': 'didim', 'name': 'Didim'},
      {'id': 'pamukkale', 'name': 'Pamukkale'},
      {'id': 'cappadocia', 'name': 'Kapadokya'},
      {'id': 'sapanca', 'name': 'Sapanca'},
      {'id': 'abant', 'name': 'Abant'},
      {'id': 'uludag', 'name': 'Uludağ'},
      {'id': 'palandoken', 'name': 'Palandöken'},
      {'id': 'kartalkaya', 'name': 'Kartalkaya'},
      {'id': 'erciyes', 'name': 'Erciyes'},
      {'id': 'beypazari', 'name': 'Beypazarı'},
      {'id': 'safranbolu', 'name': 'Safranbolu'},
      {'id': 'amasra', 'name': 'Amasra'},
      {'id': 'trabzon', 'name': 'Trabzon'},
      {'id': 'rize', 'name': 'Rize'},
    ],
  };
  
  /// Category weights for random selection
  static final Map<String, double> _categoryWeights = {
    'figures': 0.20,           // 20%
    'historical_states': 0.10,  // 10%
    'modern_states': 0.10,      // 10%
    'historical_places': 0.15, // 15%
    'geographical': 0.10,       // 10%
    'cultural': 0.10,           // 10%
    'gastronomy': 0.10,         // 10%
    'geology': 0.05,            // 5%
    'seas': 0.05,               // 5%
    'museums': 0.03,            // 3%
    'holiday_destinations': 0.02, // 2%
  };
  
  /// Get localized content for a culture item
  /// Get localized title for an item
  /// Returns the localized title based on language, but keeps proper nouns in Turkish
  /// For cultural items, we keep the original Turkish name as proper nouns should not be translated
  static String _getLocalizedTitle(AppLocalizations l10n, String category, String itemId, String originalName) {
    final locale = l10n.localeName;
    
    // If Turkish, return original name
    if (locale.startsWith('tr')) {
      return originalName;
    }
    
    // For cultural items (figures, historical places, etc.), keep proper nouns in Turkish
    // Only translate general descriptive words, not proper nouns
    // This ensures names like "İbn-i Sina", "Ebru Sanatı", "Kapadokya" stay in Turkish
    
    // For cultural items, most names are proper nouns and should stay in Turkish
    // Only translate general descriptive words like "Türk", "Sanatı", "Müziği", etc.
    // Specific names like "Ebru Sanatı", "İbn-i Sina", "Kapadokya" should stay in Turkish
    
    // Check if the name contains specific proper nouns that should not be translated
    // Most cultural item names are proper nouns and should stay in Turkish
    // We only translate generic descriptors, not the actual names
    
    // For other items, translate common descriptive words but keep proper nouns
    String translatedName = originalName;
    
    // Translate common Turkish words in titles
    if (locale.startsWith('nl')) {
      // Dutch translations
      translatedName = originalName
          .replaceAll('Türk ', 'Turkse ')
          .replaceAll('Türk', 'Turks')
          .replaceAll('Sanatı', 'Kunst')
          .replaceAll('Sanat', 'Kunst')
          .replaceAll('Müziği', 'Muziek')
          .replaceAll('Müzik', 'Muziek')
          .replaceAll('Gölü', 'Meer')
          .replaceAll('Göl', 'Meer')
          .replaceAll('Dağı', 'Berg')
          .replaceAll('Dağ', 'Berg')
          .replaceAll('Nehri', 'Rivier')
          .replaceAll('Nehir', 'Rivier')
          .replaceAll('Cumhuriyeti', 'Republiek')
          .replaceAll('İmparatorluğu', 'Rijk')
          .replaceAll('Kağanlığı', 'Khaganaat')
          .replaceAll('Devleti', 'Staat');
    } else if (locale.startsWith('en')) {
      // English translations
      translatedName = originalName
          .replaceAll('Türk ', 'Turkish ')
          .replaceAll('Türk', 'Turkish')
          .replaceAll('Sanatı', 'Art')
          .replaceAll('Sanat', 'Art')
          .replaceAll('Müziği', 'Music')
          .replaceAll('Müzik', 'Music')
          .replaceAll('Gölü', 'Lake')
          .replaceAll('Göl', 'Lake')
          .replaceAll('Dağı', 'Mountain')
          .replaceAll('Dağ', 'Mountain')
          .replaceAll('Nehri', 'River')
          .replaceAll('Nehir', 'River')
          .replaceAll('Cumhuriyeti', 'Republic')
          .replaceAll('İmparatorluğu', 'Empire')
          .replaceAll('Kağanlığı', 'Khaganate')
          .replaceAll('Devleti', 'State');
    } else if (locale.startsWith('de')) {
      // German translations
      translatedName = originalName
          .replaceAll('Türk ', 'Türkisch ')
          .replaceAll('Türk', 'Türkisch')
          .replaceAll('Sanatı', 'Kunst')
          .replaceAll('Sanat', 'Kunst')
          .replaceAll('Müziği', 'Musik')
          .replaceAll('Müzik', 'Musik')
          .replaceAll('Gölü', 'See')
          .replaceAll('Göl', 'See')
          .replaceAll('Dağı', 'Berg')
          .replaceAll('Dağ', 'Berg')
          .replaceAll('Nehri', 'Fluss')
          .replaceAll('Nehir', 'Fluss')
          .replaceAll('Cumhuriyeti', 'Republik')
          .replaceAll('İmparatorluğu', 'Reich')
          .replaceAll('Kağanlığı', 'Khaganat')
          .replaceAll('Devleti', 'Staat');
    } else if (locale.startsWith('fr')) {
      // French translations
      translatedName = originalName
          .replaceAll('Türk ', 'Turc ')
          .replaceAll('Türk', 'Turc')
          .replaceAll('Sanatı', 'Art')
          .replaceAll('Sanat', 'Art')
          .replaceAll('Müziği', 'Musique')
          .replaceAll('Müzik', 'Musique')
          .replaceAll('Gölü', 'Lac')
          .replaceAll('Göl', 'Lac')
          .replaceAll('Dağı', 'Montagne')
          .replaceAll('Dağ', 'Montagne')
          .replaceAll('Nehri', 'Rivière')
          .replaceAll('Nehir', 'Rivière')
          .replaceAll('Cumhuriyeti', 'République')
          .replaceAll('İmparatorluğu', 'Empire')
          .replaceAll('Kağanlığı', 'Khaganat')
          .replaceAll('Devleti', 'État');
    } else if (locale.startsWith('ru')) {
      // Russian translations
      translatedName = originalName
          .replaceAll('Türk ', 'Турецк')
          .replaceAll('Türk', 'Турецк')
          .replaceAll('Sanatı', 'Искусство')
          .replaceAll('Sanat', 'Искусство')
          .replaceAll('Müziği', 'Музыка')
          .replaceAll('Müzik', 'Музыка')
          .replaceAll('Gölü', 'Озеро')
          .replaceAll('Göl', 'Озеро')
          .replaceAll('Dağı', 'Гора')
          .replaceAll('Dağ', 'Гора')
          .replaceAll('Nehri', 'Река')
          .replaceAll('Nehir', 'Река')
          .replaceAll('Cumhuriyeti', 'Республика')
          .replaceAll('İmparatorluğu', 'Империя')
          .replaceAll('Kağanlığı', 'Каганат')
          .replaceAll('Devleti', 'Государство');
    }
    // For other languages, return original name (proper nouns stay in Turkish)
    
    return translatedName;
  }
  
  /// Uses a Map-based lookup for localization keys
  /// Maps category and itemId to the corresponding AppLocalizations getter
  static String? _getLocalizedContent(AppLocalizations l10n, String category, String itemId) {
    try {
      // Map category to ARB key prefix
      String prefix;
      switch (category) {
        case 'figures':
          prefix = 'cultureFigure_';
          break;
        case 'historical_states':
          prefix = 'cultureHistoricalState_';
          break;
        case 'modern_states':
          prefix = 'cultureModernState_';
          break;
        case 'historical_places':
          prefix = 'cultureHistoricalPlace_';
          break;
        case 'geographical':
          prefix = 'cultureGeographical_';
          break;
        case 'cultural':
          prefix = 'cultureCultural_';
          break;
        case 'gastronomy':
          prefix = 'cultureGastronomy_';
          break;
        case 'geology':
          prefix = 'cultureGeology_';
          break;
        case 'seas':
          prefix = 'cultureSea_';
          break;
        case 'museums':
          prefix = 'cultureMuseum_';
          break;
        case 'holiday_destinations':
          prefix = 'cultureHoliday_';
          break;
        default:
          return null;
      }
      
      // Build the ARB key
      final arbKey = '$prefix$itemId';
      
      // Use a Map to call the correct getter dynamically
      // Since Flutter doesn't support reflection, we use a comprehensive switch
      return _getLocalizedString(l10n, arbKey);
    } catch (e) {
      // If localization fails, return null to use fallback
      return null;
    }
  }
  
  /// Get localized string by ARB key using switch-case
  /// This is necessary because Flutter doesn't support reflection
  static String? _getLocalizedString(AppLocalizations l10n, String arbKey) {
    // This is a large switch-case that maps ARB keys to getter calls
    // We'll implement the most common ones, and add more as needed
    switch (arbKey) {
      // Figures
      case 'cultureFigure_ibni_sina': return l10n.cultureFigure_ibni_sina;
      case 'cultureFigure_ali_kuscu': return l10n.cultureFigure_ali_kuscu;
      case 'cultureFigure_ulug_bey': return l10n.cultureFigure_ulug_bey;
      case 'cultureFigure_farabi': return l10n.cultureFigure_farabi;
      case 'cultureFigure_mimar_sinan': return l10n.cultureFigure_mimar_sinan;
      case 'cultureFigure_evliya_celebi': return l10n.cultureFigure_evliya_celebi;
      case 'cultureFigure_katip_celebi': return l10n.cultureFigure_katip_celebi;
      case 'cultureFigure_piri_reis': return l10n.cultureFigure_piri_reis;
      case 'cultureFigure_cahit_arf': return l10n.cultureFigure_cahit_arf;
      case 'cultureFigure_aziz_sancar': return l10n.cultureFigure_aziz_sancar;
      
      // Historical States
      case 'cultureHistoricalState_gokturk_kaganligi': return l10n.cultureHistoricalState_gokturk_kaganligi;
      case 'cultureHistoricalState_osmanli': return l10n.cultureHistoricalState_osmanli;
      
      // Modern States
      case 'cultureModernState_turkiye': return l10n.cultureModernState_turkiye;
      
      // Historical Places
      case 'cultureHistoricalPlace_ayasofya': return l10n.cultureHistoricalPlace_ayasofya;
      case 'cultureHistoricalPlace_cappadocia': return l10n.cultureHistoricalPlace_cappadocia;
      case 'cultureHistoricalPlace_pamukkale': return l10n.cultureHistoricalPlace_pamukkale;
      case 'cultureHistoricalPlace_musul': return l10n.cultureHistoricalPlace_musul;
      case 'cultureHistoricalPlace_kerkuk': return l10n.cultureHistoricalPlace_kerkuk;
      case 'cultureHistoricalPlace_karabag': return l10n.cultureHistoricalPlace_karabag;
      case 'cultureHistoricalPlace_selanik': return l10n.cultureHistoricalPlace_selanik;
      case 'cultureHistoricalPlace_kibris': return l10n.cultureHistoricalPlace_kibris;
      case 'cultureHistoricalPlace_rodos': return l10n.cultureHistoricalPlace_rodos;
      case 'cultureHistoricalPlace_girit': return l10n.cultureHistoricalPlace_girit;
      
      // Geographical
      case 'cultureGeographical_agri_dagi': return l10n.cultureGeographical_agri_dagi;
      case 'cultureGeographical_van_golu': return l10n.cultureGeographical_van_golu;
      
      // Cultural
      case 'cultureCultural_turkish_coffee': return l10n.cultureCultural_turkish_coffee;
      case 'cultureCultural_whirling_dervishes': return l10n.cultureCultural_whirling_dervishes;
      
      // Gastronomy
      case 'cultureGastronomy_kebab': return l10n.cultureGastronomy_kebab;
      case 'cultureGastronomy_baklava': return l10n.cultureGastronomy_baklava;
      
      // Geology
      case 'cultureGeology_cappadocia_volcanic': return l10n.cultureGeology_cappadocia_volcanic;
      case 'cultureGeology_pamukkale_travertine': return l10n.cultureGeology_pamukkale_travertine;
      
      // Seas
      case 'cultureSea_mediterranean': return l10n.cultureSea_mediterranean;
      case 'cultureSea_aegean': return l10n.cultureSea_aegean;
      
      // Museums
      case 'cultureMuseum_topkapi_museum': return l10n.cultureMuseum_topkapi_museum;
      case 'cultureMuseum_archaeological_museum': return l10n.cultureMuseum_archaeological_museum;
      
      // Holiday Destinations
      case 'cultureHoliday_antalya': return l10n.cultureHoliday_antalya;
      case 'cultureHoliday_cappadocia': return l10n.cultureHoliday_cappadocia;
      
      // Additional Historical Places (already added above, but keeping for completeness)
      // These are already in the Historical Places section above
      
      default:
        // If key not found in switch-case, return null to use fallback
        // This ensures items without ARB keys still show content
        return null;
    }
  }
  
  /// Get fallback content for items not yet localized
  /// Returns meaningful content based on category and item information
  /// This provides basic information when localized content is not available
  static String? _getFallbackContent(String category, String itemId, Map<String, String> item, AppLocalizations? l10n) {
    // Get localized text based on language
    String yearsLabel = 'Yıllar';
    String descriptionPrefix = '';
    if (l10n != null) {
      final locale = l10n.localeName;
      yearsLabel = locale.startsWith('tr') ? 'Yıllar' : 
                  (locale.startsWith('ru') ? 'Годы' : 
                  (locale.startsWith('de') ? 'Jahre' : 
                  (locale.startsWith('fr') ? 'Années' : 
                  (locale.startsWith('ja') ? '年' : 
                  (locale.startsWith('hi') ? 'वर्ष' :
                  (locale.startsWith('nl') ? 'Jaren' :
                  (locale.startsWith('ur') ? 'سال' :
                  (locale.startsWith('ug') ? 'يىللار' :
                  (locale.startsWith('az') ? 'İllər' :
                  (locale.startsWith('ky') ? 'Жылдар' : 'Years'))))))))));
      
      // Add category-specific description prefix
      if (locale.startsWith('tr')) {
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Türk tarihinin önemli bir şahsiyeti.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Türk dünyasının önemli bir devleti.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Türk tarihinin önemli bir yeri.';
            break;
          case 'geographical':
            descriptionPrefix = 'Türkiye\'nin önemli bir coğrafi özelliği.';
            break;
          case 'cultural':
            descriptionPrefix = 'Türk kültürünün önemli bir unsuru.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Türk mutfağının önemli bir lezzeti.';
            break;
          case 'geology':
            descriptionPrefix = 'Türkiye\'nin önemli bir jeolojik özelliği.';
            break;
          case 'seas':
            descriptionPrefix = 'Türkiye\'yi çevreleyen önemli bir deniz.';
            break;
          case 'museums':
            descriptionPrefix = 'Türkiye\'nin önemli bir müzesi.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Türkiye\'nin önemli bir tatil destinasyonu.';
            break;
        }
      } else if (locale.startsWith('en')) {
        switch (category) {
          case 'figures':
            descriptionPrefix = 'An important figure in Turkish history.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'An important state in the Turkic world.';
            break;
          case 'historical_places':
            descriptionPrefix = 'An important place in Turkish history.';
            break;
          case 'geographical':
            descriptionPrefix = 'An important geographical feature of Turkey.';
            break;
          case 'cultural':
            descriptionPrefix = 'An important element of Turkish culture.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'An important flavor of Turkish cuisine.';
            break;
          case 'geology':
            descriptionPrefix = 'An important geological feature of Turkey.';
            break;
          case 'seas':
            descriptionPrefix = 'An important sea surrounding Turkey.';
            break;
          case 'museums':
            descriptionPrefix = 'An important museum in Turkey.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'An important holiday destination in Turkey.';
            break;
        }
      } else if (locale.startsWith('nl')) {
        // Dutch translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Een belangrijke persoon in de Turkse geschiedenis.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Een belangrijke staat in de Turkse wereld.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Een belangrijke plaats in de Turkse geschiedenis.';
            break;
          case 'geographical':
            descriptionPrefix = 'Een belangrijk geografisch kenmerk van Turkije.';
            break;
          case 'cultural':
            descriptionPrefix = 'Een belangrijk element van de Turkse cultuur.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Een belangrijke smaak van de Turkse keuken.';
            break;
          case 'geology':
            descriptionPrefix = 'Een belangrijk geologisch kenmerk van Turkije.';
            break;
          case 'seas':
            descriptionPrefix = 'Een belangrijke zee rond Turkije.';
            break;
          case 'museums':
            descriptionPrefix = 'Een belangrijk museum in Turkije.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Een belangrijke vakantiebestemming in Turkije.';
            break;
        }
      } else if (locale.startsWith('de')) {
        // German translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Eine wichtige Persönlichkeit in der türkischen Geschichte.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Ein wichtiger Staat in der türkischen Welt.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Ein wichtiger Ort in der türkischen Geschichte.';
            break;
          case 'geographical':
            descriptionPrefix = 'Ein wichtiges geografisches Merkmal der Türkei.';
            break;
          case 'cultural':
            descriptionPrefix = 'Ein wichtiges Element der türkischen Kultur.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Ein wichtiger Geschmack der türkischen Küche.';
            break;
          case 'geology':
            descriptionPrefix = 'Ein wichtiges geologisches Merkmal der Türkei.';
            break;
          case 'seas':
            descriptionPrefix = 'Ein wichtiges Meer rund um die Türkei.';
            break;
          case 'museums':
            descriptionPrefix = 'Ein wichtiges Museum in der Türkei.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Ein wichtiges Urlaubsziel in der Türkei.';
            break;
        }
      } else if (locale.startsWith('fr')) {
        // French translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Une figure importante de l\'histoire turque.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Un État important du monde turc.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Un lieu important de l\'histoire turque.';
            break;
          case 'geographical':
            descriptionPrefix = 'Une caractéristique géographique importante de la Turquie.';
            break;
          case 'cultural':
            descriptionPrefix = 'Un élément important de la culture turque.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Une saveur importante de la cuisine turque.';
            break;
          case 'geology':
            descriptionPrefix = 'Une caractéristique géologique importante de la Turquie.';
            break;
          case 'seas':
            descriptionPrefix = 'Une mer importante entourant la Turquie.';
            break;
          case 'museums':
            descriptionPrefix = 'Un musée important en Turquie.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Une destination de vacances importante en Turquie.';
            break;
        }
      } else if (locale.startsWith('ru')) {
        // Russian translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Важная фигура в турецкой истории.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Важное государство в тюркском мире.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Важное место в турецкой истории.';
            break;
          case 'geographical':
            descriptionPrefix = 'Важная географическая особенность Турции.';
            break;
          case 'cultural':
            descriptionPrefix = 'Важный элемент турецкой культуры.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Важный вкус турецкой кухни.';
            break;
          case 'geology':
            descriptionPrefix = 'Важная геологическая особенность Турции.';
            break;
          case 'seas':
            descriptionPrefix = 'Важное море, окружающее Турцию.';
            break;
          case 'museums':
            descriptionPrefix = 'Важный музей в Турции.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Важное место отдыха в Турции.';
            break;
        }
      } else if (locale.startsWith('hi')) {
        // Hindi translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'तुर्की इतिहास की एक महत्वपूर्ण हस्ती।';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'तुर्की दुनिया का एक महत्वपूर्ण राज्य।';
            break;
          case 'historical_places':
            descriptionPrefix = 'तुर्की इतिहास का एक महत्वपूर्ण स्थान।';
            break;
          case 'geographical':
            descriptionPrefix = 'तुर्की की एक महत्वपूर्ण भौगोलिक विशेषता।';
            break;
          case 'cultural':
            descriptionPrefix = 'तुर्की संस्कृति का एक महत्वपूर्ण तत्व।';
            break;
          case 'gastronomy':
            descriptionPrefix = 'तुर्की व्यंजन का एक महत्वपूर्ण स्वाद।';
            break;
          case 'geology':
            descriptionPrefix = 'तुर्की की एक महत्वपूर्ण भूवैज्ञानिक विशेषता।';
            break;
          case 'seas':
            descriptionPrefix = 'तुर्की को घेरने वाला एक महत्वपूर्ण समुद्र।';
            break;
          case 'museums':
            descriptionPrefix = 'तुर्की का एक महत्वपूर्ण संग्रहालय।';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'तुर्की में एक महत्वपूर्ण छुट्टी गंतव्य।';
            break;
        }
      } else if (locale.startsWith('ja')) {
        // Japanese translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'トルコの歴史における重要な人物。';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'トルコ世界の重要な国家。';
            break;
          case 'historical_places':
            descriptionPrefix = 'トルコの歴史における重要な場所。';
            break;
          case 'geographical':
            descriptionPrefix = 'トルコの重要な地理的特徴。';
            break;
          case 'cultural':
            descriptionPrefix = 'トルコ文化の重要な要素。';
            break;
          case 'gastronomy':
            descriptionPrefix = 'トルコ料理の重要な味。';
            break;
          case 'geology':
            descriptionPrefix = 'トルコの重要な地質学的特徴。';
            break;
          case 'seas':
            descriptionPrefix = 'トルコを囲む重要な海。';
            break;
          case 'museums':
            descriptionPrefix = 'トルコの重要な博物館。';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'トルコの重要な休暇先。';
            break;
        }
      } else if (locale.startsWith('ur')) {
        // Urdu translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'ترکی تاریخ کی ایک اہم شخصیت۔';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'ترکی دنیا کی ایک اہم ریاست۔';
            break;
          case 'historical_places':
            descriptionPrefix = 'ترکی تاریخ کی ایک اہم جگہ۔';
            break;
          case 'geographical':
            descriptionPrefix = 'ترکی کی ایک اہم جغرافیائی خصوصیت۔';
            break;
          case 'cultural':
            descriptionPrefix = 'ترکی ثقافت کا ایک اہم عنصر۔';
            break;
          case 'gastronomy':
            descriptionPrefix = 'ترکی کھانے کا ایک اہم ذائقہ۔';
            break;
          case 'geology':
            descriptionPrefix = 'ترکی کی ایک اہم ارضیاتی خصوصیت۔';
            break;
          case 'seas':
            descriptionPrefix = 'ترکی کو گھیرنے والا ایک اہم سمندر۔';
            break;
          case 'museums':
            descriptionPrefix = 'ترکی کا ایک اہم میوزیم۔';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'ترکی میں ایک اہم تعطیلات کا مقام۔';
            break;
        }
      } else if (locale.startsWith('ug')) {
        // Uyghur translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'تۈركىيە تارىخىدىكى مۇھىم شەخس.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'تۈركىيە دۇنياسىدىكى مۇھىم دۆلەت.';
            break;
          case 'historical_places':
            descriptionPrefix = 'تۈركىيە تارىخىدىكى مۇھىم جاي.';
            break;
          case 'geographical':
            descriptionPrefix = 'تۈركىيەنىڭ مۇھىم جۇغراپىيىلىك ئالاھىدىلىكى.';
            break;
          case 'cultural':
            descriptionPrefix = 'تۈركىيە مەدەنىيىتىنىڭ مۇھىم ئېلېمېنتى.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'تۈركىيە تاماقلىرىنىڭ مۇھىم تەمى.';
            break;
          case 'geology':
            descriptionPrefix = 'تۈركىيەنىڭ مۇھىم جىئولوگىيىلىك ئالاھىدىلىكى.';
            break;
          case 'seas':
            descriptionPrefix = 'تۈركىيەنى ئوراپ تۇرغان مۇھىم دېڭىز.';
            break;
          case 'museums':
            descriptionPrefix = 'تۈركىيەدىكى مۇھىم مۇزېي.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'تۈركىيەدىكى مۇھىم تەتىل جايى.';
            break;
        }
      } else if (locale.startsWith('az')) {
        // Azerbaijani translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Türk tarixində mühüm şəxs.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Türk dünyasında mühüm dövlət.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Türk tarixində mühüm yer.';
            break;
          case 'geographical':
            descriptionPrefix = 'Türkiyənin mühüm coğrafi xüsusiyyəti.';
            break;
          case 'cultural':
            descriptionPrefix = 'Türk mədəniyyətinin mühüm elementi.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Türk mətbəxinin mühüm dadı.';
            break;
          case 'geology':
            descriptionPrefix = 'Türkiyənin mühüm geoloji xüsusiyyəti.';
            break;
          case 'seas':
            descriptionPrefix = 'Türkiyəni əhatə edən mühüm dəniz.';
            break;
          case 'museums':
            descriptionPrefix = 'Türkiyədə mühüm muzey.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Türkiyədə mühüm tətil yeri.';
            break;
        }
      } else if (locale.startsWith('ky')) {
        // Kyrgyz translations
        switch (category) {
          case 'figures':
            descriptionPrefix = 'Түрк тарыхындагы маанилүү инсан.';
            break;
          case 'historical_states':
          case 'modern_states':
            descriptionPrefix = 'Түрк дүйнөсүндөгү маанилүү мамлекет.';
            break;
          case 'historical_places':
            descriptionPrefix = 'Түрк тарыхындагы маанилүү жер.';
            break;
          case 'geographical':
            descriptionPrefix = 'Түркиянын маанилүү географиялык өзгөчөлүгү.';
            break;
          case 'cultural':
            descriptionPrefix = 'Түрк маданиятынын маанилүү элементи.';
            break;
          case 'gastronomy':
            descriptionPrefix = 'Түрк тамагынын маанилүү даамы.';
            break;
          case 'geology':
            descriptionPrefix = 'Түркиянын маанилүү геологиялык өзгөчөлүгү.';
            break;
          case 'seas':
            descriptionPrefix = 'Түркияны курчап турган маанилүү деңиз.';
            break;
          case 'museums':
            descriptionPrefix = 'Түркиядагы маанилүү музей.';
            break;
          case 'holiday_destinations':
            descriptionPrefix = 'Түркиядагы маанилүү эс алуу жери.';
            break;
        }
      } else {
        // For other languages, use English as fallback
        descriptionPrefix = 'An important element of Turkish culture and history.';
      }
    } else {
      descriptionPrefix = 'Türk kültürünün önemli bir unsuru.';
    }
    
    // Build content with description and years if available
    String content = '${item['name']} - $descriptionPrefix';
    
    if (item.containsKey('years') && item['years'] != null && item['years']!.isNotEmpty) {
      content = '$content\n\n$yearsLabel: ${item['years']}';
    }
    
    return content;
  }
  
  /// Get random Turkish culture information
  /// Returns information from various categories based on weights
  /// All content is localized based on the app's language setting
  static Map<String, String>? getRandomInfo(BuildContext? context) {
    if (context == null) return null;
    
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return null;
    
    final rand = _random.nextDouble();
    double cumulative = 0.0;
    String? selectedCategory;
    
    // Select category based on weights
    for (final entry in _categoryWeights.entries) {
      cumulative += entry.value;
      if (rand <= cumulative) {
        selectedCategory = entry.key;
        break;
      }
    }
    
    if (selectedCategory == null || !_categories.containsKey(selectedCategory)) {
      selectedCategory = 'figures'; // Fallback
    }
    
    final categoryItems = _categories[selectedCategory]!;
    
    // Check if all info has been shown, if so reset
    final totalInfoCount = _categories.values.fold<int>(0, (sum, items) => sum + items.length);
    if (_shownInfoKeys.length >= totalInfoCount) {
      _shownInfoKeys.clear();
    }
    
    Map<String, String>? selectedInfo;
    String? infoKey;
    int attempts = 0;
    const maxAttempts = 100;
    
    while (selectedInfo == null && attempts < maxAttempts) {
      attempts++;
      
      // Try to get an item that hasn't been shown
      final availableItems = categoryItems.where((item) {
        final key = '${selectedCategory}_${item['id']}';
        return !_shownInfoKeys.contains(key);
      }).toList();
      
      if (availableItems.isEmpty) {
        // All items shown, reset and try again
        _shownInfoKeys.removeWhere((key) => key.startsWith('${selectedCategory}_'));
        if (categoryItems.isNotEmpty) {
          // Try a few items to find one with localized content
          int resetAttempts = 0;
          const maxResetAttempts = 30;
          while (selectedInfo == null && resetAttempts < maxResetAttempts && categoryItems.isNotEmpty) {
            resetAttempts++;
            final item = categoryItems[_random.nextInt(categoryItems.length)];
            infoKey = '${selectedCategory}_${item['id']}';
            // Only use localized content, skip if not available (no generic fallback)
            final content = _getLocalizedContent(l10n, selectedCategory, item['id']!);
            // Only proceed if we have real localized content (not generic fallback)
            if (content != null && content.isNotEmpty && 
                !content.contains('Türk tarihinin önemli') && 
                !content.contains('An important') &&
                !content.contains('Een belangrijke') &&
                !content.contains('Eine wichtige') &&
                !content.contains('Une figure') &&
                !content.contains('Важная') &&
                !content.contains('महत्वपूर्ण') &&
                !content.contains('重要な') &&
                !content.contains('اہم') &&
                !content.contains('مۇھىم') &&
                !content.contains('mühüm') &&
                !content.contains('маанилүү')) {
              // Get localized title (preserves original alphabet/characters)
              final title = _getLocalizedTitle(l10n, selectedCategory, item['id']!, item['name']!);
              selectedInfo = {
                'type': selectedCategory,
                'title': title,
                'content': content,
              };
              if (item.containsKey('flag')) {
                selectedInfo['title'] = '${item['flag']} $title';
              }
              // Add years to content if available (only if content doesn't already include years)
              if (item.containsKey('years') && item['years'] != null && item['years']!.isNotEmpty) {
                // Check if content already includes years information
                if (!content.contains('Yıllar') && !content.contains('Years') && !content.contains('Годы') && 
                    !content.contains('Jahre') && !content.contains('Années') && !content.contains('年') &&
                    !content.contains('वर्ष') && !content.contains('Jaren') && !content.contains('سال') &&
                    !content.contains('يىللار') && !content.contains('İllər') && !content.contains('Жылдар')) {
                  // Get localized "Years" text based on locale
                  final locale = l10n.localeName;
                  final yearsLabel = locale.startsWith('tr') ? 'Yıllar' : 
                                    (locale.startsWith('ru') ? 'Годы' : 
                                    (locale.startsWith('de') ? 'Jahre' : 
                                    (locale.startsWith('fr') ? 'Années' : 
                                    (locale.startsWith('ja') ? '年' : 
                                    (locale.startsWith('hi') ? 'वर्ष' :
                                    (locale.startsWith('nl') ? 'Jaren' :
                                    (locale.startsWith('ur') ? 'سال' :
                                    (locale.startsWith('ug') ? 'يىللار' :
                                    (locale.startsWith('az') ? 'İllər' :
                                    (locale.startsWith('ky') ? 'Жылдар' : 'Years'))))))))));
                  selectedInfo['content'] = '${content}\n\n$yearsLabel: ${item['years']}';
                }
              }
              break; // Found valid content, exit loop
            }
          }
        }
      } else {
        final item = availableItems[_random.nextInt(availableItems.length)];
        infoKey = '${selectedCategory}_${item['id']}';
        // Only use localized content, skip if not available (no generic fallback)
        final content = _getLocalizedContent(l10n, selectedCategory, item['id']!);
        // Only proceed if we have real localized content
        if (content != null && content.isNotEmpty && !content.contains('Türk tarihinin önemli') && !content.contains('An important')) {
          // Get localized title (translates category names but keeps proper nouns in Turkish)
          final title = _getLocalizedTitle(l10n, selectedCategory, item['id']!, item['name']!);
          selectedInfo = {
            'type': selectedCategory,
            'title': title,
            'content': content,
          };
          if (item.containsKey('flag')) {
            selectedInfo['title'] = '${item['flag']} $title';
          }
          // Add years to content if available (only if content doesn't already include years)
          if (item.containsKey('years') && item['years'] != null && item['years']!.isNotEmpty) {
            // Check if content already includes years information
            if (!content.contains('Yıllar') && !content.contains('Years') && !content.contains('Годы') && 
                !content.contains('Jahre') && !content.contains('Années') && !content.contains('年') &&
                !content.contains('वर्ष') && !content.contains('Jaren') && !content.contains('سال') &&
                !content.contains('يىللار') && !content.contains('İllər') && !content.contains('Жылдар')) {
              // Get localized "Years" text based on locale
              final locale = l10n.localeName;
              final yearsLabel = locale.startsWith('tr') ? 'Yıllar' : 
                                (locale.startsWith('ru') ? 'Годы' : 
                                (locale.startsWith('de') ? 'Jahre' : 
                                (locale.startsWith('fr') ? 'Années' : 
                                (locale.startsWith('ja') ? '年' : 
                                (locale.startsWith('hi') ? 'वर्ष' :
                                (locale.startsWith('nl') ? 'Jaren' :
                                (locale.startsWith('ur') ? 'سال' :
                                (locale.startsWith('ug') ? 'يىللار' :
                                (locale.startsWith('az') ? 'İllər' :
                                (locale.startsWith('ky') ? 'Жылдар' : 'Years'))))))))));
              selectedInfo['content'] = '${content}\n\n$yearsLabel: ${item['years']}';
            }
          }
        }
      }
    }
    
    // Fallback if no info was selected - try a few more items to find one with localized content
    if (selectedInfo == null && categoryItems.isNotEmpty) {
      int fallbackAttempts = 0;
      const maxFallbackAttempts = 30;
      while (selectedInfo == null && fallbackAttempts < maxFallbackAttempts && categoryItems.isNotEmpty) {
        fallbackAttempts++;
        final item = categoryItems[_random.nextInt(categoryItems.length)];
        infoKey = '${selectedCategory}_${item['id']}';
        // Only use localized content, skip if not available (no generic fallback)
        final content = _getLocalizedContent(l10n, selectedCategory, item['id']!);
        // Only proceed if we have real localized content (not generic fallback)
        if (content != null && content.isNotEmpty && 
            !content.contains('Türk tarihinin önemli') && 
            !content.contains('An important') &&
            !content.contains('Een belangrijke') &&
            !content.contains('Eine wichtige') &&
            !content.contains('Une figure') &&
            !content.contains('Важная') &&
            !content.contains('महत्वपूर्ण') &&
            !content.contains('重要な') &&
            !content.contains('اہم') &&
            !content.contains('مۇھىم') &&
            !content.contains('mühüm') &&
            !content.contains('маанилүү')) {
          // Get localized title (preserves original alphabet/characters)
          final title = _getLocalizedTitle(l10n, selectedCategory, item['id']!, item['name']!);
          selectedInfo = {
            'type': selectedCategory,
            'title': title,
            'content': content,
          };
          if (item.containsKey('flag')) {
            selectedInfo['title'] = '${item['flag']} $title';
          }
          // Add years to content if available (only if content doesn't already include years)
          if (item.containsKey('years') && item['years'] != null && item['years']!.isNotEmpty) {
            // Check if content already includes years information
            if (!content.contains('Yıllar') && !content.contains('Years') && !content.contains('Годы') && 
                !content.contains('Jahre') && !content.contains('Années') && !content.contains('年') &&
                !content.contains('वर्ष') && !content.contains('Jaren') && !content.contains('سال') &&
                !content.contains('يىللار') && !content.contains('İllər') && !content.contains('Жылдар')) {
              // Get localized "Years" text based on locale
              final locale = l10n.localeName;
              final yearsLabel = locale.startsWith('tr') ? 'Yıllar' : 
                                (locale.startsWith('ru') ? 'Годы' : 
                                (locale.startsWith('de') ? 'Jahre' : 
                                (locale.startsWith('fr') ? 'Années' : 
                                (locale.startsWith('ja') ? '年' : 
                                (locale.startsWith('hi') ? 'वर्ष' :
                                (locale.startsWith('nl') ? 'Jaren' :
                                (locale.startsWith('ur') ? 'سال' :
                                (locale.startsWith('ug') ? 'يىللار' :
                                (locale.startsWith('az') ? 'İllər' :
                                (locale.startsWith('ky') ? 'Жылдар' : 'Years'))))))))));
              selectedInfo['content'] = '${content}\n\n$yearsLabel: ${item['years']}';
            }
          }
          break; // Found valid content, exit loop
        }
      }
    }
    
    // Mark this info as shown
    if (infoKey != null && selectedInfo != null) {
      _shownInfoKeys.add(infoKey);
    }
    
    return selectedInfo;
  }
}
