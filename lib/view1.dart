import 'package:flutter/material.dart';

class View1 extends StatelessWidget {
  const View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 9, 78, 182),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              imageMenu(),
              cuadros(),
              Container(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Color.fromARGB(255, 153, 143, 143),
                      fontSize: 15,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ]));
  }

  imageMenu() {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Chalie Lamp",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 221, 221, 221)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 0),
                  child: Text(
                    " \$55.000 ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 221, 221, 221)),
                  ),
                ),
              ],
            ),
            CircleAvatar(
              maxRadius: 30,
              backgroundColor: Color.fromARGB(255, 245, 159, 0),
              child: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 243, 243, 243),
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            )
          ],
        ));
  }

  Widget cuadros() {
    return Padding(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            caja(Icons.star, "5", "estrellas"),
            caja(Icons.power, "5", "Power"),
            caja(Icons.list, "3", "estrellas"),
            caja(Icons.fullscreen, "5", "Fullscreen"),
          ],
        ));
  }

  Widget caja(IconData icon, String b, String c) {
    return Container(
      child: Column(
        children: [
          Icon(
            icon,
            color: Color.fromARGB(255, 245, 159, 0),
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Text(
            b,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 159, 0)),
          ),
          Text(
            c,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 245, 159, 0)),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 82, 127, 184),
      ),
      height: 75,
      width: 64,
    );
  }
}
