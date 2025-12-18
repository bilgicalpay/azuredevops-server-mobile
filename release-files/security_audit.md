# Security Audit Report - 2025-12-18

## Dependency Vulnerabilities

Showing outdated packages.
[*] indicates versions that are not the latest available.

Package Name                                    Current  Upgradable  Resolvable  Latest   

direct dependencies:                           
flutter_local_notifications                     *17.2.4  *17.2.4     19.5.0      19.5.0   
flutter_markdown                                *0.6.23  *0.6.23     0.7.7+1     0.7.7+1  (discontinued)  
flutter_secure_storage                          *9.2.4   *9.2.4      10.0.0      10.0.0   
http                                            *1.2.0   *1.2.0      1.6.0       1.6.0    
intl                                            *0.18.1  *0.18.1     0.20.2      0.20.2   
package_info_plus                               *5.0.1   *5.0.1      9.0.0       9.0.0    
shared_preferences                              *2.2.3   *2.2.3      2.5.4       2.5.4    
web_socket_channel                              *2.4.3   *2.4.3      3.0.3       3.0.3    

dev_dependencies: all up-to-date.              

transitive dependencies:                       
dio_web_adapter                                 *1.1.1   *1.1.1      2.1.1       2.1.1    
flutter_local_notifications_linux               *4.0.1   *4.0.1      6.0.0       6.0.0    
flutter_local_notifications_platform_interface  *7.2.0   *7.2.0      9.1.0       9.1.0    
flutter_local_notifications_windows             -        -           1.0.3       1.0.3    
flutter_secure_storage_darwin                   -        -           0.2.0       0.2.0    
flutter_secure_storage_linux                    *1.2.3   *1.2.3      3.0.0       3.0.0    
flutter_secure_storage_macos                    *3.1.3   *3.1.3      -           4.0.0    
flutter_secure_storage_platform_interface       *1.1.2   *1.1.2      2.0.1       2.0.1    
flutter_secure_storage_web                      *1.2.1   *1.2.1      2.1.0       2.1.0    
flutter_secure_storage_windows                  *3.1.2   *3.1.2      4.1.0       4.1.0    
js                                              *0.6.7   *0.6.7      -           0.7.2    (discontinued)  
package_info_plus_platform_interface            *2.0.1   *2.0.1      3.2.1       3.2.1    
shared_preferences_web                          *2.2.2   *2.2.2      2.4.3       2.4.3    
timezone                                        *0.9.4   *0.9.4      0.10.1      0.10.1   
url_launcher_web                                *2.2.3   *2.2.3      2.4.1       2.4.1    
web                                             *0.4.2   *0.4.2      1.1.1       1.1.1    
web_socket                                      -        -           1.0.1       1.0.1    

20  dependencies are constrained to versions that are older than a resolvable version.
To update these dependencies, edit pubspec.yaml, or run `flutter pub upgrade --major-versions`.

flutter_markdown
    Package flutter_markdown has been discontinued, replaced by flutter_markdown_plus. See https://dart.dev/go/package-discontinue
js
    Package js has been discontinued. See https://dart.dev/go/package-discontinue

## Flutter Dependencies
dependencies:
  flutter:
    sdk: flutter

  # UI ve temel paketler
  cupertino_icons: ^1.0.8
  google_fonts: ^6.1.0
  
  # HTTP ve ağ işlemleri
  http: ^1.1.0
  dio: ^5.4.0
  web_socket_channel: ^2.4.3
  
  # Yerel depolama ve state yönetimi
  shared_preferences: ^2.2.2
  flutter_secure_storage: ^9.0.0  # Güvenli token saklama için
  provider: ^6.1.1
  
  # Tarih/saat ve uluslararasılaştırma
  intl: ^0.18.1
  
  # URL açma ve paket bilgileri
  url_launcher: ^6.2.2
  package_info_plus: ^5.0.1
  
  # Bildirimler
  flutter_local_notifications: ^17.0.0
  
  # Background tasks (uygulama kapalıyken çalışmak için)
  flutter_background_service: ^5.0.5
  flutter_background_service_android: ^6.3.1
  
  # İçerik render etme
  flutter_html: ^3.0.0-beta.2
  flutter_markdown: ^0.6.23  # Markdown rendering için

dev_dependencies:
  flutter_test:
    sdk: flutter

  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^6.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - assets/images/logo.png

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/to/resolution-aware-images

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/to/asset-from-package

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/to/font-from-package
