// import 'package:flutter/material.dart';
// import 'package:flutter_state_notifier/flutter_state_notifier.dart';
// import 'package:fooriend/models/stores/home_store.dart';
// import 'package:fooriend/utils/mock_constant.dart';
// import 'package:fooriend/widgets/screens/home/home_communities_state.dart';
// import 'package:provider/provider.dart';
//
// import 'children/community_circle.dart';
//
// class CommunityBar extends StatelessWidget {
//   final List<Map<String,String>> userCommunity;
//   const CommunityBar({
//     Key? key,
//     required this.userCommunity,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StateNotifierProvider<HomeCommunitiesController, HomeCommunitiesState>(
//       create: (_) => HomeCommunitiesController(context: context, homeStore: HomeStore()),
//       builder: (context, _){
//         return Container(
//           height: MediaQuery.of(context).size.height * 0.1,
//           child: ListView.builder(
//             itemCount: 5,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (BuildContext context, int index) {
//             return InkWell(
//               child: CommunityCircle(
//                 communityName: userCommunity[index]["name"]!,
//                 communityIconUrl: userCommunity[index]["icon"]!,
//               ),
//               onTap: () => context
//                   .read<HomeCommunitiesController>()
//                   .selectCommunity(userCommunity[index]["name"]!),
//               );
//             },
//           ),
//         );
//       }
//     );
//   }
// }
