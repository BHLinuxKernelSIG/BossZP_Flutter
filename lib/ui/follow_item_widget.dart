import 'package:bosszp/model/Appearance.dart';
import 'package:bosszp/ui/position_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Follow_Item_Widget extends StatelessWidget {
  const Follow_Item_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            PersonInfoWidget(colorDark: context.read<Appearance>().darkColor)
          ],
        )
      ],
    );
  }
}
