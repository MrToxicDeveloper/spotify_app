import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/homescreen/view/home_view.dart';
import 'package:spotify_app/libraryscreen/view/library-view.dart';
import 'package:spotify_app/searchscreen/view/search_view.dart';

import '../provider/bottom_provider.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {

  List screens = [HomeView(), SearchView(), LibraryView()];

  BottomPro? proTrue;
  BottomPro? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<BottomPro>(context, listen: true);
    proFalse = Provider.of<BottomPro>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: screens[proTrue!.i],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white38,
          selectedItemColor: Colors.white,
          onTap: (value) {
            proFalse!.changeBottom(value);
          },
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Your Library'),
        ],),
      ),
    );
  }
}
