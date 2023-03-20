import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
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
                          CircleAvatar(
                            child: Text(
                              "T",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            backgroundColor: Colors.pink,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Your Library",
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
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add,
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
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.compare_arrows_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Most recent",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.list,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("lib/utils/images/beliver.jpg"),
              title: Text(
                "RIDING",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Playlist | TOXIC",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "Add artist",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
