import 'package:flutter/material.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image(image: NetworkImage("")),
        SizedBox(width: 70, height: 40),
        Expanded(
          child: Container(
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Text(
                      "李女士",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "bibili-HRM",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF00888C)),
                    ),
                    Spacer(),
                    Text(
                      "15:09",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF00888C)),
                    ),
                    SizedBox(width: 8)
                  ],
                ),
                Text("data")
              ],
            ),
          ),
        )
      ],
    );
  }
}
