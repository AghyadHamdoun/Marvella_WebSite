

import 'package:flutter/material.dart';
import 'package:marvella/presentation/aboutUs/about_us.dart';
import 'package:marvella/presentation/bodyLanguage/body_language.dart';
import 'package:marvella/presentation/fashion/fashion.dart';
import 'package:marvella/presentation/mix/mix.dart';
import 'package:marvella/presentation/news/news.dart';
import 'package:marvella/presentation/personalAnalysis/personl_analysis.dart';
import 'package:marvella/presentation/home/home.dart';
import 'package:marvella/presentation/nameAnalysis/name_analysis.dart';

class Routes {
  static const String homeRoute = "/";
  static const String namesAnalysisRoute = "/nameAnalysis";
  static const String personalAnalysisRoute = "/personalAnalysis";
  static const String mixRoute = "/mix";
  static const String newsRoute = "/news";
  static const String aboutUsRoute = "/aboutUs";
  static const String fashionRoute = "/fashion";
  static const String bodyLanguageRoute = "/bodyLanguage";

}

// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.homeRoute:
//         return MaterialPageRoute(builder: (_) => const Home());
//       case Routes.fashionRoute:
//         return MaterialPageRoute(builder: (_) => const Fashion());
//       case Routes.namesAnalysisRoute:
//         return MaterialPageRoute(builder: (_) => const NameAnalysis());
//       case Routes.personalAnalysisRoute:
//         return MaterialPageRoute(builder: (_) => const PersonalAnalysis());
//       case Routes.mixRoute:
//         return MaterialPageRoute(builder: (_) => const Mix());
//       case Routes.newsRoute:
//         return MaterialPageRoute(builder: (_) => const News());
//       case Routes.aboutUsRoute:
//         return MaterialPageRoute(builder: (_) => const AboutUs());
//       case Routes.bodyLanguageRoute:
//         return MaterialPageRoute(builder: (_) => const BodyLanguage());
//       default:
//         return unDefinedRoute();
//     }
//   }
//
//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//         builder: (_) => Scaffold(
//           appBar: AppBar(
//             title: const Text(
//                 "No Route Found"), // todo move this string to strings manager
//           ),
//           body: const Center(
//               child: Text(
//                   "No Route Found")), // todo move this string to strings manager
//         ));
//   }
// }