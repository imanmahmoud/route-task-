import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/theming_manager.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.h),
        hintText: 'What do you search for?',
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: ThemeManager.blueGreyColor,
        ),
        prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 32.sp,
              color: Theme.of(context).primaryColor,
            )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2),
        ),
      ),
    );
  }
}
