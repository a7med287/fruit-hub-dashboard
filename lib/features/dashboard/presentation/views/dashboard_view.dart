import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/features/dashboard/presentation/views/widgets/dashboard_view_body.dart';
class DashBoardView extends StatelessWidget{
  const DashBoardView({super.key});

  static const String routName= "dashBoard";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const DashBoardViewBody()
    );
  }
}

