import 'package:ecom_app/Business_Logic/Bloc/wishlist/wishlist_bloc.dart';
import 'package:ecom_app/Data/Repositories/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'Data/Utils/color_util.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MultiBlocProvider(
            providers:[
              BlocProvider(create: (_)=>WishlistBloc()..add(StartWishlist(),),)
            ],
            child: MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeProvider.themeMode,
              theme: Color.lightTheme,
              darkTheme: Color.darkTheme,
              onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: Home.routeName,
              home: const Home(),
              debugShowCheckedModeBanner: false,
            ),
          );
        },
      );
}

