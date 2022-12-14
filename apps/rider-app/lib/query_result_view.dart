import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'generated/l10n.dart';

class QueryResultView extends StatelessWidget {
  final QueryResult queryResult;

  const QueryResultView(this.queryResult, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (queryResult.isLoading) {
      return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator.adaptive(),
          Text(
            S.of(context).loading,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ));
    }
    if (queryResult.hasException) {
      return Center(
        child: Text(queryResult.exception.toString()),
      );
    }
    return const SizedBox();
  }
}
