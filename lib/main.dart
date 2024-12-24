import 'package:flutter/material.dart';
import 'package:facebok_app/wellcome_screen.dart';
// account = 01158053564,
// password = 01158053564,

main(){
  runApp(facebook());

}
class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WellcomeScreen(),

    );
  }
}
/*flutter pub run flutter_launcher_icons:main // to rebuilt icon app from terminal
flutter_launcher_icons: ^0.11.0 //under flutter lints
flutter_icons:
  android: true
  ios: true
  image_path: "assets/images/app_icon.png" //after assets
  flutter clean//in terminal



*/
