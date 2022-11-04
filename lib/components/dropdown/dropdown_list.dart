part of "dropdown_button.dart";

class _DropdownList extends StatelessWidget {
  final List itemsList;
  final String selectedPair;
  final double? width;
  final Function(String)? onTap;

  const _DropdownList({
    required this.itemsList,
    required this.selectedPair,
    this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemsList.length,
          separatorBuilder: (context, index) =>
              Container(margin: const EdgeInsets.symmetric(vertical: 16), height: 1, color: Colors.redAccent),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => onTap!(itemsList[index]),
              child: Text(
                itemsList[index].toString(),
                style: itemsList[index] == selectedPair
                    ? Theme.of(context).textTheme.bodyLarge
                    : Theme.of(context).textTheme.bodyMedium,
              ),
            );
          },
        ),
      ),
    );
  }
}
