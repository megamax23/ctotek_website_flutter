import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:ctotek/sections/main/main_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';

import 'bloc/connected_bloc.dart';

class NChecking extends StatelessWidget {
  const NChecking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      listener: (context, state) {},
      builder: (context, state) {
        final scrollProvider = Provider.of<ScrollProvider>(context);
        if (state is ConnectedSucessState) {
          //  return const MainPage();
          return MainPage(
            scrollProvider: scrollProvider,
          );
        } else {
          return MainPage(
            scrollProvider: scrollProvider,
          );
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}
// TODO
