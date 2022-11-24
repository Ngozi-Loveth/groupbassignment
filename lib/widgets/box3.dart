import 'package:assignment/screens/neworder_page.dart';
import 'package:assignment/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../helper/boxpicture_helper.dart';
import '../helper/boxtext_help.dart';

class Box3 extends StatefulWidget {
  const Box3({Key? key}) : super(key: key);

  @override
  State<Box3> createState() => _Box3State();
}

class _Box3State extends State<Box3> {
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
                  const BigText(bigText: 'Mexican Green Wave'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'A pizza loaded with,  \ncrunchy onions, crisp \ncapsicum juicy tomatoes'),
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
              child:
                  Container(child: const PizzaImage(nameImage: 'image 16 (1).png')),
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NeworderPage();
                }));
              },
              borderRadius: 30)
        ],
      ),
    );
  }
}
