import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdrastk_my/widgets/buttons_menu.dart';

// ignore: camel_case_types
class Menu_Dashboard extends StatelessWidget {
  const Menu_Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 25),

      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.5,
      // width: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Color.fromARGB(255, 241, 233, 233),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // height: 35,
            // width: 35,
            padding: const EdgeInsetsDirectional.all(1),
            // alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xff6600A1),
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
                padding: const EdgeInsets.all(0),
                iconSize: 30,
                onPressed: () {
                  // Close DashBord-Menu Whene Press
                  Scaffold.of(context).closeEndDrawer();
                },
                // icon
                icon: const Icon(
                  Icons.close,
                  // size: 25,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff6600A1),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Mdeastk_Logo-2.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  // App Name
                  const Text(
                    "مدرستك",
                    style: TextStyle(fontSize: 25, color: Color(0xff6600A1)),
                  ),
                  const Text("Mdrastk.com",
                      style: TextStyle(
                          fontSize: 20,
                          height: 0.500,
                          color: Color(0xffFF0000))),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ButtonsMenu(
            textName: "الرئيسية",
            icon: Icons.home_sharp,
            pushto: 'favorite',
          ),
          const ButtonsMenu(
            textName: "المواد الدراسية",
            icon: Icons.menu_book,
            pushto: 'favorite',
          ),
          const ButtonsMenu(
            textName: "الملف الشخصي",
            icon: Icons.account_circle,
            pushto: 'favorite',
          ),
          const ButtonsMenu(
            textName: "المفضلة",
            icon: Icons.favorite,
            pushto: 'favorite',
          ),
          // Divider(
          //   height: 40,
          //   thickness: 2,
          // )
          //
          const Spacer(),
          ////
          // Center(
          //   child: Padding(
          //     padding: const EdgeInsets.only(bottom: 50, left: 10),
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.transparent,
          //           // : Colors.transparent,
          //           side: const BorderSide(
          //             color: Colors.black,
          //             width: 2,
          //           ),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10),
          //           )),
          //       onPressed: () {},
          //       child: Row(
          //         mainAxisSize: MainAxisSize.min,
          //         textDirection: TextDirection.rtl,
          //         children: const [
          //           Icon(
          //             Icons.exit_to_app_rounded,
          //             color: Color(0xff6600A1),
          //           ),
          //           SizedBox(
          //             width: 15,
          //           ),
          //           Text(
          //             "تسجيل الخروج",
          //             style: TextStyle(
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.bold,
          //                 color: Color(0xff6600A1)),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 10),
              child: MaterialButton(
                color: const Color.fromARGB(255, 241, 233, 233),
                // عند النقر تظهر زي الموجة
                splashColor: Colors.blue,
                minWidth: 100,
                height: 45,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.exit_to_app_rounded,
                      color: Color(0xff6600A1),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "تسجيل الخروج",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6600A1)),
                    ),
                  ],
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
