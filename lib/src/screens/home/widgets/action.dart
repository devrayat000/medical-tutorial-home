part of home_screen;

class PrimaryAction extends StatelessWidget {
  final Widget title;
  final Widget icon;
  final void Function()? onPressed;

  const PrimaryAction({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2.5,
              child: Material(
                type: MaterialType.card,
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconTheme(
                    data: const IconThemeData(
                      color: Colors.black,
                      size: 48.0,
                    ),
                    child: icon,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.subtitle1!,
              child: title,
            ),
          ],
        ),
      ),
    );
  }
}
