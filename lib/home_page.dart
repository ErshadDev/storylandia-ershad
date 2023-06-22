
import 'package:flutter/material.dart';
import 'package:storylandia/storyPage.dart';

import 'drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: _globalKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
              centerTitle: true,
              // elevation: 0,
            leading: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.menu,
                color: Colors.orange,
                size: 30,
              ), onPressed: () { 
                _globalKey.currentState?.openDrawer();
               },
            ),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text(
                "کتاب کودک",
                style: TextStyle(fontSize: 35 , fontFamily: "koodk", color: Colors.black),
              ),
              actions: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 5 , left: 0 , top: 5 , bottom: 5),
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                  ),
                  child: FittedBox(
                    child: Image.asset("images/girl.png"),
                  ),
                ),
              ],
          ),
          body: 
            ListView(
              children: [
                getPackageContainer(
                  0, 
                  'monky.png',
                  'خانواده‌ی میمون کوچولو',
                  "توی یک جنگل سبز، حیوانات زیادی زندگی می‌کردند. یکی از این روزا میمون کوچولوی قصه‌ی ما تک و تنها به جنگل سبز آمد.", 
                  Colors.orange.shade300),
                getPackageContainer(
                  1,
                  'elephant.png',
                  'فیل تنها در جنگل',
                  'یکی بود یکی نبود. یک روز یک فیل وارد یک جنگل شد و دنبال دوست می‌گشت. فیل قصه ما روی درخت یک میمون رو دید. ازش پرسید باهام دوست میشی؟',
                  Colors.indigo),
                  getPackageContainer(
                  2,
                  'pigeon.png',
                  'خانواده‌ی کبوتر',
                  'یکی بود یکی نبود. توی جنگل‌های شمال ایران، کنار یک رودخانه، درخت بزرگی قرار داشت که کبوتر پدر و کبوتر مادری با جوجه‌هایشان روی آن درخت زندگی می‌کردند.',
                  Colors.green.shade300),
                  getPackageContainer(
                  3,
                  'leon.png',
                  'شیر احمق',
                  'داخل یک جنگل، شیری زندگی می‌کرد. شیر قصه ما پیر شده بود و نمی‌تونست سریع بدوه. هر روزی که می‌گذشت شکار کردن براش سخت‌تر می‌شد',
                  Colors.red.shade800),
                  getPackageContainer(
                  4,
                  'rabbit.png',
                  ' چهار خرگوش کوچولو',
                  'روزی و روزگاری، در جنگلی پر از درخت‌های سوزنی، چهار بچه خرگوش همراه مادرشان در حفره‌ای شنی زیر ریشه‌های یک درخت زندگی می‌کردند. اسم‌های آن‌ها،',
                  Colors.blue.shade300),
              ],
            ),
            drawer: const drawerWidget(),
           ),
        ),
      );
  }

  Container getPackageContainer(int id , String imageName , String titleStory , String subText , Color colorx){
    
    // ignore: avoid_unnecessary_containers
    return Container(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => storyPage(id))));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  color: colorx,
                ),
                margin: const EdgeInsets.only(right: 15 , left: 15 , top: 15 , bottom: 10),      
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child : Hero(
                                tag: '$id',
                                child: Image(
                                  image: AssetImage('images/$imageName'),
                                  height: MediaQuery.of(context).size.height / 6,
                                  width: MediaQuery.of(context).size.width / 4,
                                  ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10,),
                                      width: (MediaQuery.of(context).size.width / 4) * 2,
                                      child: Text(
                                        titleStory,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'koodk'
                                        )
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.only(top: 5) ,
                                      width: (MediaQuery.of(context).size.width / 4) * 2,
                                      child: Text(
                                          subText,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.justify,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            height: 1,
                                            fontFamily: 'koodk'
                                          ),
                                        ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
            ),
          );
  }

}
