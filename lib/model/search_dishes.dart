import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/data/dishesList.dart';

class SearchDishes extends StatelessWidget {
  const SearchDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: dish.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, int index) => Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Color(0xffff0fdf4),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Color(0x1D000000),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: green200,
              ),
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Expanded(
                child: Image.asset(
                  dish[index].image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      dish[index].dishName,
                      style: appTheme.dishesCard,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dish[index].price,
                    style: appTheme.linethrough,
                  ),
                  Text(
                    dish[index].promoPrice,
                    style: appTheme.realPrice,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: gray300,
                      ),
                      Text(
                        dish[index].riviews,
                        style: appTheme.CardView,
                      ),
                    ],
                  ),
                  // impliment favorite thing here.
                  const Icon(
                    Icons.favorite_border,
                    color: green500,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
