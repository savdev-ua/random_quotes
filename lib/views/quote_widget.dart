import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presenters/quote_bloc.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuoteBloc, QuoteState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Center(
          child: Stack(
            children: [
              state.isDataLoading == true
                  ? const CupertinoActivityIndicator()
                  : Container(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(state.authorName ?? '***',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .navLargeTitleTextStyle
                              .copyWith(color: Theme.of(context).primaryColor, fontSize: 19)),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        state.quoteText ?? '*****************',
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontSize: 15),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
