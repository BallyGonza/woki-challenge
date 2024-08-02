import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woki_app/blocs/blocs.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';
import 'package:woki_app/views/views.dart';

Future<void> main() async {
  // await HiveService.initializeHive();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChromeService.setSystemChrome();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(
            userRepository: UserRepository(),
          ),
        ),
      ],
      child: const App(),
    );
  }
}
