import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_vivek/app.dart';
import 'providers/firestore_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:portfolio_vivek/firebase_config.dart';
import 'package:portfolio_vivek/screens/splash.screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//! Function to load assets which is loaded when splash screen is being showed
  Future<bool> loadAssets() async {
    // Load the AssetManifest.json file
    final manifestJson = await rootBundle.loadString('AssetManifest.json');
    final manifestMap = json.decode(manifestJson);
    // Collect all the assets in the 'assets' folder
    final assets = manifestMap.keys
        .where((String key) => key.startsWith('assets/'))
        .where((String key) => key.contains('/'))
        .where((String key) => !key.endsWith('.svg'))
        .toList();
    // Load all the assets
    final futures = assets.map((String asset) {
      return rootBundle.load(asset);
    });
    await Future.wait(futures);
    return true;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogPostProvider(),
      child: MaterialApp(
        title: 'VivekS. portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color(0xFF0BDA74),
            useMaterial3: true,
            textTheme: GoogleFonts.firaSansTextTheme()),
        home: FutureBuilder<bool>(
          //! To check if assets are being loaded or not
          future: loadAssets(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const App();
            } else {
              return const SplashScreen();
            }
          },
        ),
      ),
    );
  }
}
