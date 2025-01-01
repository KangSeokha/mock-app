import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "게시판",
                  style: TextStyle(fontFamily: 'Pretendard'),
                ),
              ),
              DrawerHeader(child: Text("게시판2")),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: Text(
          //   '하이',
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          actions: [
            // Search bar in AppBar
            SizedBox(width: 50),
            Text(
              'Logo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7, // Adjust width
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),

                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(width: 5),
                    Text('Search', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          ],
          // bottom: TabBar(
          //   indicatorColor: Colors.black,
          //   labelColor: Colors.black,
          //   unselectedLabelColor: Colors.grey,
          //   tabs: [
          //     Tab(icon: Icon(Icons.home)),
          //     Tab(icon: Icon(Icons.settings)),
          //   ],
          // ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '안녕하세요, ABC님',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '23, Jan, 2021',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.notifications, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // TabBarView
                TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.settings)),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Icon(Icons.home, size: 50)),
                      Center(child: Icon(Icons.settings, size: 50)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
