import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_responsive.dart';
import '../../cubit/cubit.dart';
import '../../cubit/cubit_state.dart';
import '../../shared/components/components.dart';
import '../../shared/styles/color_manger.dart';
import '../resources/routes_manger.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    toolbarHeight: 60.h,
                    title: Text(
                      '5arbashatBnat',
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Text(
                              "FOLLOW US:",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.facebook,
                            size: 20.sp,
                            color: ColorManger.gray,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.whatsapp,
                            size: 20.sp,
                            color: ColorManger.gray,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.telegram,
                            size: 20.sp,
                            color: ColorManger.gray,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      )
                    ],
                    backgroundColor: ColorManger.darkGray,
                  ),
                ];
              },
              body: Stack(
                children: [
                  Container(
                    color: ColorManger.whiteSmoke,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: AppResponsive.isDesktop(context) ? 100.h : 80.h,
                          ),
                          AppResponsive(
                              mobile: MobileNewsScreen(),
                              tablet: TabletNewsScreen(),
                              desktop: DesktopNewsScreen()),
                          EndWebSite()
                        ],
                      ),
                    ),
                  ),
                  MyAppBar(context),
                  false
                      ? Container(
                      width: 1.sw,
                      height: 1.sh,
                      child: Row(
                        children: [
                          Container(
                            color: ColorManger.white,
                            height: 1.sh,
                            width: 0.25.sw,
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.black87,
                              ))
                        ],
                      ))
                      : SizedBox()
                ],
              ),
            ));
      },
    );
  }

  Container DesktopNewsScreen() => Container(
    color: ColorManger.white,
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 0.1.sh,
            width: double.infinity,
            color: ColorManger.whiteSmoke,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.homeRoute);
                  },
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.house,
                            color: ColorManger.gray,
                            size: 18.sp,
                          ),
                          SizedBox(
                            height: 0.042.sh,
                          )
                        ],
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: ColorManger.gray, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: ColorManger.gray,
                  size: 20.sp,
                ),
                Text(
                  "ArtNews",
                  style: TextStyle(
                      color: ColorManger.royalBlue, fontSize: 14.sp),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Row(
            children: [
              SizedBox(
                  width: 0.70.sw,
                  height: 3.2.sh,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, ind) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            children: [
                              ContainerView(
                                  containerWidth: 0.32.sw,
                                  containerHeight: 0.60.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 40.h,
                                  typeSize: 16.sp,
                                  sizeBetween: 10.h,
                                  textSize: 28.sp,
                                  dateSize: 14.sp),
                              SizedBox(
                                width: 5.w,
                              ),
                              ContainerView(
                                  containerWidth: 0.32.sw,
                                  containerHeight: 0.60.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 40.h,
                                  typeSize: 16.sp,
                                  sizeBetween: 10.h,
                                  textSize: 28.sp,
                                  dateSize: 14.sp),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                width: 0.24.sw,
                height: 3.2.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'TOP CATEGORIES',
                          style: GoogleFonts.teko(
                              fontSize: 35.sp,
                              color: ColorManger.textColor),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 15.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManger.royalBlue),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Divider(
                                height: 4.h,
                              ),
                              Divider(
                                height: 4.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 0.3.sw,
                      height: 1.sh,
                      child: GridView.builder(
                          gridDelegate:
                          SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 0.12.sw,
                              childAspectRatio: 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                          itemCount: 6,
                          itemBuilder: (BuildContext ctx, index) {
                            return Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTna_G2bBFgAiZJjn1NoUrNQnaoQlFfewbITMXraqUsy_75Sm1AHE5TABByR_LIWMMXrsI&usqp=CAU"),
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                  child: Text(
                                    categoriesNames[index],
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 0.5.sh,
                      width: 0.3.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'STAY CONNECTED',
                                style: GoogleFonts.teko(
                                    fontSize: 35.sp,
                                    color: ColorManger.textColor),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorManger.royalBlue),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Divider(
                                      height: 4.h,
                                    ),
                                    Divider(
                                      height: 4.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );

  Container TabletNewsScreen() => Container(
    color: ColorManger.white,
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 0.1.sh,
            width: double.infinity,
            color: ColorManger.whiteSmoke,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.homeRoute);
                  },
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.house,
                            color: ColorManger.gray,
                            size: 18.sp,
                          ),
                          SizedBox(
                            height: 0.042.sh,
                          )
                        ],
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: ColorManger.gray, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: ColorManger.gray,
                  size: 20.sp,
                ),
                Text(
                  "ArtNews",
                  style: TextStyle(
                      color: ColorManger.royalBlue, fontSize: 14.sp),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(
                  width: 0.90.sw,
                  height: 2.8.sh,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, ind) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ContainerView(
                                  containerWidth: 0.35.sw,
                                  containerHeight: 0.5.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 20.h,
                                  typeSize: 14.sp,
                                  sizeBetween: 10.h,
                                  textSize: 22.sp,
                                  dateSize: 14.sp),
                              SizedBox(
                                width: 10.w,
                              ),
                              ContainerView(
                                  containerWidth: 0.35.sw,
                                  containerHeight: 0.5.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 20.h,
                                  typeSize: 14.sp,
                                  sizeBetween: 10.h,
                                  textSize: 22.sp,
                                  dateSize: 14.sp),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                width: 0.7.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'TOP CATEGORIES',
                          style: GoogleFonts.teko(
                              fontSize: 35.sp,
                              color: ColorManger.textColor),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 15.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManger.royalBlue),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Divider(
                                height: 4.h,
                              ),
                              Divider(
                                height: 4.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 0.7.sw,
                      height: 1.sh,
                      child: GridView.builder(
                          gridDelegate:
                          SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 0.4.sw,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                          itemCount: 6,
                          itemBuilder: (BuildContext ctx, index) {
                            return Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTna_G2bBFgAiZJjn1NoUrNQnaoQlFfewbITMXraqUsy_75Sm1AHE5TABByR_LIWMMXrsI&usqp=CAU"),
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                  child: Text(
                                    categoriesNames[index],
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 0.5.sh,
                      width: 0.9.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'STAY CONNECTED',
                                style: GoogleFonts.teko(
                                    fontSize: 35.sp,
                                    color: ColorManger.textColor),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorManger.royalBlue),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Divider(
                                      height: 4.h,
                                    ),
                                    Divider(
                                      height: 4.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );

  Container MobileNewsScreen() => Container(
    color: ColorManger.white,
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 0.1.sh,
            width: double.infinity,
            color: ColorManger.whiteSmoke,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.homeRoute);
                  },
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.house,
                            color: ColorManger.gray,
                            size: 18.sp,
                          ),
                          SizedBox(
                            height: 0.042.sh,
                          )
                        ],
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: ColorManger.gray, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: ColorManger.gray,
                  size: 20.sp,
                ),
                Text(
                  "ArtNews",
                  style: TextStyle(
                      color: ColorManger.royalBlue, fontSize: 14.sp),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(
                  width: 0.90.sw,
                  height: 7.sh,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, ind) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                            children: [
                              ContainerView(
                                  containerWidth: 0.85.sw,
                                  containerHeight: 0.65.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 20.h,
                                  typeSize: 14.sp,
                                  sizeBetween: 10.h,
                                  textSize: 22.sp,
                                  dateSize: 14.sp),
                              SizedBox(
                                height: 20.h,
                              ),
                              ContainerView(
                                  containerWidth: 0.85.sw,
                                  containerHeight: 0.65.sh,
                                  paddingHorizontal: 10.w,
                                  paddingVertical: 20.h,
                                  typeSize: 14.sp,
                                  sizeBetween: 10.h,
                                  textSize: 22.sp,
                                  dateSize: 14.sp),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                width: 0.9.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'TOP CATEGORIES',
                          style: GoogleFonts.teko(
                              fontSize: 35.sp,
                              color: ColorManger.textColor),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 15.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManger.royalBlue),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Divider(
                                height: 4.h,
                              ),
                              Divider(
                                height: 4.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 0.9.sw,
                      height: 1.sh,
                      child: GridView.builder(
                          gridDelegate:
                          SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 0.7.sw,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                          itemCount: 6,
                          itemBuilder: (BuildContext ctx, index) {
                            return Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTna_G2bBFgAiZJjn1NoUrNQnaoQlFfewbITMXraqUsy_75Sm1AHE5TABByR_LIWMMXrsI&usqp=CAU"),
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(15)),
                                  child: Text(
                                    categoriesNames[index],
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 0.5.sh,
                      width: 0.9.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'STAY CONNECTED',
                                style: GoogleFonts.teko(
                                    fontSize: 35.sp,
                                    color: ColorManger.textColor),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorManger.royalBlue),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Divider(
                                      height: 4.h,
                                    ),
                                    Divider(
                                      height: 4.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.08.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: ColorManger.white,
                                    size: 35.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 1,
                                    color: ColorManger.white,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2M Followers",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
