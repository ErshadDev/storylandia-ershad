// ignore: file_names
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
                  
                )
              ),
            ),
          ],
        ),
      ),
    );
  }



}