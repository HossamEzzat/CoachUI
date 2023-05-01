import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buildcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/ic.png', width: 70,height: 50),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back,color: Colors.grey),
        ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.menu,color: Colors.grey),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  color: Colors.white,
                  child: const Text(
                    "Get Coaching",style:TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 90, 25, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: const Text(
                              'YOU HAVE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                            child: const Text(
                              '206',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 60.0),
                      Container(
                        height: 60.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100]?.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text('Buy more',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40.0),
            Container(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'MY COACHES',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                    Text(
                      'VIEW PAST SESSIONS',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    )
                  ],
                )
            ),
            const SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[
                buildCard('Tom', 'Available', 1),
                buildCard('Tom', 'Away', 2),
                buildCard('Tom', 'Away', 3),
                buildCard('Tom', 'Available', 4),
                buildCard('Tom', 'Away', 5),
                buildCard('Tom', 'Available', 6),

              ],
            )

          ],
        ),
      ),
    );
  }
}
