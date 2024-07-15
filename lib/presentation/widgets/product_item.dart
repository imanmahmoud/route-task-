import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/theming_manager.dart';
import 'package:route_task/domain/entities/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237.h,
      width: 191.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: ThemeManager.blueGreyColor,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: product.images?.first ?? '',
                  height: 128.h,
                  width: 191.w,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 5.h,
                  right: 2.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          color: Theme.of(context).primaryColor,
                        )),
                  ))
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text(
              product.title ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Row(
              children: [
                Text(
                  'EGP ${product.price}',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                Text(
                  'Review (${product.rating})',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: 7.w,
                ),
                const ImageIcon(
                  AssetImage('assets/images/star_icon.png'),
                  size: 16,
                  color: Colors.yellow,
                ),
                const Spacer(),
                Icon(
                  Icons.add_circle,
                  size: 28.sp,
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
