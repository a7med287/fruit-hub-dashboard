import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/add_product_view.dart';

import '../../features/dashboard/presentation/views/dashboard_view.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    case DashBoardView.routName:
      return MaterialPageRoute(builder: (context) => const DashBoardView(),);
    case AddProductView.routName:
      return MaterialPageRoute(builder: (context) => const AddProductView(),);
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
  }

}