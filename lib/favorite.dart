import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List favoriteInfo = [
    {
      "subject": "الرياضيات",
      "description": "الدرس الاول الكسور العشرية",
      "img": "assets/images/img.png"
    },
    {
      "subject": "اللغة العربية",
      "description": "الدرس الاول نحو الفعل المضارع",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // to set color toolBar fir mobile same color appBar
          statusBarColor: Colors.transparent, // <-- SEE HERE
        ),
        backgroundColor: const Color(0xff6600a1),
        // hide back button
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "المفضلة",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),

        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('home');
              },
              icon: const Icon(
                Icons.keyboard_arrow_right,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),

      // Body of Page
      body: Container(
          color: const Color.fromARGB(255, 241, 241, 241),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

          //
          child: Expanded(
            child: ListView.builder(
              itemCount: favoriteInfo.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 85,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.only(
                    bottom: 7,
                    top: 7,
                    right: 7,
                    left: 13,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                        )
                      ]),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.asset(favoriteInfo[index]['img'])),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              favoriteInfo[index]["subject"],
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              favoriteInfo[index]["description"],
                              style: const TextStyle(
                                  fontSize: 14, color: Color(0xff707070)),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )),
    );
  }
}
