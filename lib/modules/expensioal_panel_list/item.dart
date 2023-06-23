class Item{
  String headerText;
  String expandedText;
  bool isExpanded;
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded=false,
});
}