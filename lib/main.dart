import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/helper_function/on_generate_routs.dart';
import 'features/dashboard/presentation/views/dashboard_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FruitHubDashBoard());
 }

class FruitHubDashBoard extends StatelessWidget{
  const FruitHubDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashBoardView.routName,
    );
  }
}

