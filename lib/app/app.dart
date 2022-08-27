

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvella/cubit/cubit.dart';
import 'package:marvella/presentation/aboutUs/about_us.dart';
import 'package:marvella/presentation/bodyLanguage/body_language.dart';
import 'package:marvella/presentation/fashion/fashion.dart';
import 'package:marvella/presentation/home/home.dart';
import 'package:marvella/presentation/mix/mix.dart';
import 'package:marvella/presentation/nameAnalysis/name_analysis.dart';
import 'package:marvella/presentation/news/news.dart';
import 'package:marvella/presentation/resources/routes_manger.dart';
import 'package:marvella/shared/styles/theme_manger.dart';

import '../presentation/personalAnalysis/personl_analysis.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [  BlocProvider(
        create: (context) => AppCubit()
      ),],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,Widget)=> MaterialApp(
        title: 'Marvella',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        routes: {
   Routes.homeRoute:(context)=> const Home(),
          Routes.fashionRoute:(context)=> const Fashion(),
         Routes.namesAnalysisRoute:(context)=> const NameAnalysis(),
          Routes.personalAnalysisRoute:(context)=> const PersonalAnalysis(),
          Routes.aboutUsRoute:(context)=> const AboutUs(),
          Routes.mixRoute:(context)=>const Mix(),
          Routes.newsRoute:(context)=> const News(),
          Routes.bodyLanguageRoute:(context)=> const BodyLanguage(),

        },
      )
      ),
    );
  }
}
