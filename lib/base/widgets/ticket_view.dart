import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

import 'app_layoutbuilder_widget_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: AppStyles.headLineStyle3.copyWith(
                        color: Colors.white
                      ),),
                      Expanded(child: Container(),),
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
                          height: 24,
                          child: AppLayoutbuilderWidgetDot(randomDivider: 6,)),
                        Center(child: Transform.rotate(
                          angle: 1.57,
                          child: const Icon(Icons.local_airport_rounded, color: Colors.white,),
                            )
                          )
                      ],)
                      ),
                      const BigDot(),
                      Expanded(child: Container(),),
                      Text("LDN", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),)
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New-York", style: AppStyles.headLineStyle4.copyWith(
                            color: Colors.white
                        ),),
                      ),
                      Expanded(child: Container()),
                      Text("8H 30M", style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white
                      ),),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text("London", textAlign: TextAlign.end, style: AppStyles.headLineStyle4.copyWith(
                            color: Colors.white
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: false,),
                  Expanded(child: AppLayoutbuilderWidgetDot(randomDivider: 16, width: 6,)),
                  BigCircle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("1 MAY", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),),
                      Expanded(child: Container(),),
                      Text("08:00 AM", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),),
                      Expanded(child: Container(),),
                      Text("23", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),)
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text("Date", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),),
                      Expanded(child: Container()),
                      Text("Departure time", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),),
                      Expanded(child: Container()),
                      Text("Number", style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
