import '../Utils/images_path.dart';

class TopCustomers {
  String name;
  String email;
  String profileImge;
  String money;
  TopCustomers({
    required this.name,
    required this.email,
    required this.profileImge,
    required this.money,
  });
}

List<TopCustomers> listOfTopCustomer = [
  TopCustomers(
      name: 'Neil Sims',
      email: 'email@example.com',
      profileImge: CustomAssets.kNeilsims,
      money: '\$367'),
  TopCustomers(
      name: 'Bonnie Green',
      email: 'email@example.com',
      profileImge: CustomAssets.kBonniegreen,
      money: '\$67'),
  TopCustomers(
      name: 'Micheal Gough',
      email: 'email@example.com',
      profileImge: CustomAssets.kMicheel,
      money: '\$3467'),
  TopCustomers(
      name: 'Thomas Lean',
      email: 'email@example.com',
      profileImge: CustomAssets.kThomas,
      money: '\$2367'),
  TopCustomers(
      name: 'Lana Byrd',
      email: 'email@example.com',
      profileImge: CustomAssets.kLana,
      money: '\$367'),
  TopCustomers(
      name: 'Karen Nelson',
      email: 'email@example.com',
      profileImge: CustomAssets.kkaren,
      money: '\$1367'),
];
