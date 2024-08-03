import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:woki_app/blocs/blocs.dart';
import 'package:woki_app/data/data.dart';
import 'package:woki_app/services/services.dart';
import 'package:woki_app/views/views.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.initializeHive();
  await SystemChromeService.setSystemChrome();

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => HttpService()),
        Provider<ApiService>(
          create: (context) => ApiService(
            httpService: context.read<HttpService>(),
          ),
        ),
        Provider<UserRepository>(
          create: (context) => UserRepository(
            apiService: context.read<ApiService>(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              UserBloc(userRepository: context.read<UserRepository>()),
        ),
      ],
      child: const App(),
    ),
  );
}
