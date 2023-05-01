
import 'package:flutter/material.dart';

Widget buildCard(String name, String status, int cardIndex) {
  return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 8.0,
      margin: cardIndex.isEven? const EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):const EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Stack(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.green,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                          )
                      )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40.0),
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: status == 'Away' ? Colors.amber : Colors.green,
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0
                      )
                  ),
                )
              ]),
          const SizedBox(height: 8.0),
          Text(
            name,
            style: const TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            status,
            style: const TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey
            ),
          ),
          const SizedBox(height: 15.0),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: status == 'Away' ? Colors.grey: Colors.green,
                    borderRadius: const BorderRadius.only
                      (
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)
                    ),
                  ),
                  child: const Center(
                    child: Text('Request',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Quicksand'
                      ),
                    ),
                  )
              )
          )
        ],
      )
  );
}
