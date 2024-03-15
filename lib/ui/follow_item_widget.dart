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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PersonInfoWidget(
                      colorDark: context.read<Appearance>().darkColor),
                  Spacer(),
                  SizedBox(width: 8),
                  ElevatedButton(onPressed: () {}, child: Text("关注")),
                  TextButton(onPressed: () {}, child: Text("..."))
                ],
              ),
              Text.rich(
                TextSpan(
                    text:
                        "面试岗位:：移动开发——iOS\n面试题目：谈谈Block与函数的区别？\n回答参考：Block可以写在方法里面",
                    children: []),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _IconTextWIdget(),
                  Spacer(),
                  _IconTextWIdget(),
                  Spacer(),
                  _IconTextWIdget()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconTextWIdget extends StatelessWidget {
  const _IconTextWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<Appearance>(context, listen: false).darkColor;
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.access_alarm_outlined,
          color: color,
          size: 22,
        ),
        label: Text(
          "426",
          style: TextStyle(fontSize: 12, color: color),
        ));
  }
}
