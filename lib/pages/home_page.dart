import 'package:flutter/material.dart';
import 'package:papikost/models/city.dart';
import 'package:papikost/theme.dart';
import 'package:papikost/widgets/city_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
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
                          imageUrl: 'assets/pic(1).png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/pic(2).png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
