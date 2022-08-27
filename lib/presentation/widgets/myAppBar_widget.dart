import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvella/presentation/bodyLanguage/body_language.dart';

import '../../cubit/cubit.dart';
import '../../shared/components/components.dart';
import '../../shared/styles/color_manger.dart';
import '../resources/routes_manger.dart';

InkWell addressesWidget(BuildContext context,
    {required bool h, required String title, required int ind}) {
  return InkWell(
      onTap: () {},
      onHover: (x) {
        AppCubit.get(context).onHover(x, ind);
      },
      child: Container(
          width: 0.07.sw,
          alignment: Alignment.center,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: h ? ColorManger.royalBlue : ColorManger.darkGray,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              Icon(
                h ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                color: h ? ColorManger.royalBlue : ColorManger.darkGray,
                size: 16.sp,
              ),
            ],
          )));
}

Row AppBarList(
  BuildContext context,
  int indx,
  List<String> names,
  List routes,
  double space,
) {
  return Row(
    children: [
      SizedBox(
        width: space,
      ),
      Row(
        children: [
          AppCubit.get(context).isHover[indx]
              ? InkWell(
                  onTap: () {},
                  onHover: (x) {
                    AppCubit.get(context).onHover(x, indx);
                  },
                  child: Container(
                    width: 0.1.sw,
                    height: 240.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                              child: Divider(
                                thickness: 4,
                                height: 0,
                                color: ColorManger.royalBlue,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          onHover: (x) {
                            AppCubit.get(context).onHover(x, indx);
                          },
                          child: Container(
                            height: 240.h,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (ctx, ind) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(routes[ind]);
                                  },
                                  onHover: (x) {
                                    AppCubit.get(context)
                                        .onHoverCategories(x, ind);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 3.h),
                                    height: 40.h,
                                    color: ColorManger.white,
                                    child: Row(
                                      children: [
                                        AppCubit.get(context)
                                                .isHoverCategories[ind]
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 10.h,
                                                    width: 3,
                                                    color:
                                                        ColorManger.royalBlue,
                                                  ),
                                                  SizedBox(
                                                    height: 6.h,
                                                  )
                                                ],
                                              )
                                            : SizedBox(
                                                width: 3,
                                              ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "${names[ind]}",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppCubit.get(context)
                                                        .isHoverCategories[ind]
                                                    ? ColorManger.royalBlue
                                                    : ColorManger.gray),
                                          ),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                );
                              },
                              itemCount: names.length,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    ],
  );
}
