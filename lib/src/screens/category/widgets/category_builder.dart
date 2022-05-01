part of category_screen;

class CategoryBuilder extends StatefulWidget {
  const CategoryBuilder({Key? key}) : super(key: key);

  @override
  State<CategoryBuilder> createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder>
    with AutomaticKeepAliveClientMixin<CategoryBuilder> {
  late final Future<List<CategoryBase>> _categoriesFuture;

  @override
  void initState() {
    super.initState();
    _categoriesFuture =
        RepositoryProvider.of<RestClient>(context).getCategories();
  }

  @override
  final wantKeepAlive = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AsyncBuilder<List<CategoryBase>>(
      future: _categoriesFuture,
      loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, err) => Text(err.toString()),
      builder: (context, categories) {
        return ListView.separated(
          key: const PageStorageKey('categories'),
          padding: const EdgeInsets.all(kPagePadding),
          itemCount: categories.length,
          separatorBuilder: (_, i) => const SizedBox(height: 16.0),
          itemBuilder: (context, index) {
            final category = categories[index];

            return CategoryCard(
              title: Text(category.title),
              onPressed: () {
                context.push('/category/${category.id}', extra: category);
              },
            );
          },
        );
      },
    );
  }
}
