import 'package:detoxapp/Screens/messagesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/favoritesPage.dart';
import '../Screens/homeScreen.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  @override
  Widget build(BuildContext context) {

    final String messages = 'assets/svgfiles/messagesSvg.svg';
    final Widget messagesSvg = SvgPicture.asset(messages);

    final String logo = 'assets/svgfiles/bottomBarLogo.svg';
    final Widget logoSvg = SvgPicture.asset(logo);

    final String heart = 'assets/svgfiles/bottomBarHeart.svg';
    final Widget heartSvg = SvgPicture.asset(heart);

    final String chatBox = 'assets/svgfiles/chatBox.svg';
    final Widget chatBoxSvg = SvgPicture.asset(chatBox);

    final String profile = 'assets/svgfiles/profileSvg.svg';
    final Widget profileSvg = SvgPicture.asset(profile);

    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: IconButton(icon: messagesSvg, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen(),),); },), label: "",),
          BottomNavigationBarItem(icon: IconButton(icon: heartSvg, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => favoritesPage(),),); },), label: ""),
          BottomNavigationBarItem(icon: IconButton(icon: logoSvg, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen(),),); },), label: ""),
          BottomNavigationBarItem(icon: IconButton(icon: chatBoxSvg, onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => messagesPage(),),); },), label: ""),
          BottomNavigationBarItem(icon: IconButton(icon: profileSvg, onPressed: () { },), label: ""),
    ]
    );
  }
}
