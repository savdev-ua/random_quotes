import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:shake/shake.dart';
import 'package:random_quotes/services/quote_service.dart';

part 'quote_event.dart';

part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final quoteService = Modular.get<QuoteService>();

  QuoteBloc() : super(const QuoteState()) {
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      add(ShakeEvent());
    });
    detector.startListening();

    on<ShakeEvent>((event, emit) {
      // Handle shake event, e.g., request a new quote
      add(RequestDataEvent());
    });

    on<RequestDataEvent>((event, emit) async {
      emit(state.copyWith(isDataLoading: true));
      var result = await quoteService.fetchQuote();
      if (result != null) {
        print(result.author);
        emit(state.copyWith(
            authorName: result.author,
            quoteText: result.text,
            isDataLoading: false));
      } else {
        print('NULL result');
      }

      emit(state.copyWith(isDataLoading: false));
    });
  }
}
