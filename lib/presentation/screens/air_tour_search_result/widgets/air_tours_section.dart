import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import '../../air_tours/air_tours_view.dart';

class AirToursSection extends StatelessWidget {
  const AirToursSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      child: PaddingDynamic(
          start: 20.w,
          end: 20.w,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AirToursView()));
              },
              child: Column(
                children: [
                  AppContainer(
                      height: 224.h,
                      borderRadius: 15,
                      // borderColor: AppColors.darkBlue,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  AppContainer(
                                    height: 160.h,
                                    width: 350.w,
                                    borderRadius: 15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        Assets.imagesExploreHelpImg1,
                                        height: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  PaddingDynamic(
                                      top: 10.h,
                                      end: 10.w,
                                      child: CircleAvatar(
                                        radius: 17,
                                        backgroundColor: AppColors
                                            .secondaryColor
                                            .withOpacity(0.5),
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: AppColors.secondaryColor
                                              .withOpacity(0.7),
                                        ),
                                      ))
                                ],
                              ),
                              PaddingDynamic(
                                  start: 10.w,
                                  bottom: 10.h,
                                  child: Row(
                                    children: [
                                      AppContainer(
                                        width: 49.w,
                                        height: 21.h,
                                        color: AppColors.secondaryColor,
                                        borderRadius: 15,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            const Text(
                                              "4.7",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      AppContainer(
                                        width: 84.w,
                                        height: 21.h,
                                        color: AppColors.secondaryColor,
                                        borderRadius: 15,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Airfield: Selzo",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      AppContainer(
                                        width: 85.w,
                                        height: 21.h,
                                        color: AppColors.secondaryColor,
                                        borderRadius: 15,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Passengers: 4",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Cessna 172 familiarization flight from Kronstadt",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      )),
                ],
              ),
            ),
            itemCount: 10,
          )),
    );
  }

// child: Expanded(
//     child: ListView.separated(
//         itemBuilder: (context,index) => AppContainer(
//             height: 224.h,
//             borderRadius: 15,
//             borderColor: AppColors.darkBlue,
//             child: Column(
//               children: [
//                 Stack(
//                   alignment: Alignment.bottomLeft,
//                   children: [
//                     Stack(
//                       alignment: Alignment.topRight,
//                       children: [
//                         AppContainer(
//                           height: 160.h,
//                           width: 350.w,
//                           borderRadius: 15,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               Assets.imagesExploreHelpImg1,
//                               height: double.infinity,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         PaddingDynamic(
//                             top: 10,
//                             end: 10,
//                             child: CircleAvatar(
//                               radius: 17,
//                               backgroundColor:
//                               AppColors.secondaryColor.withOpacity(0.5),
//                               child: Icon(
//                                 Icons.favorite_outline,
//                                 color:
//                                 AppColors.secondaryColor.withOpacity(0.7),
//                               ),
//                             ))
//                       ],
//                     ),
//                     PaddingDynamic(
//                         start: 10,
//                         bottom: 10,
//                         child: Row(
//                           children: [
//                             AppContainer(
//                               width: 49.w,
//                               height: 21.h,
//                               color: AppColors.secondaryColor,
//                               borderRadius: 15,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(Icons.star,size: 18,),
//                                   SizedBox(width: 5.w,),
//                                   const Text(
//                                     "4.7",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w400
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(width: 10.w,),
//                             AppContainer(
//                               width: 84.w,
//                               height: 21.h,
//                               color: AppColors.secondaryColor,
//                               borderRadius: 15,
//                               child: const Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Airfield: Selzo",
//                                     style: TextStyle(
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w400
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(width: 10.w,),
//                             AppContainer(
//                               width: 85.w,
//                               height: 21.h,
//                               color: AppColors.secondaryColor,
//                               borderRadius: 15,
//                               child: const Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Passengers: 4",
//                                     style: TextStyle(
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w400
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 const SizedBox(height: 15,),
//                 const Text(
//                   "Cessna 172 familiarization flight from Kronstadt",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 16
//                   ),
//                 )
//               ],
//             )
//         ),
//         separatorBuilder: (context,index) =>  SizedBox(
//           height: 15.h,
//         ),
//         itemCount: 10
//     )),
}
