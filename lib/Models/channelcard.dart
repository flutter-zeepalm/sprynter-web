class ChannelCard {
  String title;
  String subTitle;
  ChannelCard({
    required this.title,
    required this.subTitle,
  });
}

List<ChannelCard> listOfCard = [
  ChannelCard(title: 'Total Users', subTitle: '64'),
  ChannelCard(title: 'Active Users', subTitle: '60'),
  ChannelCard(title: 'Avg. Daily Opens', subTitle: '16'),
  ChannelCard(title: 'Net Order Price', subTitle: '43'),
];
