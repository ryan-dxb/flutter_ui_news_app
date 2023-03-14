import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app_ui/app_styles.dart';
import 'package:news_app_ui/size_config.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                // Can Overlay widgets
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42),
                          ),
                          border: Border(
                            top: BorderSide(
                              color: kBorderColour,
                            ),
                          ),
                          color: kLighterWhite,
                        )),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kPaddingHorizontal, vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(color: kWhite),
                            ),
                            padding: const EdgeInsets.all(12),
                            child:
                                SvgPicture.asset('assets/arrow_back_icon.svg'),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(color: kWhite),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                                'assets/bookmark_white_icon.svg'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                'Unravel Mysteries \n of the Maldives',
                style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 7,
                    color: kDarkBlue),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: kPaddingHorizontal, vertical: 16),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 2.5),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(color: kBorderColour),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 13,
                    // backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                      'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG',
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2.5,
                  ),
                  Text(
                    'Ryan Pereira | 2 days ago • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kGrey,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                "The Maldives , officially the Republic of Maldives , is an archipelagic state in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometres (470 miles; 400 nautical miles) from the Asian continent's mainland. The Maldives' chain of 26 atolls stretches across the equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.",
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBlue,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            )
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/02/09/05/45/maldives-262523_960_720.jpg',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: CarouselController(),
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            // autoPlay: true,
            // autoPlayInterval: const Duration(seconds: 3),
            // autoPlayAnimationDuration: const Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map((e) => GestureDetector(
                        onTap: () => _controller.animateToPage(e.key),
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: SvgPicture.asset(_current == e.key
                                ? 'assets/carousel_indicator_enabled.svg'
                                : 'assets/carousel_indicator_disabled.svg')),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
