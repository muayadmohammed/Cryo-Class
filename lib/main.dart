import 'package:TestApp/screens/loading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Auth/Login.dart';
import 'screens/OnboardingScreen.dart';
import 'util/theme_config.dart';

// void main() async {
//   runApp(MyApp());
// }
main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  
  {
    if (seen == null || seen == false) {
      _screen = OnboardingScreen();
    } else {
      _screen = Login();

    }

    runApp(MyApp(_screen));
  }
}
class MyApp extends StatelessWidget {
  @override final Widget _screen;

  MyApp(this._screen);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cryo Class',
      theme: themeData(ThemeConfig.lightTheme),
      // darkTheme: themeData(ThemeConfig.darkTheme),
      home: this._screen,
    );
  }

  ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.sourceSansProTextTheme(
        theme.textTheme,
      ),
    );
  }
}
