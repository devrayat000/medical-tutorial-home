part of widgets;

class AsyncBuilder<T extends Object?> extends StatelessWidget {
  final Future<T>? future;
  final T? initialData;
  final Widget Function(BuildContext context) loadingBuilder;
  final Widget Function(BuildContext context, Object? error) errorBuilder;
  final Widget Function(BuildContext context, T data) builder;

  const AsyncBuilder({
    Key? key,
    this.future,
    this.initialData,
    required this.loadingBuilder,
    required this.errorBuilder,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      key: key,
      future: future,
      initialData: initialData,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return loadingBuilder(context);
          case ConnectionState.done:
            if (snapshot.hasError) {
              log('Error', error: snapshot.error);
              return errorBuilder(context, snapshot.error);
            } else if (snapshot.hasData) {
              return builder(context, snapshot.data!);
            } else {
              return loadingBuilder(context);
            }
          default:
            return loadingBuilder(context);
        }
      },
    );
  }
}
