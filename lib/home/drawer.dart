import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.home,
                  ),
                  Text('主页')
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.access_alarm_outlined,
                  ),
                  Text('资产管理')
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.accessibility_new,
                  ),
                  Text('预算管理')
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                  ),
                  Text('卡片备份')
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.settings,
                  ),
                  Text('设置')
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, String context) {
    return Row(
      children: const [
        Icon(
          Icons.home,
        ),
        Text('主页')
      ],
    );
  }
}
