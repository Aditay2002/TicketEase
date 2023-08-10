import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  final bool? isColor;
   TicketView({Key? key,required this.ticket,required this.isColor}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width*0.85,
        height: AppLayout.getHeight(240),
        child: Container(
          margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children:[
              // showing blur part

              Container(
                decoration: BoxDecoration(
                  color: isColor==null ? Color(0xFF526799):Colors.white,
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),

                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(ticket['from']['code'],
                            style: Styles.headLineStyle3.copyWith(color: isColor==null ? Colors.white:Colors.black)),
                        const Spacer(),
                        ThickContainer(isColor: true),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: isColor==null?Colors.white:Colors.grey.shade500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded,
                                      color: isColor==null ?Colors.white:Color(0xFF8ACCF7)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ThickContainer(isColor: true), // Place the ThickContainer inside the Expanded widget

                        const Spacer(),
                        Text(ticket['to']['code'],
                            style: Styles.headLineStyle3
                                .copyWith(color:  isColor==null ? Colors.white:Colors.black)),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['from']['name'],
                            style: Styles.headLineStyle4.copyWith(color:  isColor==null ? Colors.white:Colors.black),
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: Styles.headLineStyle3.copyWith(color:  isColor==null ? Colors.white:Colors.black),
                        ),

                        SizedBox(
                          width:  AppLayout.getWidth(100),
                          child: Text(
                            ticket['to']['name'],
                            textAlign:TextAlign.end, style: Styles.headLineStyle4.copyWith(color:  isColor==null ? Colors.white:Colors.black),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            //   showing the orange card/ticket
              Container(
                color:isColor==null?Styles.orangeColor:Colors.white,
                child:Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child:DecoratedBox(
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.only(topRight: Radius.circular( AppLayout.getHeight(10)),
                          bottomRight: Radius.circular( AppLayout.getHeight(10)))
                        ),
                      )
                    ),Expanded(
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth() / 15).floor() as int, (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: isColor==null? Colors.white:Colors.black,
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth() / 15).floor() as int, (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor==null? Colors.white:Colors.black,
                                  ),
                                ),
                              )),
                            );
                          },
                        ),
                      ),
                    ),


                    SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child:DecoratedBox(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius:BorderRadius.only(topLeft: Radius.circular( AppLayout.getHeight(10)),
                                  bottomLeft: Radius.circular( AppLayout.getHeight(10)))
                          ),
                        )
                    )
                  ],
                )

              ),
              Container(
    decoration: BoxDecoration(
    color:isColor==null?Styles.orangeColor:Colors.white,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(isColor==null?21:0),
      bottomRight: Radius.circular(isColor==null?21:0),)),
    padding: const EdgeInsets.only(left:16,right:16,top:10,bottom: 10),
              child:Column(

                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start),
                      Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                            ticket['date'],
                            style:Styles.headLineStyle3.copyWith(color:  isColor==null ? Colors.white:Colors.black)
                          ),
                          Text("DATE",style:Styles.headLineStyle4.copyWith(color:  isColor==null ? Colors.white:Colors.black),)
                        ]
                      ),

                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text(
                                ticket['departure_time'],
                                style:Styles.headLineStyle3.copyWith(color:  isColor==null ? Colors.white:Colors.black)
                            ),
                            Text("Departure time",style:Styles.headLineStyle4.copyWith(color:  isColor==null ? Colors.white:Colors.black),)
                          ]
                      ),
                      Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                                ticket['number'].toString(),
                                style:Styles.headLineStyle3.copyWith(color:  isColor==null ? Colors.white:Colors.black)
                            ),
                            Text("Number",style:Styles.headLineStyle4.copyWith(color:  isColor==null ? Colors.white:Colors.black),)
                          ]
                      )
                    ],
                  )
                ]
              ))

            ],
          ),
        ));
  }
}
