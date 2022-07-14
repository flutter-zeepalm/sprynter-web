class ChannelTable {
  String name;
  String email;

  String phone;
  String dateRegistered;
  String totalspent;
  ChannelTable({
    required this.name,
    required this.email,
    required this.phone,
    required this.dateRegistered,
    required this.totalspent,
  });
}

List<ChannelTable> channelList = [
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '09056604386',
      totalspent: '09056604386',
      dateRegistered: 'Apr 23 ,2021'),
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '09056604386',
      totalspent: '09056604386',
      dateRegistered: 'Apr 23 ,2021'),
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '5000       ',
      totalspent: '5000       ',
      dateRegistered: 'Apr 15 ,2021'),
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '09056604386',
      totalspent: '09056604386',
      dateRegistered: 'Apr 23 ,2021'),
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '00         ',
      totalspent: '00         ',
      dateRegistered: 'Apr 15,2021'),
  ChannelTable(
      name: 'Leslie Alexander',
      email: 'lexiealexander@gmail.com',
      phone: '0          ',
      totalspent: '0          ',
      dateRegistered: 'Apr 11 ,2021'),
];
