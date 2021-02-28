import 'package:flutter/material.dart';
import 'package:papikost/models/city.dart';
import 'package:papikost/models/space.dart';
import 'package:papikost/models/tips.dart';
import 'package:papikost/theme.dart';
import 'package:papikost/widgets/bottom_navbar_item.dart';
import 'package:papikost/widgets/city_card.dart';
import 'package:papikost/widgets/space_card.dart';
import 'package:papikost/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge),
            // NOTE: Title
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Mencari Kostan yang Cozy",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : Popular City
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(id: 1, name: 'Jakarta', imageUrl: 'assets/pic.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/pic (1).png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/pic (2).png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: Recommended Space
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                        id: 1,
                        name: 'Villa Dago',
                        imageUrl: 'assets/image 14.png',
                        price: 52,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 2,
                        name: 'Rumah Oma',
                        imageUrl: 'assets/image 13.png',
                        price: 52,
                        city: 'Bogor',
                        country: 'Indonesia',
                        rating: 5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 3,
                        name: 'Rumah Siapa',
                        imageUrl: 'assets/image 15.png',
                        price: 52,
                        city: 'Jakarta',
                        country: 'Indonesia',
                        rating: 5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/icon (1).png',
                        updatedAt: '20 April'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'Jakarta Fairlines',
                        imageUrl: 'assets/icon.png',
                        updatedAt: '11 Desember'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
