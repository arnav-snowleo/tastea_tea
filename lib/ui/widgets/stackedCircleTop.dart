import 'package:flutter/material.dart';

class StackedCircleTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xFFc2cbe2),
            margin: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
                height: 100.0,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "White tea",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
        Positioned(
          top: .0,
          left: .0,
          right: .0,
          child: Center(
            child: CircleAvatar(
              radius: 35.0,
              child: Text("img"),
            ),
          ),
        )
      ],
    );
  }
}
