import 'package:flutter/material.dart';
import 'package:prg_danbi/board/board_viewmodel.dart';
import 'package:prg_danbi/board/s_board.dart';
import 'package:prg_danbi/login/s_login.dart';
import 'package:prg_danbi/utils/common_preference.dart';
import 'package:provider/provider.dart';

import 'board/s_board_detail.dart';
import 'login/login_viewmodel.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => BoardViewModel()),
      ],
      child: MaterialApp(
        routes: {
          '/boardScreen': (context) => const BoardScreen(),
          '/boardDetailScreen': (context) => const BoardDetailScreen(),
        },
        home: LoginScreen(),
      ),
    );
  }
}
