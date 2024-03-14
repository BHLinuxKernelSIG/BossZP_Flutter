import 'package:flutter/material.dart';

class PositionListWidget extends StatelessWidget {
  const PositionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Card(
              margin: EdgeInsets.only(left: 6, right: 6, top: 0, bottom: 6),
              elevation: 0.2,
              color: Colors.white24,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "iOS开发工程师",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "20-25K",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
