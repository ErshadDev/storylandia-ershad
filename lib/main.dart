import 'package:flutter/material.dart';
import 'storyPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'کتاب',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'کتاب کودک'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  

  


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
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
              ), onPressed: () {  },
            ),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(
                widget.title,
                style: const TextStyle(fontSize: 35 , fontFamily: "Chewy", color: Colors.black),
              ),
              actions: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 5 , left: 0 , top: 5 , bottom: 5),
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                  ),
                  child: FittedBox(
                    child: Image.asset("images/girl.jpg"),
                  ),
                ),
              ],
          ),
          body: 
            ListView(
              children: [
                getPackageContainer(
                  0, 
                  'leon.jpg',
                  'جوجه اردک زشت',
                  "روزی روزگاری اردکی 6 تخم گذاشت بعد از گذشت مدتی تخم ها شروع کردن به باز شدن", 
                  Colors.orange.shade300),
                getPackageContainer(
                  1,
                  'monky.jpg',
                  'شیر ساطان جنگل',
                  'روزی روزگاری شیری سلطان جنگل بود و برای غذا به شکار رفته بود این شیر میخواست که',
                  Colors.red.shade300),
                  getPackageContainer(
                  2,
                  'monky.jpg',
                  'موش و گربه',
                  'روزی موشی به دنبال پنیر میگشت که ناگهان صدای یک گربه را شنید که میخواهد او را بگیرد',
                  Colors.green.shade300),
                  getPackageContainer(
                  3,
                  'leon.jpg',
                  'خر همسایه',
                  'روزی همسایه خر خود را میخواست به شهر برای تداوی ببرد و برای اینکار باید از محلات گوناگون عبور',
                  Colors.grey.shade300),
                  getPackageContainer(
                  4,
                  'monky.jpg',
                  'شیر ساطان جنگل',
                  'روزی روزگاری شیری سلطان جنگل بود و برای غذا به شکار رفته بود این شیر میخواست که',
                  Colors.blue.shade300),
              ],
            ),
           ),
        ),
      );
  }

  Container getPackageContainer(int id , String imageName , String titleStory , String subText , Color colorx){
    
    // ignore: avoid_unnecessary_containers
    return Container(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => animalsPage(id))));
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
                              child : Image(
                                image: AssetImage('images/$imageName'),
                                height: MediaQuery.of(context).size.height / 6,
                                width: MediaQuery.of(context).size.width / 4,
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
