import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  static final List<String> titleList = [
    "# Top \nSelling",
    "# Trend \nNow",
    "# Reader's \nchoice",
    "# Highly \nrated",
    "# Top \nSelling",
    "# Trend \nNow",
    "# Reader's \nchoice",
    "# Highly \nrated",
    "# Top \nSelling",
    "# Trend \nNow",
    "# Reader's \nchoice",
    "# Highly \nrated"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16),
                      width: 100,
                      height: 100,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          titleList[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Proxima Nova Alt',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  // crossAxisCount: 2, // Số lượng cột trong mỗi hàng
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 16.0, // Khoảng cách giữa các cột
                  mainAxisSpacing: 16.0, // Khoảng cách giữa các hàng
                ),
                itemCount: titleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://th.bing.com/th/id/OIP.B5tyr05ms_KYiJoDSMjizgHaE8?w=700&h=467&rs=1&pid=ImgDetMain',
                          width: 200, // Chiều rộng của ảnh
                          height: 200, // Chiều cao của ảnh
                          // fit: BoxFit
                          //     .cover, // Chọn BoxFit phù hợp với yêu cầu của bạn
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
