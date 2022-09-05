import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  List<List<dynamic>> tusLists = [
    [
      "https://library.the1.co.th/content/dam/the1/articles/image/2021-08/1H2108002-pic1.jpeg",
      "ฮาโวเทียหยดน้ำ (Haworthia cooperi)",
      280
    ],
    [
      "https://library.the1.co.th/content/dam/the1/articles/image/2021-08/1H2108002-pic2.jpeg",
      "หมวกสังฆราช (Bishop's Cap Cactus)",
      1000
    ],
    [
      "https://library.the1.co.th/content/dam/the1/articles/image/2021-08/1H2108002-pic3.jpeg",
      "แมมขนนก (Feather Cactus)",
      450
    ],
    [
      "https://library.the1.co.th/content/dam/the1/articles/image/2021-08/1H2108002-pic4.jpeg",
      "ยิมโนแคคตัส (Moon cactus)",
      1200
    ],
    [
      "https://library.the1.co.th/content/dam/the1/articles/image/2021-08/1H2108002-pic5.jpeg",
      "แคคตัสหูกระต่าย (Bunny Ear Cactus)",
      340
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tusLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      tusLists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${tusLists[index][1]}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${tusLists[index][2]}",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
