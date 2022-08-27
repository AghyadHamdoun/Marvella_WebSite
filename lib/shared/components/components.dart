import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvella/app_responsive.dart';
import 'package:marvella/cubit/cubit.dart';
import 'package:marvella/presentation/personalAnalysis/personl_analysis.dart';
import 'package:marvella/presentation/resources/routes_manger.dart';
import 'package:marvella/shared/styles/color_manger.dart';

import '../../presentation/widgets/myAppBar_widget.dart';

List<String> homeNames = [
  'Main',
];
List homeRoutes = [
  Routes.homeRoute,
];
List<String> categoriesNames = [
  'BodyLanguage',
  'Fashion',
  'Mix',
  'NameAnalysis',
  'ArtNews',
  'PersonalAnalysis'
];
List categoriesRoutes = [
  Routes.bodyLanguageRoute,
  Routes.fashionRoute,
  Routes.mixRoute,
  Routes.namesAnalysisRoute,
  Routes.newsRoute,
  Routes.personalAnalysisRoute
];
List<String> pagesNames = [
  'AboutUs',
];
List pagesRoutes = [
  Routes.aboutUsRoute,
];

Column MyAppBar(BuildContext context) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: ColorManger.white, boxShadow: [BoxShadow(blurRadius: 4)]),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: AppResponsive.isDesktop(context) ? 100.h : 70.h,
        child: Row(
          children: [
            SizedBox(
              width: AppResponsive.isDesktop(context) ? 0.1.sw : 0.3.sw,
              child: Text(
                "Marvella",
                style: GoogleFonts.teko(
                    fontSize: 40.sp,
                    color: ColorManger.royalBlue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 0.2.sw,
            ),
            AppResponsive.isDesktop(context)
                ? Row(
                    children: [
                      addressesWidget(context,
                          title: 'Home',
                          h: AppCubit.get(context).isHover[0],
                          ind: 0),
                      SizedBox(
                        width: 10.w,
                      ),
                      addressesWidget(context,
                          title: 'Categories',
                          h: AppCubit.get(context).isHover[1],
                          ind: 1),
                      addressesWidget(context,
                          title: 'Pages',
                          h: AppCubit.get(context).isHover[2],
                          ind: 2),
                    ],
                  )
                : SizedBox(),
            Spacer(),
            Icon(
              Icons.drag_handle,
            )
          ],
        ),
      ),
      AppBarList(context, 0, homeNames, homeRoutes, 0.350.sw),
      AppBarList(context, 1, categoriesNames, categoriesRoutes, 0.430.sw),
      AppBarList(context, 2, pagesNames, pagesRoutes, 0.520.sw),
    ],
  );
}

class ContainerView extends StatefulWidget {
  ContainerView({
    Key? key,
    required this.containerWidth,
    required this.containerHeight,
    required this.paddingHorizontal,
    required this.paddingVertical,
    required this.typeSize,
    required this.sizeBetween,
    required this.textSize,
    required this.dateSize,
  }) : super(key: key);
  final double containerWidth;
  final double containerHeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double typeSize;
  final double sizeBetween;
  final double textSize;
  final double dateSize;

  @override
  State<ContainerView> createState() => _ContainerViewState(
      containerWidth: containerWidth,
      containerHeight: containerHeight,
      paddingHorizontal: paddingHorizontal,
      paddingVertical: paddingVertical,
      typeSize: typeSize,
      sizeBetween: sizeBetween,
      textSize: textSize,
      dateSize: dateSize);
}

class _ContainerViewState extends State<ContainerView> {
  final double containerWidth;
  final double containerHeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double typeSize;
  final double sizeBetween;
  final double textSize;
  final double dateSize;
  bool c = false;

