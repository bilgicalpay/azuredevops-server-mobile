/// Ayarlar ekranı
/// 
/// Uygulama ayarlarını yönetir. Wiki URL'si girişi ve
/// mevcut server bilgilerini gösterir.
/// 
/// @author Alpay Bilgiç

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/storage_service.dart';
import '../services/auth_service.dart';

/// Ayarlar ekranı widget'ı
/// Uygulama ayarlarını yönetir
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _wikiUrlController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  @override
  void dispose() {
    _wikiUrlController.dispose();
    super.dispose();
  }

  void _loadSettings() {
    final storage = Provider.of<StorageService>(context, listen: false);
    final wikiUrl = storage.getWikiUrl();
    _wikiUrlController.text = wikiUrl ?? '';
  }

  Future<void> _saveSettings() async {
    setState(() => _isLoading = true);

    final storage = Provider.of<StorageService>(context, listen: false);
    final wikiUrl = _wikiUrlController.text.trim();
    
    if (wikiUrl.isNotEmpty) {
      // Validate URL
      final uri = Uri.tryParse(wikiUrl);
      if (uri == null || !uri.hasScheme) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Geçerli bir URL girin'),
            backgroundColor: Colors.red,
          ),
        );
        setState(() => _isLoading = false);
        return;
      }
    }
    
    await storage.setWikiUrl(wikiUrl.isEmpty ? null : wikiUrl);
    
    setState(() => _isLoading = false);
    
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ayarlar kaydedildi'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Wiki Ayarları',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Azure DevOps wiki dosyasının URL\'sini girin. Bu wiki içeriği ana sayfada gösterilecektir.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _wikiUrlController,
                      decoration: const InputDecoration(
                        labelText: 'Wiki URL',
                        hintText: 'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.link),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _isLoading ? null : _saveSettings,
                      child: _isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Kaydet'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Server URL'),
                subtitle: Text(authService.serverUrl ?? 'N/A'),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('Collection'),
                subtitle: Text(
                  Provider.of<StorageService>(context).getCollection() ?? 'N/A',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

