import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';
import 'package:shimmer/shimmer.dart';

import '../../../routers/routes.dart';
import '../../../state/cubit/owner/bookhouserequest/book_house_list_cubit.dart';
import '../../../state/cubit/owner/bookhouserequest/book_house_request_state.dart';
import '../../../utils/utils.dart';
import '../../../widget/app_widget.dart';

class BookHouseRequestPage extends StatefulWidget {
  const BookHouseRequestPage({super.key});

  @override
  State<BookHouseRequestPage> createState() => _BookHouseRequestPageState();
}

class _BookHouseRequestPageState extends State<BookHouseRequestPage> {
  @override
  Widget build(BuildContext context) {
    onRefresh() async {
      setState(() {
        BlocProvider.of<BookHouseRequestListCubit>(context)
            .getBookHouseRequest();
      });
    }

    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: onRefresh,
        child:
            BlocConsumer<BookHouseRequestListCubit, BookHouseRequestListState>(
          listener: (context, state) {
            if (state is BookHouseRequestListErrorState) {
              log(state.error);
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is BookHouseRequestListLoadingState) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Shimmer(
                    gradient: const LinearGradient(
                        colors: [Colors.black45, Colors.white60]),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.teal,
                      ),
                      title: Container(
                        height: 15.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      subtitle: Container(
                        height: 15.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.teal,
                      ),
                    ),
                  );
                },
              );
            } else if (state is BookHouseRequestListSuccessState) {
              BookHouseRequestListModel bookHouseRequestListModel =
                  state.bookHouseRequestListModel;

              if (bookHouseRequestListModel.status == 'fail') {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('No request found'),
                      gap(),
                      refreshButton(onPress: () {
                        setState(() {
                          BlocProvider.of<BookHouseRequestListCubit>(context)
                              .getBookHouseRequest();
                        });
                      }),
                    ],
                  ),
                );
              } else {
                List<BookHouseRequestModel> bookedHouseRequestModel =
                    bookHouseRequestListModel.bookHouseRequestModel!;
                return LoadingOverlay(
                  isLoading:
                      state is BookHouseRequestListLoadingState ? true : false,
                  child: ListView.builder(
                    itemCount: bookedHouseRequestModel.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[300],
                          child: Text((index + 1).toString()),
                        ),
                        title: Text(
                            bookedHouseRequestModel[index].userName.toString()),
                        subtitle: Text(bookedHouseRequestModel[index]
                            .userNumber
                            .toString()),
                        trailing: IconButton(
                            onPressed: () {
                              makeCall(
                                  number: bookedHouseRequestModel[index]
                                      .userNumber
                                      .toString());
                            },
                            icon: const Icon(Icons.call)),
                        onTap: () {
                          Navigator.pushNamed(context, book_room_approve_page,
                              arguments: {
                                'bookedHouseRequestModel':
                                    bookedHouseRequestModel[index]
                              });
                        },
                      );
                    },
                  ),
                );
              }
            } else if (state is BookHouseRequestListErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.error.toString()),
                    gap(),
                    refreshButton(onPress: () {
                      setState(() {
                        BlocProvider.of<BookHouseRequestListCubit>(context)
                            .getBookHouseRequest();
                      });
                    }),
                  ],
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Something went wrong'),
                    gap(),
                    refreshButton(onPress: () {
                      setState(() {
                        BlocProvider.of<BookHouseRequestListCubit>(context)
                            .getBookHouseRequest();
                      });
                    }),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
