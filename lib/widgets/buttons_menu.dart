import 'package:flutter/material.dart';

class ButtonsMenu extends StatelessWidget {
  final String textName;
  final String pushto;
  final IconData icon;
  const ButtonsMenu(
      {super.key,
      required this.textName,
      required this.icon,
      required this.pushto});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(pushto);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        height: 48,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xff6600A1),
                Color.fromARGB(255, 106, 50, 209),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            )),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icon,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                textName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
