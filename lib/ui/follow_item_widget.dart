import 'package:bosszp/model/Appearance.dart';
import 'package:bosszp/ui/position_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Follow_Item_Widget extends StatelessWidget {
  const Follow_Item_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF2F2F2),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
        elevation: 0.5,
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
          child: Column(
            children: [
              Row(
                children: [
                  PersonInfoWidget(
                      colorDark: context.read<Appearance>().darkColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
