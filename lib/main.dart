import 'package:flutter/material.dart';
import 'package:news_app_ui/news_detail_screen.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: kLighterWhite,
          body: const HomeScreen(),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset('assets/home_selected_icon.svg')
                    : SvgPicture.asset('assets/home_unselected_icon.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                    : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset('assets/notification_selected_icon.svg')
                    : SvgPicture.asset(
                        'assets/notification_unselected_icon.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? SvgPicture.asset('assets/profile_selected_icon.svg')
                    : SvgPicture.asset('assets/profile_unselected_icon.svg'),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        children: [
          Row(
            children: [
              Container(
                height: 51.0,
                width: 51.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: kLightBlue,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG'),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!!',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.0,
                    ),
                  ),
                  Text(
                    'Monday, 12 April ',
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.0,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30.0),

          // Search Bar
          Container(
            height: 51.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kDarkBlue.withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 24,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.0,
                      color: kDarkBlue,
                    ),
                    // controller: TextInputController(),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintText: 'Search for article...',
                      hintStyle: kPoppinsRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.0,
                        color: kLightGrey,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 51.0,
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/search_icon.svg',
                    ),
                    color: kWhite,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 38.0,
                  ),
                  child: Text(
                    'data',
                    style: kPoppinsMedium.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 304,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(12),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 24,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Flexible(
                        child: Text(
                          'Bali - Unique, unmatched. There is no other place like Bali in this world',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kDarkBlue,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 19,
                                backgroundColor: kLightBlue,
                                backgroundImage: NetworkImage(
                                  'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG',
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ryan Pereira',
                                    style: kPoppinsSemibold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.0,
                                    ),
                                  ),
                                  Text(
                                    'September 12, 2020',
                                    style: kPoppinsRegular.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.0,
                                      color: kGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              color: kLightWhite,
                            ),
                            child: SvgPicture.asset(
                              'assets/share_icon.svg',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5),
              ),
              Text(
                'View All',
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kBlue,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 19,
          ),

          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(right: 20),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 24,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/play_icon.svg',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Top Trending Island in 2023',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/eye_icon.svg',
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '40,999',
                                style: kPoppinsRegular.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.0,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
