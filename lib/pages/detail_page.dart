import 'package:flutter/material.dart';
import 'package:papikost/theme.dart';
import 'package:papikost/widgets/facilites_item.dart';
import 'package:url_launcher/url_launcher.dart';
import 'error_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/pic (6).png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE TITLE
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Villa Dago',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star_solid.png',
                                    width: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE MAIN FACILITIES
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Main Facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                name: 'kitchen',
                                imageUrl: 'assets/001-bar-counter.png',
                                total: 2,
                              ),
                              FacilityItem(
                                name: 'bedroom',
                                imageUrl: 'assets/002-double-bed.png',
                                total: 3,
                              ),
                              FacilityItem(
                                name: 'Big Lemari',
                                imageUrl: 'assets/003-cupboard.png',
                                total: 2,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE PHOTO
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: edge,
                              ),
                              Image.asset(
                                'assets/pic (3).png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/pic (4).png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/pic (5).png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE Location
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jln. Kawan Sukses No.20\nPalembang",
                                style: greyTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  // launchUrl(
                                  //     'https://goo.gl/maps/3R4L2SAuu45j8UwaA');

                                  launchUrl('qwerty');
                                },
                                child: Image.asset(
                                  'assets/location.png',
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          child: RaisedButton(
                            onPressed: () {
                              launchUrl('tel:+628993613408');
                            },
                            color: purpleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            child: Text(
                              'Book Now',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
