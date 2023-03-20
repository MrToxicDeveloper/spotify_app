import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/bottombarscreen/provider/bottom_provider.dart';
import 'package:spotify_app/bottombarscreen/view/bottom_view.dart';
import 'package:spotify_app/homescreen/provider/home_provider.dart';
import 'package:spotify_app/homescreen/view/home_view.dart';
import 'package:spotify_app/libraryscreen/view/library-view.dart';
import 'package:spotify_app/searchscreen/view/search_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomPro(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => BottomBarView(),
          'home': (context) => HomeView(),
          'search': (context) => SearchView(),
          'library': (context) => LibraryView(),
        },
      ),
    ),
  );
}
