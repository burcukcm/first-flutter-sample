import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: "İlham Ver"),
    );
  }

  }


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranbilgisi=MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body:Column(
        children: [
      Padding(
        padding: EdgeInsets.only(top:ekranyuksekligi/25,bottom:ekranyuksekligi/100),
        child: SizedBox(
            width:ekrangenisligi/2 ,
            child: Image.asset("resimler/Steve-Jobs.png")
        ),
      ),
          Text("Steve Jobs",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: ekrangenisligi/15,
              )),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left:ekrangenisligi/100,right:ekrangenisligi/100 ),
            child: Text("Hayatta pek çok şeyi yapmak için şans bulamıyoruz bunun için yaptığımız her bir iş mükemmel olmalı. Çünkü bu bizim hayatımız. Hayat kısa ve öleceğiz biliyorsunuz. Ve hepimiz yaşamımızda yapmamız gerekenleri yapmak için seçildik. Onun için yaptıklarımız yaptığımıza değecek kadar iyi olmalı. ",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekrangenisligi/25,
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            child: Text("İlham Ver",style: TextStyle(fontSize: ekrangenisligi/20),),
         style: ElevatedButton.styleFrom(
         primary: Colors.indigoAccent,
    ),
            onPressed: (){
              print("ilham verildi");
            },
    ),
    ],
    ),

      );
  }

}
