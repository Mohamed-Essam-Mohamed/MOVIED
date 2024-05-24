import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'init_app.dart';
import 'src/data/api/api_manger.dart';
import 'src/feature/home/view/home_screen.dart';
import 'src/feature/home_details/home_details.dart';
import 'src/utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Movies App',
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          initialRoute: InitApp.routeName,
          routes: {
            InitApp.routeName: (context) => InitApp(),
            HomeScreen.routeName: (context) => HomeScreen(),
            HomeDetails.routeName: (context) => HomeDetails(),
          },
        );
      },
    );
  }
}
