import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fomagran/utils/globals.dart';
import 'package:fomagran/pages/components/header.dart';
import 'package:fomagran/utils/constants.dart';
import 'package:fomagran/pages/components/carousel.dart';
import 'components/cv_section.dart';
import 'components/ios_app_ad.dart';
import 'components/wesite_ad.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: ListView.separated(
                itemBuilder: (BuildContext, int index) {
                  return headerItems[index].isButton
                      ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              color: kDangerColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 28.0),
                            child: TextButton(
                              onPressed: headerItems[index].onTap,
                              child: Text(
                                headerItems[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      : ListTile(
                          title: Text(
                            headerItems[index].title,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: headerItems.length),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Header(),
            ),
            Carousel(),
            SizedBox(height: 20.0),
            CvSection(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: Text(
                "Launch Apps",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  height: 1.8,
                ),
              ),
            ),
            IosAppAd(
              title: "모두의 아파트",
              detail:
                  "모두의 아파트는 이웃과 함께 따듯한 아파트 문화를 만들어 나아가는 아파트 기반 라이프스타일 플랫폼입니다.",
              image: "images/MoALaunch.png",
            ),
            SizedBox(height: 70.0),
            WebsiteAd(
              title: "Brandiary",
              detail: "브랜디어리는 개인의 가능성을 쉽게 일깨우도록 도와주는 퍼스널 브랜딩 플랫폼입니다.",
              image: "images/Brandiary.png",
            ),
            SizedBox(height: 70.0),
            IosAppAd(
              title: "TimeBank",
              detail: "타임뱅크는 자신의 시간을 돈처럼 관리하고 기록하는 자기계발 앱입니다. ",
              image: "images/TimeBank.png",
            ),
            SizedBox(height: 70.0),
            WebsiteAd(
              title: "Magic Fight",
              detail: "매직파이트는 덱빌딩이 게임 플레이의 중심이 되는 마법 카드게임입니다.",
              image: "images/MagicFight.png",
            ),
            SizedBox(height: 70.0),
            IosAppAd(
              title: "CoronaCapstone",
              detail: "코로나캡스톤은 체온과 산소포화도 데이터로 코로나 감염 증상을 파악할 수 있는 앱입니다.",
              image: "images/CoronaCapstone.png",
            ),
          ]),
        ),
      ),
    );
  }
}
