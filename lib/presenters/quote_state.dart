part of 'quote_bloc.dart';

class QuoteState extends Equatable {
  final bool? isDataLoading;
  final String? authorName;
  final String? quoteText;

  const QuoteState({
    this.isDataLoading,
    this.authorName,
    this.quoteText,
  });

  QuoteState copyWith({
    bool? isDataLoading,
    String? authorName,
    String? quoteText,
  }) {
    return QuoteState(
      isDataLoading: isDataLoading ?? this.isDataLoading,
      authorName: authorName ?? this.authorName,
      quoteText: quoteText ?? this.quoteText,
    );
  }

  @override
  List<Object?> get props => [
        isDataLoading,
        authorName,
        quoteText,
      ];
}
