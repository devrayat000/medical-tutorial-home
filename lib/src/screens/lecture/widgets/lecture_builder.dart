part of lecture_screen;

class LectureBuilder extends StatefulWidget {
  const LectureBuilder({Key? key}) : super(key: key);

  @override
  State<LectureBuilder> createState() => _LectureBuilderState();
}

class _LectureBuilderState extends State<LectureBuilder>
    with AutomaticKeepAliveClientMixin<LectureBuilder> {
  late final Future<List<Lecture>> _lecturesFuture;

  @override
  void initState() {
    super.initState();
    _lecturesFuture = RepositoryProvider.of<RestClient>(context).getLectures();
  }

  @override
  final wantKeepAlive = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AsyncBuilder<List<Lecture>>(
      future: _lecturesFuture,
      loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, err) => Text(err.toString()),
      builder: (context, lectures) {
        return ListView.separated(
          key: const PageStorageKey('lectures'),
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
