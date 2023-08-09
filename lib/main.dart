import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/providers/auth_provider.dart';
import 'package:shop_map/providers/categories.dart';
import 'package:shop_map/providers/reviews.dart';
import 'package:shop_map/providers/shops.dart';
import 'package:shop_map/screens/all_reviews.dart';
import 'package:shop_map/screens/categories.dart';
import 'package:shop_map/screens/category_services.dart';
import 'package:shop_map/screens/category_shops.dart';
import 'package:shop_map/screens/home.dart';
import 'package:shop_map/screens/login.dart';
import 'package:shop_map/screens/most_visited.dart';
import 'package:shop_map/screens/otp.dart';
import 'package:shop_map/screens/shop_detail.dart';
import 'package:shop_map/screens/welcome.dart';
import 'package:shop_map/widgets/botton_navigation.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Shops(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ReviewsList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Map',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StreamBuilder(
          stream: _auth.authStateChanges(), // Listen to the user's login status
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Show a loading indicator if the login state is not determined yet.
            } else {
              if (snapshot.hasData) {
                // User is logged in
                return BottomBar();
              } else {
                // User is not logged in
                return LoginScreen();
              }
            }
          },
        ),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
          MostVisitedScreen.routeName: (ctx) => MostVisitedScreen(),
          ShopDetails.routeName: (ctx) => ShopDetails(),
          CategoryShops.routeName: (ctx) => CategoryShops(),
          CategoryServices.routeName: (ctx) => CategoryServices(),
          AllReviews.routeName: (ctx) => AllReviews(),
        },
      ),
    );
  }
}
