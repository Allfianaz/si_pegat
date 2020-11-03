// // import 'package:flutter/material.dart';
// // import 'package:introduction_screen/introduction_screen.dart';
// // import 'package:si_pegat/screens/splashscreen.dart';

// // class IntroPage extends StatelessWidget {
// //   List<PageViewModel> getPages() {
// //     return [
// //       pageViewModel(
// //           Icons.search, "Search", "CARI GURU SESUAI DENGAN KRITERIA ANDA"),
// //       pageViewModel(Icons.person, "Guru",
// //           "BANYAK GURU DARI SEGALA BIDANG YANG SUDAH TERDAFTAR"),
// //       pageViewModel(
// //           Icons.wallet_membership, "Pembayaran", "CARA PEMBAYARAN MUDAH")
// //     ];
// //   }

// //   PageViewModel pageViewModel(IconData icon, String title, String titlePage) {
// //     return PageViewModel(
// //         image: Icon(
// //           icon,
// //           color: Colors.red,
// //           size: 100,
// //         ),
// //         title: title,
// //         body: titlePage,
// //         footer: Text('@allfianaz'));
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Container(
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(colors: [
// //                 Colors.orange[400],
// //                 Colors.orange[700],
// //                 Colors.orange[900]
// //               ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
// //             ),
// //             child: IntroductionScreen(
// //                 pages: getPages(),
// //                 onDone: () {
// //                   Navigator.of(context).pushReplacement(
// //                       MaterialPageRoute(builder: (context) => SplashScreen()));
// //                 },
// //                 done: Text("Done")),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> getPages() {
    return [
      _buildSlides("Cari", "CARI GURU SESUAI DENGAN KRITERIA ANDA",
          'assets/schedule_1.png'),
      _buildSlides("Jadwal", "TENTUKAN JADWAL ANDA KAPANPUN DAN DIMANAPUN",
          'assets/schedule_1.png'),
      _buildSlides(
          "Pembayaran",
          "PEMBAYARAN MUDAH DENGAN BERTATAP MUKA SANGATLAH EFEKTIF",
          'assets/schedule_1.png')
    ];
  }

  Slide _buildSlides(String _title, String _description, String _imagePath) {
    return Slide(
        title: _title,
        styleTitle: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        description: _description,
        styleDescription: TextStyle(fontSize: 20, color: Colors.white),
        pathImage: _imagePath,
        widthImage: 150,
        heightImage: 150,
        colorBegin: Colors.red,
        colorEnd: Colors.orange,
        directionColorBegin: Alignment.bottomCenter,
        directionColorEnd: Alignment.topCenter);
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.getPages(),
      onDonePress: () {},
      colorSkipBtn: Colors.white,
      colorDoneBtn: Colors.white,
      styleNameDoneBtn: TextStyle(color: Colors.black),
      styleNameSkipBtn: TextStyle(color: Colors.black),
      colorDot: Colors.grey[300],
      colorActiveDot: Colors.blueAccent,
    );
  }
}

// // import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';
// import 'package:intro_screen_onboarding_flutter/intro_app.dart';
// import 'package:intro_screen_onboarding_flutter/introduction.dart';
// import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
// import 'package:flutter/material.dart';

// class IntroPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SlideScreen(),
//     );
//   }
// }

// class SlideScreen extends StatelessWidget {
//   final List<Introduction> slides = [
//     Introduction(
//       title: 'Buy & Sell',
//       subTitle: 'Browse the menu and order directly from the application',
//       // imageUrl: 'assets/images/onboarding3.png',
//     ),
//     Introduction(
//       title: 'Buy & Sell',
//       subTitle: 'Browse the menu and order directly from the application',
//       // imageUrl: 'assets/images/onboarding3.png',
//     )
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return IntroScreenOnboarding(
//       introductionList: slides,
//       onTapSkipButton: () {},
//     );
//   }
// }
