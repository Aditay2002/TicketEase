import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(

        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight((20))),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("Tickets", style: Styles.headLineStyle,),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(secondTab: "Previous", firstTab: "Upcoming"),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 15),
            // padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger',alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: '53311 446546', secondText: 'Passport',alignment:CrossAxisAlignment.end,)
                  ],
                ),

                // Gap(AppLayout.getHeight(20)), // Add a gap for spacing
              ],
            ),
          ),
        ],
      ),
    );
  }
}
