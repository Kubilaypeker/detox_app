import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  String sendTime;
  ChatMessage({required this.messageContent, required this.messageType, required this.sendTime});
}


List<ChatMessage> messages = [ // chati test etmek için eklendi
  ChatMessage(messageContent: "Selam, nasılsın", messageType: "receiver", sendTime: "12:41"),
  ChatMessage(messageContent: "Nasıl gidiyor?", messageType: "receiver", sendTime: "12:42"),
  ChatMessage(messageContent: "Selam Özlem, iyiyim sen nasılsın nasıl gidiyor?", messageType: "sender", sendTime: "12:43"),
  ChatMessage(messageContent: "İyi diyelim iyi olsun", messageType: "receiver", sendTime: "12:44"),
  ChatMessage(messageContent: "Kötü bir şey yoktur umarım.", messageType: "sender", sendTime: "12:45"),
];

class chattingPage extends StatefulWidget {
  const chattingPage({Key? key}) : super(key: key);



  @override
  State<chattingPage> createState() => _chattingPageState();
}

class _chattingPageState extends State<chattingPage> {

  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 7,
            icon: backButtonSvg
        ),
        title: Text("Özlem Sönmez",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: const Color(0xff1A1A1A)
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10.w),
            child: Image.asset("assets/jpgfiles/profilePhoto.jpg"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body: Stack(
          children: [
        ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10.h,bottom: 10.h),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            padding: EdgeInsets.only(left: 14.w,right: 14.w,top: 10.h,bottom: 10.h),
            child: Align(
              alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                ),
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  Text(messages[index].messageContent, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                    Text(messages[index].sendTime, style: const TextStyle(fontSize:12),),
                ]
                ),
              ),
            ),
          );
        },
      ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10.w,bottom: 10.h,top: 10.h),
            height: 60.h,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(width: 15.w,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Mesaj yaz",
                        hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14.sp, color: const Color(0xff757575)),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(width: 15.w,),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.send,color: Color(0xff1A1A1A),size: 18.sp,),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
              ],
            ),
          ),
        ),
        ]
    ),
    );
  }
}
