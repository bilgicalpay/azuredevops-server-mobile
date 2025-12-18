// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:azuredevops_onprem/main.dart';
import 'package:azuredevops_onprem/services/storage_service.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Create a mock storage service for testing
    final storage = StorageService();
    await storage.init();
    
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(storage: storage));

    // Verify that the app loads (check for login screen or home screen)
    // The app should show either login screen or home screen depending on auth state
    // Use pumpAndSettle with timeout to avoid infinite waiting
    await tester.pumpAndSettle(const Duration(seconds: 5));
    
    // App should have loaded successfully
    expect(find.byType(MaterialApp), findsOneWidget);
  }, timeout: const Timeout(Duration(seconds: 30)));
}
