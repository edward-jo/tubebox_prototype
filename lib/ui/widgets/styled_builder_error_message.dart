import 'package:flutter/material.dart';

class StyledBuilderErrorMessage extends StatelessWidget {
  const StyledBuilderErrorMessage({Key? key, required this.message})
      : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          message,
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
