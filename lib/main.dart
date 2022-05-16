import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce/authentication/view/authentication.dart';
import 'package:flutter_ecommerce/home/view/navigation_home_view.dart';
import 'package:flutter_ecommerce/modules/product_search/view/product_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-Ticaret Demo',
      theme: ThemeData(
        fontFamily: 'NeusaNextPro',
        highlightColor: Color(0xFFFF6969),
        backgroundColor: Color(0xFF727C8E),
        primaryColor: Color(0xFF515C6F),
        scaffoldBackgroundColor: Color(0xFFF5F6F8),
        drawerTheme: DrawerThemeData(
          scrimColor: Color(0xFFF5F6F8).withOpacity(0.55),
        ),
        appBarTheme: AppBarTheme().copyWith(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xFFF5F6F8), // status bar color
            systemNavigationBarColor: Color(0xFFF5F6F8), // navigation bar color
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => PageGetStared(),
        '/PageHome': (context) => NavigationHomeView(),
        '/PageSearchResult': (context) => PageSearchResult(),
      },
    );
  }
}
