import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'core/app_export.dart';

// Screen sequence
// Unauthorized ->
// startScreen1Screen -> startScreen2Screen -> startScreen3Screen -> modeScreen -> registerScreen -> then anyway goes to - see below
// Authorized ->
// logedInLevelSelectScreen -> advancedLevelScreen

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // !!! FirebaseAuth.instance.signOut() //here is for emulator purpose only!!!!!!
  await FirebaseAuth.instance.signOut();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    PrefUtils().init()
  ]).then((value) {
    runApp(ProviderScope(child: MyApp()));
  });
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final themeType = ref.watch(themeNotifier).themeType;
    return Sizer(
      builder: (context, orientation, deviceType) {
        return StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return MaterialApp(
                  theme: theme,
                  title: 'mantra_new_design_june',
                  home: Scaffold(
                    body: Center(child: CircularProgressIndicator()),
                  ),
                );
              } else {
                bool isLoggedIn = snapshot.hasData;
                return MaterialApp(
                  theme: theme,
                  title: 'mantra_new_design_june',
                  navigatorKey: NavigatorService.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: [
                    AppLocalizationDelegate(),
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate
                  ],
                  supportedLocales: [
                    Locale(
                      'en',
                      '',
                    )
                  ],
                  initialRoute: isLoggedIn
                      ? AppRoutes.initialRouteAuthorized
                      : AppRoutes.initialRoute,
                  routes: AppRoutes.oldRoutes,
                );
              }
            });
      },
    );
  }
}
