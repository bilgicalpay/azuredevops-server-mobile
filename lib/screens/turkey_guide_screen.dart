/// Türkiye Tanıtım Rehberi Ekranı
/// 
/// Türkiye'nin doğal güzellikleri, kültürel mirası, tarihi yerleri,
/// festivalleri ve turistik yerlerini iframe olarak gösteren rehber sayfası.
/// 
/// @author Alpay Bilgiç
library;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../l10n/app_localizations.dart';

/// Türkiye Tanıtım Rehberi Ekranı
class TurkeyGuideScreen extends StatefulWidget {
  const TurkeyGuideScreen({super.key});

  @override
  State<TurkeyGuideScreen> createState() => _TurkeyGuideScreenState();
}

class _TurkeyGuideScreenState extends State<TurkeyGuideScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Progress indicator could be added here if needed
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.bizevdeyokuz.com/en/category/europe/turkey/'));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.turkeyGuideTitle),
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
