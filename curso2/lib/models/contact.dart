class Contact {
  final String name;
  final int account;
  final int id;

  Contact(this.name, this.account, this.id);

  @override
  String toString() {
    return 'Contact{name: $name, account: $account}';
  }
}