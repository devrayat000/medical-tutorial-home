part of category_details_screen;

class CategoryDetailBuilder extends StatefulWidget {
  final int categoryId;

  const CategoryDetailBuilder({Key? key, required this.categoryId})
      : super(key: key);

  @override
  State<CategoryDetailBuilder> createState() => _CategoryDetailBuilderState();
}

class _CategoryDetailBuilderState extends State<CategoryDetailBuilder>
    with AutomaticKeepAliveClientMixin<CategoryDetailBuilder> {
  late final Future<Category> _categoryFuture;

  @override
  void initState() {
    super.initState();
    _categoryFuture = RepositoryProvider.of<RestClient>(context)
        .getCategoriyById(widget.categoryId);
  }

  @override
  final wantKeepAlive = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AsyncBuilder<Category>(
      future: _categoryFuture,
      loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, err) => Text(err.toString()),
      builder: (context, category) {
        final lectures = category.lectures;

        return ListView.separated(
          key: PageStorageKey('category-${category.id}'),
          padding: const EdgeInsets.all(kPagePadding),
          itemCount: lectures.length,
          separatorBuilder: (_, i) => const SizedBox(height: 12.0),
          itemBuilder: (context, index) =>
              LectureTile(lecture: lectures[index]),
        );
      },
    );
  }
}
