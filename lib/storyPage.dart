
import 'package:flutter/material.dart';
import 'storyDetails.dart';

// ignore: camel_case_types, must_be_immutable
class storyPage extends StatelessWidget{

  late int storyID;
  late String storyImage = storyD[storyID].image;
  storyPage(this.storyID, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height / 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: storyD[storyID].color,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:50),
                            padding: const EdgeInsets.all(20),
                            child: Hero(tag: '$storyID', child: Image(image: AssetImage('images/$storyImage'))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          storyD[storyID].title,
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontSize: 40, fontFamily: 'koodk' , ), 
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 5 , left: 5),
                          child: Text(
                            storyD[storyID].story,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              height: 1.3,
                              fontSize: 20,
                              fontFamily: 'koodk',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



}