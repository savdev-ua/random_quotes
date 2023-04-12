part of 'quote_bloc.dart';

@immutable
abstract class QuoteEvent {}

class ShakeEvent extends QuoteEvent {}

class RequestDataEvent extends QuoteEvent {}
