import 'package:evently/app_theme.dart';
import 'package:evently/models/category_model.dart';
import 'package:evently/tabs/home/tab_item.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {


  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;


    return Container(
         padding:EdgeInsets.only(left: 16 , bottom: 16) ,
          width: double.infinity,
          decoration: BoxDecoration(color: AppTheme.primary ,
              borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(24),
                  bottomRight:Radius.circular(24),
              ),

          ),
           child: SafeArea(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Welcome Back ✨' , style: textTheme.titleSmall,),
              Text('User Name' , style: textTheme.headlineSmall,),
                SizedBox(height: 16),

                DefaultTabController(
                  length: CategoryModel.categories.length + 1,
                  child: TabBar(
                    isScrollable: true,
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      tabAlignment : TabAlignment.start,
                      labelPadding: EdgeInsets.only(right: 10),
                      onTap: (index){
                      if(currentIndex == index) return;
                      currentIndex = index;
                      setState(() {});

                      },
                      tabs: [
                        TabItem(
                          label: 'All',
                          selectedForegroundColor: AppTheme.primary,
                          isSelected:currentIndex == 0,
                          icon:Icons.ac_unit_outlined,
                          unselectedForegroundColor: AppTheme.white,
                          selectedBackgroundColor: AppTheme.white,



                        ),



                        ...CategoryModel.categories.
                        map(
                              ( category ) =>

                            TabItem(
                              label: category.name,
                              selectedForegroundColor: AppTheme.primary,
                              isSelected:currentIndex ==
                                  CategoryModel.categories.indexOf(category) + 1,
                              icon:category.icon,
                              unselectedForegroundColor: AppTheme.white,
                              selectedBackgroundColor: AppTheme.white,



                            ),





                        ),




                      ],










                  ),
                ),

              ],
             ),
           ),


    );

  }
}
