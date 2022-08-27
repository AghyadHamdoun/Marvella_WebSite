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

class Mix extends StatefulWidget {
  const Mix({Key? key}) : super(key: key);

  @override
  State<Mix> createState() => _MixState();
}

class _MixState extends State<Mix> {
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
                          mobile: MobileMixScreen(),
                          tablet: TabletMixScreen(),
                          desktop: DesktopMixScreen()),
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

  Container DesktopMixScreen() => Container(
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
                      "Mix",
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
                      width: 0.72.sw,
                      height: 2.6.sh,
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (ctx, ind) {
                            return Container(
                              width: 0.7.sw,
                              height: 0.4.sh,
                              child:  Row(
                                children: [
                                  Container(
                                    width: 0.35.sw,
                                    height: 0.4.sh,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
                                  ),
                                  SizedBox(
                                    width: 0.35.sw,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                                          color: ColorManger.goldenRed,
                                          child: Text(
                                            "FOOD",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp,
                                                color: ColorManger.white),
                                          ),
                                        ),
                                        Container(
                                          width: 0.33.sw,
                                          child: Text(
                                            "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                                            style: TextStyle(
                                                color: ColorManger.textColor,
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          width: 0.33.sw,
                                          child: Text(
                                            "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                                            style: TextStyle(
                                                color: ColorManger.gray,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                            width: 0.35.sw,
                                            child: Text(
                                              "December 9,2022",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: ColorManger.gray,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        InkWell(
                                            child: Container(
                                              alignment: Alignment.center,
                                              height:40.h,
                                              width: 30.w,
                                              child: Text(
                                                "READ MORE",
                                                style:
                                                TextStyle(color: ColorManger.gray, fontSize: 14.sp),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: ColorManger.gray)),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            );
                          },
                   separatorBuilder: (BuildContext context, int index) =>  Container(
                       width: 0.7.sw,
                       height: 0.4.sh,
                       child:  Row(
                         children: [
                           SizedBox(
                             width: 0.35.sw,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 Container(
                                   padding: EdgeInsets.only(
                                       top: 6.h, bottom: 0.h, left: 2.w, right: 2.w),
                                   color: ColorManger.goldenRed,
                                   child: Text(
                                     "FOOD",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14.sp,
                                         color: ColorManger.white),
                                   ),
                                 ),
                                 Container(
                                   width: 0.33.sw,
                                   child: Text(
                                     "This is ContainerView2 This is ContainerView2 This is ContainerView2",
                                     style: TextStyle(
                                         color: ColorManger.textColor,
                                         fontSize: 28.sp,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),
                                 Container(
                                     alignment: Alignment.center,
                                     width: 0.35.sw,
                                     child: Text(
                                       "December 9,2022",
                                       style: TextStyle(
                                           fontSize: 14.sp,
                                           color: ColorManger.gray,
                                           fontWeight: FontWeight.bold),
                                     )),
                               ],
                             ),
                           ),
                           Container(
                             width: 0.35.sw,
                             height: 0.4.sh,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 image: DecorationImage(
                                     fit: BoxFit.cover,
                                     image: NetworkImage(
                                         'http://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80'))),
                           ),

                         ],
                       )
                   )
                          )),

                  SizedBox(
                    height: 2.6.sh,
                    width: 0.22.sw,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 0.2.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'POPULAR NEWS',
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
                                height: 1.3.sh,
                                child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 0.12.sw,
                                            childAspectRatio: 2/4,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10),
                                    itemCount: 6,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return ContainerView3(
                                          containerHeight: 0.26.sh,
                                          containerWidth: 0.12.sw,
                                          typeSize: 14.sp,
                                          textSize: 20.sp,
                                          dateSize: 14.sp, sizeBetween: 10.h, imageHeight: 0.15.sh,
                                      );}),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        SizedBox(
                          height: 0.65.sh,
                          width: 0.35.sw,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'HOT CATEGORIES',
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
                                      color: ColorManger.royalBlue,
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 0.1.sh,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "BODY LANGUAGE",
                                        style: TextStyle(
                                            color: ColorManger.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorManger.deepPink,
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 0.1.sh,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "FASHION",
                                        style: TextStyle(
                                            color: ColorManger.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorManger.orangeRed,
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 0.1.sh,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "MIX",
                                        style: TextStyle(
                                            color: ColorManger.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorManger.darkGray,
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 0.1.sh,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "NAME ANALYSIS",
                                        style: TextStyle(
                                            color: ColorManger.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorManger.goldenRed,
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 0.1.sh,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "ART NEWS",
                                        style: TextStyle(
                                            color: ColorManger.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Container TabletMixScreen() => Container(
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
                  "Mix",
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
                  width: 0.70.sw,
                  height: 7.2.sh,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 7,
                      itemBuilder: (ctx, ind) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: ContainerView7(
                              containerWidth: 0.8.sw,
                              containerHeight: 1.sh,
                              paddingHorizontal: 0,
                              imageWidth: 0.8.sw,
                              imageHeight: 0.7.sh,
                              typeSize: 16.sp,
                              titleSize: 28.sp,
                              textSize: 20.sp,
                              dateSize: 16.sp,
                              buttonHeight: 40.h,
                              buttonWidth: 40.w,
                              buttonSp: 14.sp)
                        );
                      })),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 3.2.sh,
                width: 0.8.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0.8.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'POPULAR NEWS',
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
                            width: 0.8.sw,
                            height: 1.6.sh,
                            child: GridView.builder(
                                gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 0.4.sw,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                                itemCount: 6,
                                itemBuilder: (BuildContext ctx, index) {
                                  return ContainerView3(
                                    containerHeight: 0.26.sh,
                                    containerWidth: 0.38.sw,
                                    typeSize: 14.sp,
                                    textSize: 20.sp,
                                    dateSize: 14.sp, sizeBetween: 10.h, imageHeight: 0.4.sh,
                                  );}),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 0.65.sh,
                      width: 0.8.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'HOT CATEGORIES',
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
                                  color: ColorManger.royalBlue,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "BODY LANGUAGE",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.deepPink,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "FASHION",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.orangeRed,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "MIX",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.darkGray,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "NAME ANALYSIS",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.goldenRed,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "ART NEWS",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );

  Container MobileMixScreen() => Container(
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
                  "Mix",
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
                  width: 0.9.sw,
                  height: 6.7.sh,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 7,
                      itemBuilder: (ctx, ind) {
                        return Container(
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            child: ContainerView7(
                                containerWidth: 0.9.sw,
                                containerHeight: 0.9.sh,
                                paddingHorizontal: 0,
                                imageWidth: 0.9.sw,
                                imageHeight: 0.6.sh,
                                typeSize: 16.sp,
                                titleSize: 28.sp,
                                textSize: 20.sp,
                                dateSize: 16.sp,
                                buttonHeight: 40.h,
                                buttonWidth: 60.w,
                                buttonSp: 14.sp)
                        );
                      })),
              SizedBox(height: 10.h,),
              SizedBox(
                height: 3.2.sh,
                width: 0.9.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0.9.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'POPULAR NEWS',
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
                            height: 1.6.sh,
                            child: GridView.builder(
                                gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 0.44.sw,
                                    childAspectRatio: 5/6,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                                itemCount: 6,
                                itemBuilder: (BuildContext ctx, index) {
                                  return ContainerView3(
                                    containerHeight: 0.38.sh,
                                    containerWidth: 0.40.sw,
                                    typeSize: 14.sp,
                                    textSize: 20.sp,
                                    dateSize: 14.sp, sizeBetween: 10.h, imageHeight: 0.25.sh,
                                  );}),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 0.65.sh,
                      width: 0.9.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'HOT CATEGORIES',
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
                                  color: ColorManger.royalBlue,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "BODY LANGUAGE",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.deepPink,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "FASHION",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.orangeRed,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "MIX",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.darkGray,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "NAME ANALYSIS",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorManger.goldenRed,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 0.1.sh,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "ART NEWS",
                                    style: TextStyle(
                                        color: ColorManger.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
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
