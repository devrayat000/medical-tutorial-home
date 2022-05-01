part of lecture_screen;

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
          padding: const EdgeInsets.all(kPagePadding),
          itemCount: lectures.length,
          separatorBuilder: (_, i) => const SizedBox(height: 12.0),
          itemBuilder: (context, index) {
            final lecture = lectures[index];
            return ListTile(
              visualDensity: const VisualDensity(vertical: 4.00),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ExtendedImage.network(
                    getThumb(lecture.link),
                    fit: BoxFit.cover,
                    cache: true,
                    cacheKey: 'lecture-${lecture.id}',
                  ),
                ),
              ),
              title: Text(lecture.title),
              trailing: Text('${lecture.duration} min'),
              onTap: () => _handleVideoOpen(lecture.link),
            );
          },
        );
      },
    );
  }

  void _handleVideoOpen(final Uri url) async {
    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data: url.toString(),
      );
      await intent.launch();
    } catch (e) {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw Exception('Cannot launch url!');
      }
    }
  }

  String getThumb(Uri uri) {
    final id = uri.queryParameters['v'];
    if (id == null) {
      throw Exception('');
    }
    return 'https://img.youtube.com/vi/$id/0.jpg';
  }
}
