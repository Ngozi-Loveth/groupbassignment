import 'package:assignment/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../helper/boxpicture_helper.dart';
import '../helper/boxtext_help.dart';

class Box2 extends StatefulWidget {
  const Box2({Key? key}) : super(key: key);

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Container(),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: 200,
            width: 174,
            decoration: const BoxDecoration(
                color: Color.fromARGB(234, 233, 230, 223),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(bigText: 'Pizza Chesse'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'Food pizza, dish cuisine \n junk food, Fast Food,\n Flatbread, Ingredient'),
                      ],
                    ),
                  ),
                  const BigText(bigText: '\$23'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 174,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child: Container(
                  child: const PizzaImage(nameImage: 'chessepizza.png')),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Container(margin: const EdgeInsets.only(left: 118),
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color.fromARGB(255, 234, 230, 223)),
              padding: const EdgeInsets.all(2.0),
              child: const Icon(Icons.favorite_outline_sharp),
            ),
          ),
          ButtonWidget(
              buttonheight: 40,
              buttonMarginT: 205,
              buttonMarginL: 40,
              buttonMarginR: 40,
              buttonText: 'Order Now',
              onTap: () {},
              borderRadius: 30)
        ],
      ),
    );
  }
}
