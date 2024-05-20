import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../air_tours/air_tours_view.dart';
import 'favorites_icon_button.dart';
import 'air_tour_details.dart';
import 'air_tour_plane_image.dart';
import 'air_tour_text.dart';

class AirToursListItem extends StatefulWidget {
  const AirToursListItem({super.key});

  @override
  State<AirToursListItem> createState() => _AirToursListItemState();
}

class _AirToursListItemState extends State<AirToursListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AirToursView()));
      },
      child:  Column(
        children: [
           Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  const AirTourPlaneImg(),
                  FavoritesIconButton(),
                ],
              ),
              const AirTourDetails()
            ],
          ),
          SizedBox(height: 10.h),
          const AirTourText()
        ],
      ),
    );
  }
}
