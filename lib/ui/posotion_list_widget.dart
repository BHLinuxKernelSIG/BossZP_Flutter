import 'package:flutter/material.dart';

class PositionListWidget extends StatelessWidget {
  const PositionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return SizedBox(
            // height: 100,
            child: Container(
              color: Color(0xFFF2F2F4),
              child: Card(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 14, bottom: 0),
                elevation: 0.2,
                color: Colors.white,
                // surfaceTintColor: Colors.green,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "iOS开发工程师",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "20-25K",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF00888C)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "腾讯 不需要融资 1000人以上",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
