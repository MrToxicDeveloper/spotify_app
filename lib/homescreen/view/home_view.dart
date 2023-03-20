import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/homescreen/provider/home_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeProvider? proTrue;
  HomeProvider? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<HomeProvider>(context, listen: true);
    proFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.black,
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Good evening",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset("lib/utils/images/beliver.jpg",),
                title: Text(
                  "MORE LIKE",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                ),
                subtitle: Text(
                  "RIDING",
                  style: TextStyle(color: Colors.white,fontSize: 30),
                ),
                // trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                        index,
                        proFalse!.name[index] as String,

                        proFalse!.Logo[index] as String);
                  },
                  itemCount: 4,
                ),
              ),

              ListTile(
                title: Text(
                  "Recently played",
                  style: TextStyle(color: Colors.white,fontSize: 30),
                ),
                // trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                      index,
                      proFalse!.name2[index] as String,

                      proFalse!.Logo2[index] as String,
                    );
                  },
                  itemCount: 4,
                ),
              ),
              ListTile(
                title: Text(
                  "India's Best",
                  style: TextStyle(color: Colors.white,fontSize: 30),
                ),
                // trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                        index,
                        proFalse!.name3[index] as String,

                        proFalse!.Logo3[index] as String);
                  },
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
