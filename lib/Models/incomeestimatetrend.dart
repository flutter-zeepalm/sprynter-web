class IncomeEstimatetrend {
  String title;
  String value;
  IncomeEstimatetrend({
    required this.title,
    required this.value,
  });
}

List<IncomeEstimatetrend> incomeList = [
  IncomeEstimatetrend(title: 'Total Orders', value: '449'),
  IncomeEstimatetrend(title: 'Net Payout', value: '426'),
  IncomeEstimatetrend(title: 'Average response time', value: '33m'),
  IncomeEstimatetrend(title: 'Average response time', value: '3h 8m'),
  IncomeEstimatetrend(title: 'Net Income', value: '900'),
];
