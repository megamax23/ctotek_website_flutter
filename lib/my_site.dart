import 'package:ctotek/core/configs/connection/bloc/connected_bloc.dart';
import 'package:ctotek/core/configs/connection/network_check.dart';
import 'package:ctotek/core/providers/drawer_provider.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MySite extends StatelessWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CTOTEK',
            // theme: AppTheme.themeData(state.isDarkThemeOn, context),
            initialRoute: "/",
            routes: {"/": (context) => const NChecking()},
          );
        }),
      ),
    );
  }
}
