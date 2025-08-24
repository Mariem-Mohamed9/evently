
import 'package:evently/firebase_service.dart';
import 'package:evently/models/category_model.dart';
import 'package:evently/models/event_model.dart';
import 'package:evently/tabs/home/home_header.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../widgets/event_item.dart';
class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
List<EventModel> events = [];

  @override
  void initstate(){
    super.initState();
    getEvents();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        SizedBox( height: 16),
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.symmetric( horizontal: 16),
              itemBuilder: ( _,index) => EventItem(events[index]),
              separatorBuilder: ( _ , _) => SizedBox( height: 16),
            itemCount:events.length,
              ),
        ),

      ],
    );
  }

  Future<void>getEvents()async{
    events = await FirebaseService.getEvents();
    setState(() {

    });

  }
  void filterEvents(CategoryModel? category){}
}
