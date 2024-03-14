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
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Row(
                        children: [
                          Text(
                            "iOS开发工程师程师程师程师程师程师程师---====",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              color: Colors.amber,
                              child: Text(
                                "20-25K",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.greenAccent),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
