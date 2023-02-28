import 'package:detoxapp/Widgets/bottomBar.dart';
import 'package:detoxapp/Widgets/productPreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';



class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {





  @override
  Widget build(BuildContext context) {

    final String search = 'assets/svgfiles/searchSvg.svg';
    final Widget searchSvg = SvgPicture.asset(search);

    final String settings = 'assets/svgfiles/settingsSvg.svg';
    final Widget settingsSvg = SvgPicture.asset(settings);

    final String seeOnMap = 'assets/svgfiles/seeOnMap.svg';
    final Widget seeOnMapSvg = SvgPicture.asset(seeOnMap);

    TextEditingController searchController = TextEditingController();

    return DefaultTabController(
        length: 5,
        child: Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      appBar: AppBar(
        backgroundColor: const Color(0xffFCFCFC),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: searchSvg,
              onPressed: () {},
            );
          },
        ),
        title: TextFormField(
          style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white),
          controller: searchController,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Bu gün ne yapalım?",
              hintStyle: GoogleFonts.poppins(color: const Color(0xff1A1A1A),fontSize: 14.sp, fontWeight: FontWeight.w400,)
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {},
              icon: settingsSvg)
        ],
        bottom: TabBar(
          labelPadding: EdgeInsets.zero,
          labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp),
          labelColor: Colors.black,
          indicatorColor: const Color(0xffE50913),
          tabs: const [
            Tab(icon: Icon(FontAwesomeIcons.sailboat), text: "Tekne",),
            Tab(icon: Icon(FontAwesomeIcons.personHiking), text: "Yürüyüş"),
            Tab(icon: Icon(FontAwesomeIcons.campground),text: "Kamp"),
            Tab(icon: Icon(FontAwesomeIcons.personSnowboarding),text: "Snowboard"),
            Tab(icon: Icon(Icons.paragliding),text: "Paraşüt")
            ],
          ),
        ),
        body: Stack( children:
        [
          TabBarView(
            physics: const BouncingScrollPhysics(),
          children: [
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 165/224,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
              children: const [
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
                productPreview(),
              ],
            ),
          ],
        ),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(onPressed: () {},
            child: seeOnMapSvg,
            ),
           ),
          ]
        ),
          bottomNavigationBar: bottomBar(),
      ),
    );
  }
}
