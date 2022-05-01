part of widgets;

class LectureTile extends StatelessWidget {
  final Lecture lecture;

  const LectureTile({Key? key, required this.lecture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
