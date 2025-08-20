import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset('assets/images/meeting.png',
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
          Text('21' , style: textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color:AppTheme.primary ) ,
          ),


          Text('Nov' , style: textTheme.titleSmall!.copyWith(
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
                  child: Text('Meeting for Updating The Development Method ' ,
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
