part of category_screen;

class CategoryCard extends StatelessWidget {
  final Widget title;
  final void Function()? onPressed;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24.0),
      child: Ink.image(
        image: _imageProvider,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(24.0),
          child: Container(
            height: kToolbarHeight * 2.5,
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: SizedBox()),
                const Icon(Icons.book, size: 36.0),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.headline6!,
                  child: title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static const _imageProvider = ExtendedAssetImageProvider(
    'assets/images/category.png',
    cacheRawData: true,
    imageCacheName: 'category',
  );
}
