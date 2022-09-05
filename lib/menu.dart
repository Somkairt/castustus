import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  void GG(int c) {
    c = c + 1;
  }

  List<List<dynamic>> tusLists = [
    [
      "https://cf.shopee.co.th/file/9588f34115591f9f501366124f8323e4",
      "ฮาโวเทียหยดน้ำ (Haworthia cooperi)",
      580,
      0
    ],
    [
      "https://cf.shopee.co.th/file/1c937a3f93fec82b872f05ce6dc74a85",
      "หมวกสังฆราช (Bishop's Cap Cactus)",
      1000,
      0
    ],
    [
      "https://cf.shopee.co.th/file/7818c035c7af35f9ff74aa57920f9543",
      "แมมขนนก (Feather Cactus)",
      450,
      0
    ],
    [
      "https://cf.shopee.co.th/file/c094abe5629f1e5050b79b4c4c749e03",
      "ยิมโนแคคตัส (Moon cactus)",
      1200,
      0
    ],
    [
      "https://cf.shopee.co.th/file/c5d25cecd625caa84d826331f4f14e17",
      "แคคตัสหูกระต่าย (Bunny Ear Cactus)",
      340,
      0
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
                              "${tusLists[index][2]} ฿",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 15),
                            ),
                            RaisedButton(
                              onPressed: () => {
                                GG(tusLists[index][3]++)
                                //do something
                              },
                              child: new Text('Click me'),
                            ),
                            Text(
                              "${tusLists[index][3]} Unit",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
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
