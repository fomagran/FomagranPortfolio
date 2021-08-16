import 'package:flutter/material.dart';
import 'package:fomagran/models/header_item.dart';
import 'package:fomagran/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

List<HeaderItem> headerItems = [
  HeaderItem(title: "Home", onTap: () {}),
  HeaderItem(title: "My Intro", onTap: () {}),
  HeaderItem(title: "Services", onTap: () {}),
  HeaderItem(title: "Portfolio", onTap: () {}),
  HeaderItem(title: "Testimonials", onTap: () {}),
  HeaderItem(title: "Blogs", onTap: () {}),
  HeaderItem(title: "Hire me", onTap: () {}, isButton: true)
];

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "F",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: ".",
                style: GoogleFonts.oswald(
                  color: kPrimaryColor,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ))
          ]),
        ),
      ),
    ));
  }
}

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
          children: headerItems
              .map((item) => item.isButton
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kDangerColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        child: TextButton(
                          onPressed: item.onTap,
                          child: Text(
                            item.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  : MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        margin: EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: item.onTap,
                          child: Text(
                            item.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
              .toList()),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [HeaderLogo(), HeaderRow()],
      ),
    );
  }
}
