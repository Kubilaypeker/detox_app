import 'package:detoxapp/Screens/selectDate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class productPage extends StatefulWidget {
  const productPage({Key? key}) : super(key: key);

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  @override
  Widget build(BuildContext context) {

    const String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    const String shareButton = 'assets/svgfiles/shareButton.svg';
    final Widget shareButtonSvg = SvgPicture.asset(shareButton);

    const String secureButton = 'assets/svgfiles/secureButton.svg';
    final Widget secureButtonSvg = SvgPicture.asset(secureButton);

    const String location = 'assets/svgfiles/locationProductPage.svg';
    final Widget locationSvg = SvgPicture.asset(location);

    const String users = 'assets/svgfiles/users.svg';
    final Widget usersSvg = SvgPicture.asset(users);

    const String clock = 'assets/svgfiles/clockProductPage.svg';
    final Widget clockSvg = SvgPicture.asset(clock);

    const String star = 'assets/svgfiles/starRate.svg';
    final Widget starSvg = SvgPicture.asset(star);

    const String food = 'assets/svgfiles/yemek.svg';
    final Widget foodSvg = SvgPicture.asset(food);

    const String drink = 'assets/svgfiles/users.svg';
    final Widget drinkSvg = SvgPicture.asset(drink);

    const String road = 'assets/svgfiles/yol.svg';
    final Widget roadSvg = SvgPicture.asset(road);

    const String tools = 'assets/svgfiles/ekipman.svg';
    final Widget toolsSvg = SvgPicture.asset(tools);

    return Stack(
      children: [
        Stack(
            children: [
              SizedBox(
          height: 375.h,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/jpgfiles/background.jpg", fit: BoxFit.fitHeight),
        ),
              Container(
                padding: EdgeInsets.only(right: 10.w, bottom: 49.h),
                height: 375.h,
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black.withOpacity(0.89))
                  ),
                  onPressed: () {},
                  child: Text("Fotoğrafları görüntüle (+6)",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.white),
                  ),
                ),
              ),
    ]
    ),
        Scaffold(
          backgroundColor: Colors.white.withOpacity(0),
          appBar: AppBar(
            toolbarHeight: 50.h,
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 7,
                icon: backButtonSvg
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: shareButtonSvg,
              ),
              IconButton(
                onPressed: () {},
                icon: secureButtonSvg,
              ),
            ],
          ),
          body: ListView(
            children: [
              SizedBox(height: 240.h,),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 26.w, top: 26.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row( children: [locationSvg,
                          Text("İzmir, Bornova",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18.sp, color: const Color(0xff8B8B8B)),
                          ),]),
                          Container(
                            padding: EdgeInsets.only(right: 20.w),
                            alignment: Alignment.topRight,
                            height: 30,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: const Icon(FontAwesomeIcons.heart, color: Color(0xffD4D4D4), size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text("Gardone Riviera Kamp Alanı",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 22.sp,
                            color: const Color(0xff1A1A1A)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30.h, left: 46.w, right: 46.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 72.h,
                            width: 72.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 0.1
                              )
                            ]
                          ),

                          child: Column(
                            children: [
                              SizedBox(height: 10.h,),
                              clockSvg,
                              Text("2 Gün",
                              style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),

                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                usersSvg,
                                Text("123 Kişi",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                starSvg,
                                Text("4.8",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/jpgfiles/profilePhoto.jpg"),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Özlem Sönmez", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16.sp, color: const Color(0xff1A1A1A)),),
                                Text("Çevrimiçi", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14.sp, color: const Color(0xff757575)),)
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Container(
                          height: 36.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff0F2F9E)),
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: TextButton(
                          onPressed: () {},
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.message, color: const Color(0xff0F2F9ECC).withOpacity(0.8), size: 17,),
                                Text("Mesaj Yaz", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xff0F2F9ECC).withOpacity(0.8)))
                                ]
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      alignment: Alignment.centerLeft,
                      child: Text("Sunulan İmkanlar", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16.sp, color: const Color(0xff1A1A1A)),),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffF6F6F6),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),

                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                foodSvg,
                                Text("Yemek",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffF6F6F6),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),

                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                drinkSvg,
                                Text("İçeçek",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffF6F6F6),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                roadSvg,
                                Text("Yol",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 72.h,
                            width: 72.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffF6F6F6),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.1
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.h,),
                                toolsSvg,
                                Text("Ekipman",
                                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 72.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.w, top: 5.h),
                  child: Column(
                    children: [
                      Text("239₺", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20.sp, color: Colors.black),),
                      Text("Toplam Tutar", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 16.w),
                  width: 164.w,
                  height: 48.h,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => selectDate(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xffE50913))
                    ),
                    child: Text("Tarih Seç", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
