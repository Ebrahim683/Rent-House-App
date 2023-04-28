import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rent_house/data/model/owner/leaveroomlistmodel/leave_room_list_model.dart';
import 'package:rent_house/routers/routes.dart';
import 'package:rent_house/utils/utils.dart';

import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_cubit.dart';
import '../../../state/cubit/owner/leaveroomrequestlist/leave_room_request_list_state.dart';

class LeaveRoomRequestListPage extends StatefulWidget {
  const LeaveRoomRequestListPage({super.key});

  @override
  State<LeaveRoomRequestListPage> createState() =>
      _LeaveRoomRequestListPageState();
}

class _LeaveRoomRequestListPageState extends State<LeaveRoomRequestListPage> {
  @override
  Widget build(BuildContext context) {
    refreshCallBack() async {
      setState(() {
        BlocProvider.of<LeaveRoomRequestListCubit>(context).getRequestList();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('রুম ছাড়ার আবেদন'),
      ),
      body: LiquidPullToRefresh(
        child:
            BlocConsumer<LeaveRoomRequestListCubit, LeaveRoomRequestListState>(
          listener: (context, state) {
            if (state is LeaveRoomRequestErrorState) {
              errorDialog(context: context, message: state.error);
            }
          },
          builder: (context, state) {
            if (state is LeaveRoomRequestSuccessState) {
              LeaveRoomListModel leaveRoomListModel = state.leaveRoomListModel;
              List<LeaveRoomModel> leaveRoomModel =
                  leaveRoomListModel.leaveRoomModel!;
              return ListView.builder(
                itemCount: leaveRoomModel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(leaveRoomModel[index].requestId.toString()),
                    ),
                    title: Text(leaveRoomModel[index].userName.toString()),
                    subtitle: Text(leaveRoomModel[index].userNumber.toString()),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        approve_page,
                        arguments: {'leaveRoomModel': leaveRoomModel[index]},
                      );
                    },
                  );
                },
              );
            } else {
              return const Center(
                child: Text('Something went wrong try to refresh'),
              );
            }
          },
        ),
        onRefresh: () => refreshCallBack(),
      ),
    );
  }
}
