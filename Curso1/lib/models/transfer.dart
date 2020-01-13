class Transfer {
  final double value;
  final int account;

  Transfer(this.value, this.account);

    String toString() {
      return 'Transferencia p/: ' + this.account.toString() + ' de: ' + this.value.toString();
    }

}