import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/indicator/custom_indicator.dart';
import 'package:flutter_custom_tab_bar/indicator/linear_indicator.dart';
import 'package:flutter_custom_tab_bar/transform/color_transform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GDGTwitter(),
    );
  }
}

class GDGTwitter extends StatefulWidget {
  const GDGTwitter({Key? key}) : super(key: key);

  @override
  State<GDGTwitter> createState() => _GDGTwitterState();
}

class _GDGTwitterState extends State<GDGTwitter> {
  final int pageCount = 4;
  final PageController _controller = PageController(initialPage: 0);
  final CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 225,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: 175,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 10,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 10,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 65,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: CircleAvatar(
                            radius: 43.0,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/images/profile.jpg')),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 6,
                        child: Container(
                          width: 100,
                          height: 32,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: const Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'GDG Ismailia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.5),
                  child: Text(
                    '@GDGIsmailia',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Google Developer Groups (GDGs) are for developers who are interested in Google\'s developer technology; everything from the Android, Chrome, Drive, and Cloud.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Ismailia, Egypt',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.link_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'meetup.com/GDG-Ismailia',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Joined August 2018',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        '32',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '369',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomTabBar(
                    tabBarController: _tabBarController,
                    height: 35,
                    itemCount: pageCount,
                    width: MediaQuery.of(context).size.width,
                    builder: getTabBarChild,
                    indicator: LinearIndicator(
                      color: Colors.blue,
                      bottom: 0,

                    ),
                    pageController: _controller,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: PageView.builder(
                      controller: _controller,
                      itemCount: pageCount,
                      itemBuilder: (context, index) {
                        return pageItem(index);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget getTabBarChild(BuildContext context, int index) {
  return TabBarItem(
    index: index,
    transform: ColorsTransform(
        highlightColor: Colors.blue,
        normalColor: Colors.white70,
        builder: (context, color) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.5),
            alignment: Alignment.center,
            constraints: const BoxConstraints(minWidth: 50),
            child: index == 0
                ? Text('Tweet',
                    style: TextStyle(color: color, fontWeight: FontWeight.bold))
                : index == 1
                    ? Text('Tweets & replies',
                        style: TextStyle(
                            color: color, fontWeight: FontWeight.bold))
                    : index == 2
                        ? Text('Media',
                            style: TextStyle(
                                color: color, fontWeight: FontWeight.bold))
                        : Text('Likes',
                            style: TextStyle(
                                color: color, fontWeight: FontWeight.bold)),
          );
        }),
  );
}

Widget pageItem(int index) => Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/profile.jpg')),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'GDG Ismailia',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '@GDGIsmailia',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '·',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Aug 20',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'We are excited to announce that the first GDG DevFest Ismailia will be held on 20th of November 2021. Stay tuned for more details!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
