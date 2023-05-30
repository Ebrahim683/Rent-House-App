import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_house/data/model/profile/profile_model_list.dart';
import 'package:rent_house/state/cubit/profile/profile_cubit.dart';
import 'package:rent_house/widget/app_widget.dart';

import '../../state/cubit/profile/profile_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  singleItem({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepOrange, size: 30),
          gap(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('প্রোফাইল'),
        centerTitle: true,
      ),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: Lottie.asset('asset/animations/timer.json'),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.error),
                  gap(),
                  refreshButton(onPress: () {
                    setState(() {
                      BlocProvider.of<ProfileCubit>(context).getProfile();
                    });
                  }),
                ],
              ),
            );
          } else if (state is SuccessState) {
            ProfileModelList profileModelList = state.profileModelList;

            if (profileModelList.status == 'fail') {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.profileModelList.message.toString()),
                    gap(),
                    refreshButton(onPress: () {
                      setState(() {
                        BlocProvider.of<ProfileCubit>(context).getProfile();
                      });
                    }),
                  ],
                ),
              );
            } else {
              List<ProfileModel> profileModel = profileModelList.profileModel!;
              return LoadingOverlay(
                isLoading: state is LoadingState ? true : false,
                progressIndicator: Lottie.asset('asset/animations/timer.json'),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipPath(
                            clipper: ClipperProfileTop(),
                            child: Container(
                              color: Colors.orange,
                              height: 300.h,
                            ),
                          ),
                          // Positioned(
                          //   left: size.width * 0.3,
                          //   bottom: -20,
                          //   child: CircleAvatar(
                          //     radius: 70.r,
                          //     backgroundColor: Colors.teal,
                          //     child: const Icon(
                          //       Icons.person,
                          //       color: Colors.white,
                          //       size: 100,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      gap(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              gap(h: 50.h),
                              singleItem(
                                  icon: Icons.person_outline,
                                  text: profileModel[0].name.toString()),
                              singleItem(
                                  icon: Icons.call_outlined,
                                  text: profileModel[0].phoneNumber.toString()),
                              singleItem(
                                  icon: Icons.email_outlined,
                                  text: profileModel[0].email.toString()),
                              singleItem(
                                  icon: Icons.co_present_rounded,
                                  text: profileModel[0].role.toString()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Something went wrong'),
                  gap(),
                  refreshButton(onPress: () {
                    setState(() {
                      BlocProvider.of<ProfileCubit>(context).getProfile();
                    });
                  }),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class ClipperProfileTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var x = size.width;
    var y = size.height;
    Path path = Path();

    path.lineTo(0, y - 20);
    path.lineTo(x, y - 80);
    path.lineTo(x, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