  _ContainerViewState(
      {required this.containerWidth,
      required this.containerHeight,
      required this.paddingHorizontal,
      required this.paddingVertical,
      required this.typeSize,
      required this.sizeBetween,
      required this.textSize,
      required this.dateSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (x) {
        AppCubit.get(context).onContainerHover(x);
        c = AppCubit.get(context).isContainerHover;
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: widget.containerWidth,
        height: widget.containerHeight,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: c ? BoxFit.cover : BoxFit.fill,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80',
                      ))),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: widget.paddingHorizontal,
                vertical: widget.paddingVertical,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 2.w),
                        color: ColorManger.deepPink,
                        child: Text(
                          "FASHION",
                          style: GoogleFonts.lato(
                              color: ColorManger.white,
                              fontWeight: FontWeight.bold,
                              fontSize: widget.typeSize),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: widget.sizeBetween,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text(
                        "This is my first webSite",
                        style: TextStyle(
                            fontSize: widget.textSize,
                            color: ColorManger.white,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        "December 9,2022",
                        style: TextStyle(
                            fontSize: widget.dateSize,
                            color: ColorManger.gray,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container ContainerView1(
    {required double containerWidth,
    required double containerHeight,
    required double paddingHorizontal,
    required double paddingVertical,
    required double typeSize,
    required double sizeBetween,
    required double textSize,
    required double dateSize,
    required bool isHover}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    width: containerWidth,
    height: containerHeight,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80',
                  ))),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: paddingVertical,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    color: ColorManger.deepPink,
                    child: Text(
                      "FASHION",
                      style: GoogleFonts.lato(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: typeSize),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizeBetween,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  child: Text(
                    "This is my first webSite",
                    style: TextStyle(
                        fontSize: textSize,
                        color: ColorManger.white,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: Text(
                    "December 9,2022",
                    style: TextStyle(
                        fontSize: dateSize,
                        color: ColorManger.gray,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        )
      ],
    ),
  );
}

Container ContainerView2(BuildContext context,
    {required double containerWidth,
    required double containerHeight,
    required double paddingHorizontal,
    required double imageWidth,
    required double imageHeight,
    required double sizeWidth,
    required double typeSize,
    required double sizeBetween,
    required double textSize,
    required double dateSize}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
    width: containerWidth,
    height: containerHeight,
    child: AppResponsive.isMobile(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: imageWidth,
                height: imageHeight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
              ),
              SizedBox(
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                      color: ColorManger.goldenRed,
                      child: Text(
                        "FOOD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: typeSize,
                            color: ColorManger.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: sizeWidth,
                child: Text(
                  "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                  style: TextStyle(
                      color: ColorManger.textColor,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  width: sizeWidth,
                  child: Text(
                    "December 9,2022",
                    style: TextStyle(
                        fontSize: dateSize,
                        color: ColorManger.gray,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        : Row(
            children: [
              Container(
                width: imageWidth,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
              ),
              SizedBox(
                width: sizeBetween,
              ),
              SizedBox(
                height: double.infinity,
                width: sizeWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: sizeWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                            color: ColorManger.goldenRed,
                            child: Text(
                              "FOOD",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: typeSize,
                                  color: ColorManger.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: sizeWidth,
                      child: Text(
                        "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                        style: TextStyle(
                            color: ColorManger.textColor,
                            fontSize: textSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                        width: sizeWidth,
                        child: Text(
                          "December 9,2022",
                          style: TextStyle(
                              fontSize: dateSize,
                              color: ColorManger.gray,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )
            ],
          ),
  );
}

Container ContainerView3(
    {required double containerWidth,
    required double containerHeight,
    required double imageHeight,
    required double typeSize,
    required double sizeBetween,
    required double textSize,
    required double dateSize}) {
  return Container(
    height: containerHeight,
    width: containerWidth,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'data:image/jpeg;base64,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',
                  ))),
          height: imageHeight,
          width: double.infinity,
        ),
        SizedBox(
          height: sizeBetween,
        ),
        Row(
          children: [
            Text(
              "MUSIC",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: typeSize,
                  color: ColorManger.gray),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "After The Moon How Close gear Is Space Travel Really?",
            style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
            width: double.infinity,
            child: Text(
              "December 9,2022",
              style: TextStyle(
                  fontSize: dateSize,
                  color: ColorManger.gray,
                  fontWeight: FontWeight.bold),
            )),
      ],
    ),
  );
}

Container ContainerView4(
    {required double containerHeight,
    required double containerWidth,
    required double typeSize,
    required double textSize,
    required double dateSize,
    required double containerTextWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.w),
    width: containerWidth,
    height: containerHeight,
    child: Row(
      children: [
        Container(
          width: containerHeight,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80')),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: 0.01.sw,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: containerTextWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "FOOD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: typeSize,
                        color: ColorManger.gray),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: containerTextWidth,
              child: Text(
                "This is ContainerView4 This is ContainerView 4",
                style: TextStyle(
                    color: ColorManger.textColor,
                    fontSize: textSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                width: containerTextWidth,
                child: Text(
                  "December 9,2022",
                  style: TextStyle(
                      fontSize: dateSize,
                      color: ColorManger.gray,
                      fontWeight: FontWeight.bold),
                )),
          ],
        )
      ],
    ),
  );
}

Container ContainerView5({
  required double containerWidth,
  required double containerHeight,
  required double paddingHorizontal,
  required double imageWidth,
  required double sizeWidth,
  required double typeSize,
  required double sizeBetween,
  required double titleSize,
  required double textSize,
  required double dateSize,
  required double buttonHeight,
  required double buttonWidth,
  required double buttonSp,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
    width: containerWidth,
    height: containerHeight,
    child: Row(
      children: [
        Container(
          width: imageWidth,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
        ),
        SizedBox(
          width: sizeBetween,
        ),
        SizedBox(
          height: double.infinity,
          width: sizeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                      color: ColorManger.gray,
                      child: Text(
                        "FOOD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: typeSize,
                            color: ColorManger.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: sizeWidth,
                child: Text(
                  "This is ContainerView2",
                  style: TextStyle(
                      color: ColorManger.textColor,
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: sizeWidth,
                child: Text(
                  "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                  style: TextStyle(
                      color: ColorManger.gray,
                      fontSize: textSize,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                  width: sizeWidth,
                  child: Text(
                    "December 9,2022",
                    style: TextStyle(
                        fontSize: dateSize,
                        color: ColorManger.gray,
                        fontWeight: FontWeight.bold),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    child: Container(
                  alignment: Alignment.center,
                  height: buttonHeight,
                  width: buttonWidth,
                  child: Text(
                    "READ MORE",
                    style:
                        TextStyle(color: ColorManger.gray, fontSize: buttonSp),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorManger.gray)),
                )),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Container ContainerView6(
    {required double containerHeight,
    required double containerWidth,
    required double textSize,
    required double dateSize,
    required double containerTextWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.w),
    width: containerWidth,
    height: containerHeight,
    child: Row(
      children: [
        Container(
          width: containerHeight,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80')),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: 0.01.sw,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: containerTextWidth,
              child: Text(
                "This is ContainerView4 This is ContainerView 4",
                style: TextStyle(
                    color: ColorManger.white,
                    fontSize: textSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                width: containerTextWidth,
                child: Text(
                  "December 9,2022",
                  style: TextStyle(
                      fontSize: dateSize,
                      color: ColorManger.whiteSmoke,
                      fontWeight: FontWeight.bold),
                )),
          ],
        )
      ],
    ),
  );
}

Container ContainerView7({
  required double containerWidth,
  required double containerHeight,
  required double paddingHorizontal,
  required double imageWidth,
  required double imageHeight,
  required double typeSize,
  required double titleSize,
  required double textSize,
  required double dateSize,
  required double buttonHeight,
  required double buttonWidth,
  required double buttonSp,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
    width: containerWidth,
    height: containerHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: imageWidth,
          height: imageHeight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
        ),
        SizedBox(
          width: containerWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                color: ColorManger.gray,
                child: Text(
                  "FOOD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: typeSize,
                      color: ColorManger.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: containerWidth,
          child: Text(
            "This is ContainerView2",
            style: TextStyle(
                color: ColorManger.textColor,
                fontSize: titleSize,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: containerWidth,
          child: Text(
            "This is ContainerView2 This is ContainerView2 This is ContainerView2",
            style: TextStyle(
                color: ColorManger.gray,
                fontSize: textSize,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
            width: containerWidth,
            child: Text(
              "December 9,2022",
              style: TextStyle(
                  fontSize: dateSize,
                  color: ColorManger.gray,
                  fontWeight: FontWeight.bold),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
              child: Container(
            alignment: Alignment.center,
            height: buttonHeight,
            width: buttonWidth,
            child: Text(
              "READ MORE",
              style: TextStyle(color: ColorManger.gray, fontSize: buttonSp),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorManger.gray)),
          )),
        )
      ],
    ),
  );
}

Container AnalysisContainer({
  required double containerWidth,
  required double containerHeight,
  required double paddingHorizontal,
  required double imageWidth,
  required double sizeWidth,
  required double typeSize,
  required double sizeBetween,
  required double titleSize,
  required double textSize,
  required double dateSize,
  required double buttonHeight,
  required double buttonWidth,
  required double buttonSp,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
    width: containerWidth,
    height: containerHeight,
    child: Row(
      children: [
        SizedBox(
          height: double.infinity,
          width: sizeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                      color: ColorManger.royalBlue,
                      child: Text(
                        "FOOD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: typeSize,
                            color: ColorManger.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: sizeWidth,
                child: Text(
                  "This is ContainerView2",
                  style: TextStyle(
                      color: ColorManger.textColor,
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: sizeWidth,
                child: Text(
                  "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                  style: TextStyle(
                      color: ColorManger.gray,
                      fontSize: textSize,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                  width: sizeWidth,
                  child: Text(
                    "December 9,2022",
                    style: TextStyle(
                        fontSize: dateSize,
                        color: ColorManger.gray,
                        fontWeight: FontWeight.bold),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    child: Container(
                  alignment: Alignment.center,
                  height: buttonHeight,
                  width: buttonWidth,
                  child: Text(
                    "READ MORE",
                    style: TextStyle(
                        color: ColorManger.gray,
                        fontSize: buttonSp,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorManger.gray)),
                )),
              )
            ],
          ),
        ),
        SizedBox(
          width: sizeBetween,
        ),
        Container(
          width: imageWidth,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
        ),
      ],
    ),
  );
}

Widget EndWebSite() {
  return AppResponsive(
      mobile: Container(
        height: 1.6.sh,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
        color: ColorManger.darkGray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 0.9.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: ColorManger.royalBlue,
                    height: 0.1.sh,
                    width: 0.4.sw,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 0.9.sw,
                    child: Text(
                      "When an unknown printer took a galley and scrambled it to make specimen book not only five centurie.",
                      style: TextStyle(
                          color: ColorManger.gray,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 0.4.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManger.gray,
                          ),
                          width: 40.h,
                          height: 40.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.9.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Categories",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                      height: 0.2.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "BodyLanguage",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Fashion",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Mix",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "NameAnalysis",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "ArtNews",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 0.9.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Recent Posts",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  ContainerView6(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.9.sw,
                      textSize: 18.sp,
                      dateSize: 16.sp,
                      containerTextWidth: 0.4.sw),
                  SizedBox(
                    height: 20,
                  ),
                  ContainerView6(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.9.sw,
                      textSize: 18.sp,
                      dateSize: 16.sp,
                      containerTextWidth: 0.4.sw),
                ],
              ),
            ),
            SizedBox(
              width: 0.9.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Instagram",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        height: 600,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
        color: ColorManger.darkGray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 0.4.sw,
                  child: Column(
                    children: [
                      Container(
                        color: ColorManger.royalBlue,
                        height: 0.1.sh,
                        width: 0.14.sw,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SizedBox(
                        width: 0.4.sw,
                        child: Text(
                          "When an unknown printer took a galley and scrambled it to make specimen book not only five centurie.",
                          style: TextStyle(
                              color: ColorManger.gray,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRect(
                              child: Icon(
                                Icons.facebook,
                                size: 40.sp,
                                color: ColorManger.gray,
                              ),
                            ),
                            ClipRect(
                              child: Icon(
                                Icons.facebook,
                                size: 40.sp,
                                color: ColorManger.gray,
                              ),
                            ),
                            ClipRect(
                              child: Icon(
                                Icons.facebook,
                                size: 40.sp,
                                color: ColorManger.gray,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManger.gray,
                              ),
                              width: 40.h,
                              height: 40.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 0.4.sw,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Categories",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorManger.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SizedBox(
                          height: 0.2.sh,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorManger.gray),
                                        height: 2.w,
                                        width: 2.w,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "BodyLanguage",
                                    style: TextStyle(
                                        color: ColorManger.gray,
                                        fontSize: 20.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorManger.gray),
                                        height: 2.w,
                                        width: 2.w,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Fashion",
                                    style: TextStyle(
                                        color: ColorManger.gray,
                                        fontSize: 20.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorManger.gray),
                                        height: 2.w,
                                        width: 2.w,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Mix",
                                    style: TextStyle(
                                        color: ColorManger.gray,
                                        fontSize: 20.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorManger.gray),
                                        height: 2.w,
                                        width: 2.w,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "NameAnalysis",
                                    style: TextStyle(
                                        color: ColorManger.gray,
                                        fontSize: 20.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorManger.gray),
                                        height: 2.w,
                                        width: 2.w,
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "ArtNews",
                                    style: TextStyle(
                                        color: ColorManger.gray,
                                        fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 0.4.sw,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Recent Posts",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorManger.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      ContainerView6(
                          containerHeight: 0.15.sh,
                          containerWidth: 0.4.sw,
                          textSize: 18.sp,
                          dateSize: 16.sp,
                          containerTextWidth: 0.2.sw),
                      SizedBox(
                        height: 20,
                      ),
                      ContainerView6(
                          containerHeight: 0.15.sh,
                          containerWidth: 0.4.sw,
                          textSize: 18.sp,
                          dateSize: 16.sp,
                          containerTextWidth: 0.2.sw),
                    ],
                  ),
                ),
                SizedBox(
                  width: 0.4.sw,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Instagram",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorManger.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      desktop: Container(
        height: 0.75.sh,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
        color: ColorManger.darkGray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 0.22.sw,
              child: Column(
                children: [
                  Container(
                    color: ColorManger.royalBlue,
                    height: 0.1.sh,
                    width: 0.14.sw,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 0.2.sw,
                    child: Text(
                      "When an unknown printer took a galley and scrambled it to make specimen book not only five centurie.",
                      style: TextStyle(
                          color: ColorManger.gray,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 0.15.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        ClipRect(
                          child: Icon(
                            Icons.facebook,
                            size: 40.sp,
                            color: ColorManger.gray,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManger.gray,
                          ),
                          width: 40.h,
                          height: 40.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.22.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Recent Posts",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  ContainerView6(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.22.sw,
                      textSize: 16.sp,
                      dateSize: 14.sp,
                      containerTextWidth: 0.10.sw),
                  SizedBox(
                    height: 20.h,
                  ),
                  ContainerView6(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.22.sw,
                      textSize: 16.sp,
                      dateSize: 14.sp,
                      containerTextWidth: 0.10.sw),
                ],
              ),
            ),
            SizedBox(
              width: 0.22.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Categories",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                      height: 0.3.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "BodyLanguage",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Fashion",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Mix",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "NameAnalysis",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorManger.gray),
                                    height: 2.w,
                                    width: 2.w,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "ArtNews",
                                style: TextStyle(
                                    color: ColorManger.gray, fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 0.22.sw,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Instagram",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}
