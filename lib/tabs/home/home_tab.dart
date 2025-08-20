
import 'package:evently/tabs/home/home_header.dart';
import 'package:flutter/material.dart';

import '../../widgets/event_item.dart';
class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        SizedBox( height: 16),
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.symmetric( horizontal: 16),
              itemBuilder: ( _,index) => EventItem(),
              separatorBuilder: ( _ , _) => SizedBox( height: 16),
            itemCount:20,
              ),
        ),

      ],
    );
  }
}
