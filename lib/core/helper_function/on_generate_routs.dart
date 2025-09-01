import 'package:flutter/material.dart';

import '../../features/dashboard/presentation/views/dashboard_view.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    case DashBoardView.routName:
      return MaterialPageRoute(builder: (context) => const DashBoardView(),);
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
  }

}