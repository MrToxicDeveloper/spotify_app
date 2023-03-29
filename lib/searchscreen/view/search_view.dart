import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  List name = [
    "Podcasts",
    "Live Events",
    "Made for you",
    "Hindi",
    "Tamil",
    "Telugu",
    "Punjabi",
    "Pop",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              // color: Colors.red,
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
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search_rounded),
                          Text("Artist, songs, or podcasts")
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.mic_none,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Browse all",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 110,
                      margin: EdgeInsets.all(15),
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("${name[index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    );
                  },),
            )
          ],
        ),
      ),
    );
  }
}
