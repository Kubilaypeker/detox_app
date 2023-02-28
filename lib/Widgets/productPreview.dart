import 'package:detoxapp/Screens/productPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class productPreview extends StatefulWidget {
  const productPreview({Key? key}) : super(key: key);

  @override
  State<productPreview> createState() => _productPreviewState();
}

class _productPreviewState extends State<productPreview> {
  @override
  Widget build(BuildContext context) {

    final String star = 'assets/svgfiles/star.svg';
    final Widget starSvg = SvgPicture.asset(star);

    final String heart = 'assets/svgfiles/heart.svg';
    final Widget heartSvg = SvgPicture.asset(heart);

    return Stack(
        children: [
          TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => productPage(),
              ),
            );
          },
            child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              boxShadow: const [BoxShadow(blurRadius: 0.001,)]
            ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            child: ImageSlideshow(
              height: 149,
              children: [
                Image.asset("assets/jpgfiles/productImage.jpg",fit: BoxFit.fitHeight,),
                Image.asset("assets/jpgfiles/productImage2.jpg",fit: BoxFit.fitHeight,),
                Image.asset("assets/jpgfiles/productImage3.jpg", fit: BoxFit.fitHeight),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Gardone Riviera Kamp Alanı",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: const Color(0xff1A1A1A)
          ),
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("İzmir,Bornova",
              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
              ),
              ),
              Row(
                children: [
                Container(
                  child: starSvg,
                ),
                Padding(padding: const EdgeInsets.only(right: 5),
                  child: Text("4.8", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: const Color(0xff1A1A1A)),),
                  ),
                ],
              ),
            ],
          ),
          Container(
              padding: const  EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              child: Text("239₺", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: const Color(0xff1A1A1A)),
              )
          ),
        ]
      )
    ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5),
            alignment: Alignment.topRight,
            height: 30,
            child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
          child: const Icon(FontAwesomeIcons.heart, color: Color(0xffD4D4D4), size: 15,
          ),
          ),
          ),
        ]
    );
  }
}
