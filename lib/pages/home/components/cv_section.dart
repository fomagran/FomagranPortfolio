import 'package:flutter/material.dart';
import 'package:fomagran/models/design_process.dart';
import 'package:fomagran/utils/constants.dart';
import 'package:fomagran/utils/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<DesignProcess> designProcess = [
  DesignProcess(
      title: "Creative",
      imagePath: "images/develop.png",
      subtitle: "Beutiful animation \nArtistic library"),
  DesignProcess(
      title: "Passionate",
      imagePath: "images/design.png",
      subtitle: "Never stop 1.1K commits \nOver 400 posts"),
  DesignProcess(
      title: "Professional",
      imagePath: "images/write.png",
      subtitle:
          "Launch 5 projects in App Store, \nHave been running iOS apps for about 2 years"),
  DesignProcess(
      title: "Cooperative",
      imagePath: "images/promote.png",
      subtitle:
          "Have been cooperating \nwith CEO,Desinger\nAndroid,Front-end,Back-end Engineer"),
];

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
          desktop: _buildUi(context, 1000.0),
          tablet: _buildUi(context, 760.0),
          mobile: _buildUi(context, MediaQuery.of(context).size.width * 8)),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "",
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: LayoutBuilder(
                builder: (_context, constraints) {
                  return ResponsiveGridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    gridDelegate: ResponsiveGridDelegate(
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                                ScreenHelper.isMobile(context)
                            ? constraints.maxWidth / 2.0
                            : 250.0,
                        childAspectRatio: ScreenHelper.isDesktop(context)
                            ? 1
                            : MediaQuery.of(context).size.aspectRatio * 1.5),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  designProcess[index].imagePath,
                                  width: 40.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  designProcess[index].title,
                                  style: GoogleFonts.oswald(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              designProcess[index].subtitle,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: kCaptionColor,
                                height: 1.5,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 4,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
