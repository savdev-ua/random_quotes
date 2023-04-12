import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:random_quotes/views/quote_widget.dart';

import '../presenters/quote_bloc.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<QuoteBloc>(),
      child: const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Shake your phone'),
        ),

        child: QuoteWidget(),
      ),
    );
  }
}
