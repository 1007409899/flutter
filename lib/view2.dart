import 'package:flutter/material.dart';

class View2 extends StatelessWidget {
  const View2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 333,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(0),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.dhgate.com/0x0s/f2-albu-g9-M00-F7-01-rBVaVVy9uROAL0uZAAKKw3JZg_E006.jpg/nueva-llegada-de-s-per-brillante-llevado.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 59, 126),
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Color.fromARGB(255, 243, 243, 243),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 42, 106, 189),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 58.0, top: 10),
                  child: Text("Show all",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 87, 150),
                      )),
                ),
              ],
            ),
          ),
          Column(
            children: [
              cuadras("No tears Left", "5:4  ---"),
              cuadras("No sirnds", "5:20 ---"),
              cuadras("love with me", "2:30  ---"),
              cuadras("I can Love", "4:30  ---"),
            ],
          )
        ],
      ),
    );
  }

  cuadras(String tonos, String min) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 30,
          right: 40,
          bottom: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tonos,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 65, 87, 150),
                )),
            Text(min,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 65, 87, 150),
                )),
          ],
        ));
  }
}
