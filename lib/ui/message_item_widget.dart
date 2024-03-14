import 'package:flutter/material.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: NetworkImage("")),
        Column(
          children: [
            Row(
              children: [Text("data"), Text("data")],
            ),
            Text("data")
          ],
        )
      ],
    );
  }
}
