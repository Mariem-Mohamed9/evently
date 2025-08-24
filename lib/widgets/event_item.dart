import 'package:evently/app_theme.dart';
import 'package:evently/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventItem extends StatelessWidget {
  EventModel event;
  EventItem(this.event);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child:
        Image.asset('assets/images/${ event.category.imageName}.png',
          height: screenSize.height * 0.23,
          width: double.infinity,
          fit: BoxFit.fill,
        
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppTheme.white ,
            borderRadius: BorderRadius.circular(8),
        ),
        child: Column(children: [
          Text(
            '${ event.dateTime.day}' ,
            style: textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color:AppTheme.primary ) ,
          ),


          Text(
            DateFormat('MMM').format(event.dateTime) ,
            style: textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
              color:AppTheme.primary ) ,

          ),

        ],),
      ),

        Positioned(
          width: screenSize.width -32,
          bottom: 8,
          child: Container(
             margin:EdgeInsets.symmetric(horizontal: 8) ,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppTheme.white ,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [

                Expanded(
                  child: Text(
                      event.title ,
                              style: textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color:AppTheme.black),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2

                  ),
                ),
                InkWell(
                    onTap: (){},
                    child :
                     Icon (Icons.favorite ,
                      size:24,
                      color: AppTheme.primary,))
              ],
            ),
          ),
        ),


    ],);
  }
}
