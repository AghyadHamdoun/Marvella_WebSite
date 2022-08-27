import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvella/app/app.dart';
import 'package:marvella/app_responsive.dart';
import 'package:marvella/cubit/cubit.dart';
import 'package:marvella/cubit/cubit_state.dart';
import 'package:marvella/shared/components/components.dart';
import 'package:marvella/shared/styles/color_manger.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
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
                        height:
                            AppResponsive.isDesktop(context) ? 100.h : 80.h,
                      ),
                      AppResponsive(
                        mobile: MobileHomeScreen(),
                        tablet: TabletHomeScreen(),
                        desktop: DesktopHomeScreen(),
                      ),
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

  Column DesktopHomeScreen() {
    return Column(
      children: [
        SizedBox(
          height: 0.23.sh,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerView4(
                  containerHeight: 0.12.sh,
                  containerWidth: 0.23.sw,
                  typeSize: 14.sp,
                  textSize: 16.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.12.sw),
              ContainerView4(
                  containerHeight: 0.12.sh,
                  containerWidth: 0.23.sw,
                  typeSize: 14.sp,
                  textSize: 16.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.12.sw),
              ContainerView4(
                  containerHeight: 0.12.sh,
                  containerWidth: 0.23.sw,
                  typeSize: 14.sp,
                  textSize: 16.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.12.sw),
              ContainerView4(
                  containerHeight: 0.12.sh,
                  containerWidth: 0.23.sw,
                  typeSize: 14.sp,
                  textSize: 16.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.12.sw),
            ],
          ),
        ),
        Container(
          color: ColorManger.white,
          height: 0.8.sh,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              InkWell(
                onTap: (){},
                onHover: (x){},
                child: ContainerView(
                    containerWidth: 0.50.sw,
                    containerHeight: 0.60.sh,
                    paddingHorizontal: 15.w,
                    paddingVertical: 50.h,
                    typeSize: 15.sp,
                    sizeBetween: 12.h,
                    textSize: 40.sp,
                    dateSize: 16.sp),
              ),
              SizedBox(
                width: 0.03.sw,
              ),
              Container(
                height: 0.60.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerView2(context,
                        containerWidth: 0.35.sw,
                        containerHeight: 0.18.sh,
                        paddingHorizontal: 10.h,
                        imageWidth: 0.22.sh,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 0.18.sw,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 20.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 0.35.sw,
                        containerHeight: 0.18.sh,
                        paddingHorizontal: 10.h,
                        imageWidth: 0.22.sh,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 0.18.sw,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 20.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 0.35.sw,
                        containerHeight: 0.18.sh,
                        paddingHorizontal: 10.h,
                        imageWidth: 0.22.sh,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 0.18.sw,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 20.sp,
                        dateSize: 14.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: double.infinity,
          height: 0.6.sh,
          color: ColorManger.whiteSmoke,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'Top Stories',
                    style: GoogleFonts.teko(
                        fontSize: 50.sp, color: ColorManger.textColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    height: 15.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorManger.royalBlue),
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
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerView3(
                      containerWidth: 0.20.sw,
                      containerHeight: 0.40.sh,
                      imageHeight: 0.25.sh,
                      typeSize: 14.sp,
                      sizeBetween: 5.h,
                      textSize: 20.sp,
                      dateSize: 14.sp),
                  ContainerView3(
                      containerWidth: 0.20.sw,
                      containerHeight: 0.40.sh,
                      imageHeight: 0.25.sh,
                      typeSize: 14.sp,
                      sizeBetween: 5.h,
                      textSize: 20.sp,
                      dateSize: 14.sp),
                  ContainerView3(
                      containerWidth: 0.20.sw,
                      containerHeight: 0.40.sh,
                      imageHeight: 0.25.sh,
                      typeSize: 14.sp,
                      sizeBetween: 5.h,
                      textSize: 20.sp,
                      dateSize: 14.sp),
                  ContainerView3(
                      containerWidth: 0.20.sw,
                      containerHeight: 0.40.sh,
                      imageHeight: 0.25.sh,
                      typeSize: 14.sp,
                      sizeBetween: 5.h,
                      textSize: 20.sp,
                      dateSize: 14.sp),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          color: ColorManger.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              SizedBox(
                width: 0.70.sw,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Latest News',
                          style: GoogleFonts.teko(
                              fontSize: 50.sp, color: ColorManger.textColor),
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
                        SizedBox(
                          width: 5.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ContainerView5(
                        containerWidth: double.infinity,
                        containerHeight: 0.3.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.25.sw,
                        sizeWidth: 0.42.sw,
                        typeSize: 16.sp,
                        sizeBetween: 5.w,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40.h,
                        buttonWidth: 30.w,
                        buttonSp:14.sp
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ContainerView5(
                        containerWidth: double.infinity,
                        containerHeight: 0.3.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.25.sw,
                        sizeWidth: 0.42.sw,
                        typeSize: 16.sp,
                        sizeBetween: 5.w,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40.h,
                        buttonWidth: 30.w,
                        buttonSp:14.sp
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ContainerView5(
                        containerWidth: double.infinity,
                        containerHeight: 0.3.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.25.sw,
                        sizeWidth: 0.42.sw,
                        typeSize: 16.sp,
                        sizeBetween: 5.w,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40.h,
                        buttonWidth: 30.w,
                        buttonSp:14.sp
                    ),
                    SizedBox(
                      height: 40.h,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 0.23.sw,
                height: 1.1.sh,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'STAY CONNECTED',
                          style: GoogleFonts.teko(
                              fontSize: 35.sp, color: ColorManger.textColor),
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
                    SizedBox(height: 20.h,),
                    SizedBox(height: 0.4.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }

  Column TabletHomeScreen() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          height: 0.45.sh,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerView4(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.42.sw,
                      typeSize: 14.sp,
                      textSize: 22.sp,
                      dateSize: 12.sp,
                      containerTextWidth: 0.22.sw),
                  ContainerView4(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.42.sw,
                      typeSize: 14.sp,
                      textSize: 22.sp,
                      dateSize: 12.sp,
                      containerTextWidth: 0.22.sw),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerView4(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.42.sw,
                      typeSize: 14.sp,
                      textSize: 22.sp,
                      dateSize: 12.sp,
                      containerTextWidth: 0.22.sw),
                  ContainerView4(
                      containerHeight: 0.15.sh,
                      containerWidth: 0.42.sw,
                      typeSize: 14.sp,
                      textSize: 22.sp,
                      dateSize: 12.sp,
                      containerTextWidth: 0.22.sw),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: ColorManger.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ContainerView(
                  containerWidth: 700,
                  containerHeight: 0.70.sh,
                  paddingHorizontal: 15.w,
                  paddingVertical: 50.h,
                  typeSize: 15.sp,
                  sizeBetween: 12.h,
                  textSize: 40.sp,
                  dateSize: 16.sp),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerView2(context,
                        containerWidth: 700,
                        containerHeight: 0.20.sh,
                        paddingHorizontal: 0,
                        imageWidth: 160,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 450,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 700,
                        containerHeight: 0.20.sh,
                        paddingHorizontal: 0,
                        imageWidth: 160,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 450,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 700,
                        containerHeight: 0.20.sh,
                        paddingHorizontal: 0,
                        imageWidth: 160,
                        imageHeight: 0.5.sh,//just in mobile
                        sizeWidth: 450,
                        typeSize: 14.sp,
                        sizeBetween: 5.w,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: double.infinity,
          color: ColorManger.whiteSmoke,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'Top Stories',
                    style: GoogleFonts.teko(
                        fontSize: 50.sp, color: ColorManger.textColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    height: 15.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorManger.royalBlue),
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
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerView3(
                          containerWidth: 320,
                          containerHeight: 0.50.sh,
                          imageHeight: 0.32.sh,
                          typeSize: 16.sp,
                          sizeBetween: 5.h,
                          textSize: 24.sp,
                          dateSize: 14.sp),
                      const SizedBox(
                        width: 25,
                      ),
                      ContainerView3(
                          containerWidth: 320,
                          containerHeight: 0.50.sh,
                          imageHeight: 0.32.sh,
                          typeSize: 14.sp,
                          sizeBetween: 5.h,
                          textSize: 24.sp,
                          dateSize: 14.sp),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerView3(
                          containerWidth: 320,
                          containerHeight: 0.50.sh,
                          imageHeight: 0.32.sh,
                          typeSize: 16.sp,
                          sizeBetween: 5.h,
                          textSize: 24.sp,
                          dateSize: 14.sp),
                      const SizedBox(
                        width: 25,
                      ),
                      ContainerView3(
                          containerWidth: 320,
                          containerHeight: 0.50.sh,
                          imageHeight: 0.32.sh,
                          typeSize: 14.sp,
                          sizeBetween: 5.h,
                          textSize: 24.sp,
                          dateSize: 14.sp),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          color: ColorManger.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Latest News',
                          style: GoogleFonts.teko(
                              fontSize: 50.sp, color: ColorManger.textColor),
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
                        SizedBox(
                          width: 5.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ContainerView7(
                        containerWidth: 700,
                        containerHeight: 760,
                        paddingHorizontal:0,
                        imageWidth: 700,
                        imageHeight:500 ,
                        typeSize: 17.sp,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40,
                        buttonWidth: 100,
                        buttonSp: 16.sp
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ContainerView7(
                        containerWidth: 700,
                        containerHeight: 760,
                        paddingHorizontal:0,
                        imageWidth: 700,
                        imageHeight:500 ,
                        typeSize: 17.sp,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40,
                        buttonWidth: 100,
                        buttonSp: 16.sp),
                    SizedBox(
                      height: 40.h,
                    ),
                    ContainerView7(
                        containerWidth: 700,
                        containerHeight: 760,
                        paddingHorizontal:0,
                        imageWidth: 700,
                        imageHeight:500 ,
                        typeSize: 17.sp,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40,
                        buttonWidth: 100,
                        buttonSp: 16.sp),
                    SizedBox(
                      height: 40.h,
                    ),
                    ContainerView7(
                        containerWidth: 700,
                        containerHeight: 760,
                        paddingHorizontal:0,
                        imageWidth: 700,
                        imageHeight:500 ,
                        typeSize: 17.sp,
                        titleSize: 28.sp,
                        textSize: 22.sp,
                        dateSize: 16.sp,
                        buttonHeight: 40,
                        buttonWidth: 100,
                        buttonSp: 16.sp),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'STAY CONNECTED',
                          style: GoogleFonts.teko(
                              fontSize: 35.sp, color: ColorManger.textColor),
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
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }

  Column MobileHomeScreen() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 0.8.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10,),
              ContainerView4(
                  containerHeight: 0.15.sh,
                  containerWidth: 1.sw,
                  typeSize: 14.sp,
                  textSize: 20.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.6.sw),
              ContainerView4(
                  containerHeight: 0.15.sh,
                  containerWidth: 1.sw,
                  typeSize: 14.sp,
                  textSize: 20.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.6.sw),
              ContainerView4(
                  containerHeight: 0.15.sh,
                  containerWidth: 1.sw,
                  typeSize: 14.sp,
                  textSize: 20.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.6.sw),
              ContainerView4(
                  containerHeight: 0.15.sh,
                  containerWidth: 1.sw,
                  typeSize: 14.sp,
                  textSize: 20.sp,
                  dateSize: 14.sp,
                  containerTextWidth: 0.6.sw),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: ColorManger.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ContainerView(
                  containerWidth: 0.92.sw,
                  containerHeight: 0.55.sh,
                  paddingHorizontal: 15.w,
                  paddingVertical: 50.h,
                  typeSize: 15.sp,
                  sizeBetween: 12.h,
                  textSize: 40.sp,
                  dateSize: 16.sp),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 2.20.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerView2(context,
                        containerWidth: 0.92.sw,
                        containerHeight: 0.70.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.92.sw,
                        imageHeight:0.5.sh,
                        sizeWidth: 0.92.sw,
                        typeSize: 14.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 0.92.sw,
                        containerHeight: 0.70.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.92.sw,
                        imageHeight:0.5.sh,
                        sizeWidth: 0.92.sw,
                        typeSize: 14.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView2(context,
                        containerWidth: 0.92.sw,
                        containerHeight: 0.70.sh,
                        paddingHorizontal: 0,
                        imageWidth: 0.92.sw,
                        imageHeight:0.5.sh,
                        sizeWidth: 0.92.sw,
                        typeSize: 14.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: double.infinity,
          color: ColorManger.whiteSmoke,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'Top Stories',
                    style: GoogleFonts.teko(
                        fontSize: 50.sp, color: ColorManger.textColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    height: 15.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorManger.royalBlue),
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
              ),//top story widget
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 2.95.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerView3(
                        containerWidth: 0.92.sw,
                        containerHeight: 0.7.sh,
                        imageHeight: 0.5.sh,
                        typeSize: 16.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView3(
                        containerWidth: 0.92.sw,
                        containerHeight: 0.7.sh,
                        imageHeight: 0.5.sh,
                        typeSize: 16.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView3(
                        containerWidth: 0.92.sw,
                        containerHeight: 0.7.sh,
                        imageHeight: 0.5.sh,
                        typeSize: 16.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                    ContainerView3(
                        containerWidth: 0.92.sw,
                        containerHeight: 0.7.sh,
                        imageHeight: 0.5.sh,
                        typeSize: 16.sp,
                        sizeBetween: 0,
                        textSize: 24.sp,
                        dateSize: 14.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          color: ColorManger.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Latest News',
                          style: GoogleFonts.teko(
                              fontSize: 50.sp, color: ColorManger.textColor),
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
                        SizedBox(
                          width: 5.w,
                        )
                      ],
                    ),//latest news widget
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 3.7.sh,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerView7(
                              containerWidth: 0.92.sh,
                              containerHeight: 0.9.sh,
                              paddingHorizontal:0,
                              imageWidth: 0.92.sh,
                              imageHeight:0.5.sh,
                              typeSize: 17.sp,
                              titleSize: 28.sp,
                              textSize: 22.sp,
                              dateSize: 16.sp,
                              buttonHeight: 40.h,
                              buttonWidth: 60.w,
                              buttonSp: 16.sp,
                          ),
                          ContainerView7(
                              containerWidth: 0.92.sh,
                              containerHeight: 0.9.sh,
                              paddingHorizontal:0,
                              imageWidth: 0.92.sh,
                              imageHeight:0.5.sh,
                              typeSize: 17.sp,
                              titleSize: 28.sp,
                              textSize: 22.sp,
                              dateSize: 16.sp,
                              buttonHeight: 40.h,
                              buttonWidth: 60.w,
                              buttonSp: 16.sp,
                          ),
                          ContainerView7(
                              containerWidth: 0.92.sh,
                              containerHeight: 0.9.sh,
                              paddingHorizontal:0,
                              imageWidth: 0.92.sh,
                              imageHeight:0.5.sh,
                              typeSize: 17.sp,
                              titleSize: 28.sp,
                              textSize: 22.sp,
                              dateSize: 16.sp,
                              buttonHeight: 40.h,
                              buttonWidth: 60.w,
                              buttonSp: 16.sp,
                          ),
                          ContainerView7(
                              containerWidth: 0.92.sh,
                              containerHeight: 0.9.sh,
                              paddingHorizontal:0,
                              imageWidth: 0.92.sh,
                              imageHeight:0.5.sh,
                              typeSize: 17.sp,
                              titleSize: 28.sp,
                              textSize: 22.sp,
                              dateSize: 16.sp,
                              buttonHeight: 40.h,
                              buttonWidth: 60.w,
                              buttonSp: 16.sp,
                          ),
                        ],
                      ),
                    ),
SizedBox(height: 20.h,)
                  ],
                ),
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
                              fontSize: 35.sp, color: ColorManger.textColor),
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
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }


}
