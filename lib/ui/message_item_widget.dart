import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final avatarWidth = 44.0;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(avatarWidth / 2),
            child: CachedNetworkImage(
              width: avatarWidth,
              height: avatarWidth,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:
                  'https://k.sinaimg.cn/n/sinakd20117/192/w1696h1696/20240131/3dd7-94af50d27027ceae9ccc3d13760a2f7c.jpg/w700d1q75cms.jpg',
            ),
          ),
          SizedBox(width: 12),
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
