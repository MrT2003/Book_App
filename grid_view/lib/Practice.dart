import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        actions: const [
          Icon(Icons.search, color: Colors.blue),
          SizedBox(width: 16),
          Icon(Icons.favorite_border, color: Colors.blue),
          SizedBox(width: 16),
          Icon(Icons.share, color: Colors.blue),
          SizedBox(width: 16),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              width: double.infinity,
              height: 210,
              child: Row(
                children: [
                  const Image(
                    width: 120,
                    height: 170,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/c30b/3223/79cbc332468f47605348bda4c0ab77d0?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nWprp8a8F9JIVF0eW7dijnm7TMkUX7C1g~~GvW8Y3dJ5~ia1aougESXgWK-X6MxeShi047zBG1W7pkYTE~90OuLFSxw39VwQ-9udJj6bgHDkoevL0Z6y~I8w~5isZ9TDYOr6eJjfwhqBLn1xxWPJHpcqiFrK2KmbkyN2PhCpBSZBV7BhcXVeMoGD9HiXbthRcgFC9xoTkKzdsYx2oVX6WFn3IhI6gnxC7zB66JbsU-f62CMgq50Vwit1cCsoyhP5hwC1nh~DbFthEn0ynIjzX7XaMYneMx4YJP7BfpEodVLDK-bqI4iqmcIYECpfdnkBszXv2kx6m4EUMgpfxR1MvA__'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'To kill a mocking bird \nKilling Eve',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Proxima Nova Alt',
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image(
                              width: 24,
                              height: 24,
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/2710/a092/9e8006b0d3697eafe7899e553c4907e3?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=U3CV11FRR8DznVrGvHOtLBbNEd~rjrKvs~5iDWBe8pg0sS5Lh-j4ofDnirEPZMo0KWYqXYSo7y2BFiB2CT25NOZhSjO8y7KHadsezCxFSzsarkf-AxdOlnhdDqShkhXk5K~qWUL4TScyrrPuC9UPaEORTSBfI3cJTwCSu0afkm~~tJkGhWx031jut3BtwKElCWHOxGgNJ4qP5K-frR9gaEADzIZ6Z6LRzci9xBcaa386~7HMr7tnUQC42hF-4sJ7TkZbil8qExf1gpZnOBBWaiRqLptYjgTlHMNtNSFM1LzWRGKaBSJwSvk2TYN8DRJqcpmvavdeO4S1oIcugiSUXw__'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Harper Lee',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima Nova Alt',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        children: [
                          Icon(Icons.star_rounded,
                              size: 16, color: Colors.orange),
                          Icon(Icons.star_rounded,
                              size: 16, color: Colors.orange),
                          Icon(Icons.star_rounded,
                              size: 16, color: Colors.orange),
                          Icon(Icons.star_rounded,
                              size: 16, color: Colors.orange),
                          Icon(Icons.star_rounded,
                              size: 16, color: Colors.orange),
                          SizedBox(width: 5),
                          Text(
                            '120 Ratings',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima Nova Alt',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text(
                            'Rs. 340',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Proxima Nova Alt',
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Rs. 240',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Proxima Nova Alt',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Available in',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima Nova Alt',
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Book',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Proxima Nova Alt',
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(62, 30),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: const Text(
                              'e-Book',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Proxima Nova Alt',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'About Book',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.lightBlue.shade200,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Proxima Nova Alt',
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Similar Books',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Proxima Nova Alt',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.lightBlue.shade200,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Proxima Nova Alt',
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Similar Books',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Proxima Nova Alt',
                    ),
                  ),
                  SizedBox(width: 180),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Proxima Nova Alt',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 232,
              padding: const EdgeInsets.only(left: 24),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 232,
                    // color: Colors.grey.shade400,
                    child: const Column(
                      children: [
                        Image(
                          width: 120,
                          height: 172,
                          image: NetworkImage(
                              'https://s3-alpha-sig.figma.com/img/c30b/3223/79cbc332468f47605348bda4c0ab77d0?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nWprp8a8F9JIVF0eW7dijnm7TMkUX7C1g~~GvW8Y3dJ5~ia1aougESXgWK-X6MxeShi047zBG1W7pkYTE~90OuLFSxw39VwQ-9udJj6bgHDkoevL0Z6y~I8w~5isZ9TDYOr6eJjfwhqBLn1xxWPJHpcqiFrK2KmbkyN2PhCpBSZBV7BhcXVeMoGD9HiXbthRcgFC9xoTkKzdsYx2oVX6WFn3IhI6gnxC7zB66JbsU-f62CMgq50Vwit1cCsoyhP5hwC1nh~DbFthEn0ynIjzX7XaMYneMx4YJP7BfpEodVLDK-bqI4iqmcIYECpfdnkBszXv2kx6m4EUMgpfxR1MvA__'),
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'To Killing To Be A \nMockingbird',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima Nova Alt',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Rs. 340 ',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Proxima Nova Alt',
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            // SizedBox(width: 5),
                            Text(
                              'Rs. 240 ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Proxima Nova Alt',
                              ),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.star_rounded,
                              size: 12,
                              color: Colors.orange,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Proxima Nova Alt',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 150),
            Container(
              padding: EdgeInsets.all(8),
              width: 344,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Rs.240',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Proxima Nova Alt',
                        ),
                      ),
                      Text(
                        'Rs. 340',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Proxima Nova Alt',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Proxima Nova Alt',
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Buy now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Proxima Nova Alt',
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
