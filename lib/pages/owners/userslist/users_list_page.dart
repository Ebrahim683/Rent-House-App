import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rent_house/data/model/owner/bookedroommodel/show_booked_room_list_model.dart';
import 'package:rent_house/state/cubit/owner/showownerbookedhouse/show_owner_booked_house_cubit.dart';
import 'package:rent_house/state/cubit/owner/showownerbookedhouse/show_owner_booked_house_state.dart';
import 'package:rent_house/utils/utils.dart';
import 'package:rive/rive.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  refreshCallBack() async {
    setState(() {
      BlocProvider.of<ShowOwnerBookedHouseCubit>(context).showUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ভারাটিয়া লিস্ট'),
      ),
      body: LiquidPullToRefresh(
        onRefresh: () => refreshCallBack(),
        child:
            BlocConsumer<ShowOwnerBookedHouseCubit, ShowOwnerBookedHouseState>(
          listener: (context, state) {
            if (state is ShowOwnerBookedHouseErrorState) {
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is ShowOwnerBookedHouseSuccessState) {
              ShowBookedRoomListModel showBookedRoomListModel =
                  state.showBookedRoomListModel;
              List<ShowBookedRoomModel> showBookedRoomModel =
                  showBookedRoomListModel.bookedRoomModel!;
              return LoadingOverlay(
                isLoading:
                    state is ShowOwnerBookedHouseLoadingState ? true : false,
                progressIndicator: const RiveAnimation.asset(
                    'asset/animations/loadingEarth.riv'),
                child: ListView.builder(
                  itemCount: showBookedRoomModel.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text((index + 1).toString()),
                      ),
                      title:
                          Text(showBookedRoomModel[index].userName.toString()),
                      subtitle: Text(
                          showBookedRoomModel[index].userNumber.toString()),
                    );
                  },
                ),
              );
            } else {
              return const Center(
                child: Text('Something went wrong try to refresh'),
              );
            }
          },
        ),
      ),
    );
  }
}
