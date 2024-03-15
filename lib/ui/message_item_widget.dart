import 'package:flutter/material.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        children: [
          SizedBox(width: 6),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text(
                        "李女士",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "bibili-HRM",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF909090)),
                      ),
                      Spacer(),
                      Text(
                        "15:09",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFB8B8B8)),
                      ),
                      // SizedBox(width: 8)
                    ],
                  ),
                  SizedBox(height: 3),
                  Text.rich(
                      TextSpan(text: "[已读] ", children: [
                        TextSpan(
                            text: "嗯，好的--=-==--=-=-=//poppk00",
                            style: TextStyle(color: Color(0xFF595959)))
                      ]),
                      style: TextStyle(
                        color: Color(0xFFB8B8B8),
                        fontSize: 14,
                      ),
                      maxLines: 1)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
