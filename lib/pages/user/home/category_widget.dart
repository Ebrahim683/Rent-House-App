import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/strings.dart';
import 'package:rent_house/widget/app_widget.dart';

class CategoryWidget extends StatelessWidget {
  final String image;
  final String title;
  final color;
  final int index;

  const CategoryWidget({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    final category1 = [
      'office',
      'factory',
      'shop',
      'garage',
    ];

    final title1 = [
      officeTitle,
      factoryTitle,
      shopTitle,
      garageTitle,
    ];

    final category2 = [
      'Family',
      'Sublet',
      'Flat',
    ];

    final title2 = [
      familyTitle,
      subletTitle,
      flatTitle,
    ];

    final category3 = [
      'Male',
      'Female',
    ];

    final title3 = [
      maleTitle,
      femaleTitle,
    ];

    pushByCategory(String category, String pageTitle) {
      log(category);
      Navigator.pushNamed(context, house_list_page, arguments: {
        'category': category.toLowerCase().replaceAll(' ', ''),
        'title': pageTitle.toString(),
      });
    }

    viewBottomSheet(category, title) {
      showModalBottomSheet(
        showDragHandle: true,
        useSafeArea: true,
        context: context,
        isDismissible: true,
        enableDrag: true,
        backgroundColor: Colors.white,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(15.0),
            width: size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                category.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: roundButton(
                    title: title[index],
                    onClick: () =>
                        pushByCategory(category[index], title[index]),
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    return InkWell(
      onTap: () {
        if (index == 0) {
          viewBottomSheet(category2, title2);
        } else if (index == 1) {
          viewBottomSheet(category3, title3);
        } else {
          log(category1[index - 2]);
          Navigator.pushNamed(context, house_list_page, arguments: {
            'category': category1[index - 2].toLowerCase().replaceAll(' ', ''),
            'title': title1[index - 2].toString(),
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color[200],
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(color: Colors.white),
              ),
              height: 90.h,
              width: 90.w,
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1 / 1.4,
                  child: Image.asset(image),
                ),
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
