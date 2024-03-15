import 'package:flutter/material.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      child: Row(
        children: [
          CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: 'https://picsum.photos/250?image=9',
          ),
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
                            color: Color(0XFF2B2B2B)),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "bibili-HRM",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF969696)),
                      ),
                      Spacer(),
                      Text(
                        "15:09",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 11,
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
                            text: "嗯，好的，收到了，稍后给给您回复消息，耐心等候一下哈",
                            style: TextStyle(color: Color(0XFF636363)))
                      ]),
                      style: TextStyle(
                        color: Color(0xFFB8B8B8),
                        fontSize: 13,
                      ),
                      overflow: TextOverflow.ellipsis,
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
