
import 'package:flutter/material.dart';
import 'storyDetails.dart';

// ignore: camel_case_types, must_be_immutable
class animalsPage extends StatelessWidget{

  late int storylID;

  animalsPage(this.storylID, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: storyD[storylID].color,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top :40),
                        child: IconButton(onPressed: () { 
                          Navigator.pop(context);
                         },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Colors.white,
                        ),

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(storyD[storylID].image),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



}