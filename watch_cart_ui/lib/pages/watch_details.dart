import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_cart_ui/constants.dart';
import 'package:watch_cart_ui/models/product.dart';

class WatchDetails extends StatelessWidget {
  final Product watch;
  final String tag;

  WatchDetails({this.watch, this.tag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Constants.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Hero(
                              tag: this.tag,
                              child: IconButton(
                                icon: SvgPicture.asset(
                                  "assets/svg/menu.svg",
                                  width: 12.0,
                                  height: 12.0,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                "assets/svg/hamburger.svg",
                                width: 16.0,
                                height: 16.0,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(24.0),
                            height: MediaQuery.of(context).size.height * 0.38,
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Colors.grey[300],
                              ),
                            ),
                            child: Image.asset(
                              this.watch.image,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: this.watch.brand,
                                      style: TextStyle(
                                        height: 2.5,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " " +
                                          this.watch.name +
                                          " - " +
                                          this.watch.model,
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                this.watch.category,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                height: 90.0,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15.0),
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(230, 230, 230, 1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                            ),
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                                color: Color.fromRGBO(
                                                    34, 34, 34, 1),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                            ),
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                                color: Color.fromRGBO(
                                                    34, 34, 34, 1),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                            ),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                                color: Color.fromRGBO(
                                                    34, 34, 34, 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "\$${this.watch.price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                this.watch.description,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                  height: 1.40,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(right: 15.0),
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(230, 230, 230, 1),
                                        ),
                                      ),
                                      child: Icon(
                                        FlutterIcons.ios_heart_empty_ion,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: EdgeInsets.only(right: 15.0),
                                        height: 60.0,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 32.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Constants.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                230, 230, 230, 1),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Add to Cart",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}