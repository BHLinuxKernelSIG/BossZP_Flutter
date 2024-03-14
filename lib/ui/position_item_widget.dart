import 'dart:math';

import 'package:flutter/material.dart';

class PostionItemWidget extends StatelessWidget {
  const PostionItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colorDark = Colors.black54;
    return Container(
      color: Color(0xFFF2F2F4),
      child: Card(
        margin: EdgeInsets.only(left: 10, right: 10, top: 14, bottom: 0),
        elevation: 0.2,
        color: Colors.white,
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
              SizedBox(height: 8),
              Text(
                "腾讯 不需要融资 1000人以上",
                style: TextStyle(fontSize: 14, color: colorDark),
              ),
              SizedBox(height: 8),
              Wrap(
                direction: Axis.horizontal,
                runSpacing: 5,
                // runAlignment: WrapAlignment.end,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(2)),
                      margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                      padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                      child: Text(
                        "iii000i$i",
                        style: TextStyle(color: colorDark, fontSize: 12),
                      ),
                    )
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.ac_unit_rounded),
                  SizedBox(width: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "张先生 - 人事总监",
                        style: TextStyle(fontSize: 12, color: Colors.black87),
                      ),
                      if (Random().nextBool())
                        Text(
                          "今日回复4次",
                          style: TextStyle(fontSize: 12, color: colorDark),
                        )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "东城区 - 建国门",
                    style: TextStyle(fontSize: 12, color: colorDark),
                  ),
                  IconButton(
                    iconSize: 18,
                    color: colorDark,
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
