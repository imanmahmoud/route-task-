import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/presentation/widgets/search_text_field.dart';

class SearchBarWithCartItem extends StatelessWidget {
  const SearchBarWithCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTextField()),
        SizedBox(
          width: 24.w,
        ),
        InkWell(
          onTap: () {},
          child: ImageIcon(
            const AssetImage('assets/images/cart_icon.png'),
            size: 28.sp,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
