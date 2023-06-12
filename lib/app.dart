import 'package:flutter/material.dart';
import 'package:pen_ui/login/login.dart';

class PenApp extends StatelessWidget {
  const PenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pen-Title',
      home: PenHomepage(),
    );
  }
}

class PenHomepage extends StatefulWidget {
  const PenHomepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<PenHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: Center(
                child: SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: CircleAvatar(
                    child: Text('未登录'),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('主页'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        '嗨！',
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        '欢迎使用答滴记',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 13),
                        child: const Icon(Icons.cloud),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '云同步',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '注册后，免费为你提供可靠的数据存储',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 13),
                        child: const Icon(Icons.outbond),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '离线使用',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '没有网络可以记东西',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 13),
                        child: const Icon(Icons.money),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '资产管理',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '现金、信用卡、债务统一帮你管理',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 13),
                        child: const Icon(Icons.bar_chart),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '统计报表',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            // '饼图、折线图全方位分析',
                            '饼图、折线图全方位分析',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        icon: const Icon(Icons.login),
                        label: const Text('立即登录'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            const Size(300, 40),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.access_alarm_rounded),
                        label: const Text('试用一下'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          fixedSize: const Size(300, 40),
                        ),
                      ),
                    ),
                    Text(
                      '提示：不注册账号，也可以记录，但不支持云同步',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
