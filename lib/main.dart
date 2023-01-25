import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50 ,right: 15 ,left: 15 ,bottom: 30),
        child: Stack(
          children: [
            Positioned(
              top: 10,
                left: 15,
                right: 15,
                child: Card (
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: Colors.redAccent,
                  child: Container(
                    padding: const EdgeInsets.only(top: 15 ,right: 15,left: 15,bottom: 15),
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Container(
                            height: 27,
                            width: MediaQuery.of(context).size.width/3,
                            color: Colors.black54,
                          ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: double.maxFinite,
                            height: 27,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
              left: 15,
              right: 15,
              top: 170,
              child:Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.redAccent,
                child: Container(
                  padding: const EdgeInsets.only(top: 15 ,right: 15,left: 15,bottom: 15),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          width: double.maxFinite,
                          height: 27,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            ),
            Positioned(
              top: 160,
                left: 50,
                right: 50,
                child:Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 30,
                    width: 130,
                    color: Colors.black54,
                  ),
                ),
            ),
          ],
        ),
      )
    );
  }
}
