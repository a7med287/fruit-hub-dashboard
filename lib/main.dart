import 'package:flutter/material.dart';
import 'features/dashboard/presentation/views/dashboard_view.dart';

void main(){
  runApp(const FruitHubDashBoard());
 }

class FruitHubDashBoard extends StatelessWidget{
  const FruitHubDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashBoardView(),
    );
  }
}

