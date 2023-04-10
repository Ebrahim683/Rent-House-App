import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_cubit.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_state.dart';

import '../../../routers/routes.dart';

class BookedHousePage extends StatelessWidget {
  const BookedHousePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ভাড়াকৃত রুম'),
      ),
      body: BlocConsumer<ShowBookedHouseCubit, ShowBookedHouseState>(
        listener: (context, state) {
          if (state is ShowBookedHouseErrorState) {
            log(state.error);
          } else if (state is ShowBookedHouseSuccessState) {
            log(state.bookedHouseListModel.toString());
          }
        },
        builder: (context, state) {
          if (state is ShowBookedHouseLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ShowBookedHouseErrorState) {
            return Center(
              child: Text(state.error.toString()),
            );
          } else if (state is ShowBookedHouseSuccessState) {
            BookedHouseListModel bookedHouseListModel =
                state.bookedHouseListModel;
            List<BookedHouseModel> bookedHouseModel =
                bookedHouseListModel.bookedHouseModel!;
            return ListView.builder(
              itemCount: bookedHouseModel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    bookedHouseModel[index].ownerName.toString(),
                  ),
                  leading: CircleAvatar(
                    child: Text(bookedHouseModel[index].id.toString()),
                  ),
                  subtitle: Text(bookedHouseModel[index].category.toString()),
                  onTap: () => Navigator.pushNamed(
                      context, booked_house_details_page,
                      arguments: {'bookedHouseModel': bookedHouseModel[index]}),
                );
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
