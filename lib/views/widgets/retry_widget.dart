import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woki_app/blocs/blocs.dart';
import 'package:woki_app/views/views.dart';

class RetryWidget extends StatelessWidget {
  const RetryWidget({required this.errorMessage, super.key});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(errorMessage),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CustomElevatedButton(
              color: Theme.of(context).colorScheme.error,
              onPressed: () =>
                  context.read<UserBloc>().add(const UserEvent.getUsers()),
              text: 'Retry',
            ),
          ),
        ],
      ),
    );
  }
}
