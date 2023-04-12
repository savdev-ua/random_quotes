import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:random_quotes/views/quote_page.dart';

import '../presenters/quote_bloc.dart';
import '../services/quote_service.dart';

class AppModule extends Module {



  @override
  List<Bind> get binds => [
        Bind((i) => QuoteService()),
        Bind.factory((repo) => QuoteBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const QuotePage()),
      ];
}
