class DasboardCardsData {
  String title;
  String subTitle;
  DasboardCardsData({
    required this.title,
    required this.subTitle,
  });
}

List<DasboardCardsData> listOfCards = [
  DasboardCardsData(title: 'App Downloads', subTitle: '60'),
  DasboardCardsData(title: 'Avg. Daily Orders', subTitle: '16'),
  DasboardCardsData(title: 'Avg. Daily Income', subTitle: '43'),
  DasboardCardsData(title: 'Net Income', subTitle: '64'),
];
