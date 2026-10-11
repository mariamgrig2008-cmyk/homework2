// 7. Ստեղծել աբստրակտ Payment դաս՝ double calculateFee(double amount);
// մեթոդով։
// Ստեղծել հետեւյալ ժառանգ դասերը՝
// ● CardPayment - 2% commission
// ● CashPayment - 0% commission
// ● CryptoPayment - 5% commission
// Գրել double calculateTotal(Payment payment, double amount) ֆունկցիան, որը
// վերադարձնում է գումարը + commission-ը։
// Պայման. calculateTotal()-ը չպետք է ստուգի օբյեկտի կոնկրետ տեսակը (is
// CardPayment, is CashPayment եւ այլն)։ Հաշվարկը պետք է կատարվի polymorphism-ի
// միջոցով։

abstract class Payment {
  double calculateFee(double amount);
}
class CardPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.02;
  }
}
class CashPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0;
  }
}
class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.05;
  }
}
double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}
void main() {
  CardPayment card = CardPayment();
  CashPayment cash = CashPayment();
  CryptoPayment crypto = CryptoPayment();
  print(calculateTotal(card, 11000));
  print(calculateTotal(cash, 1500));
  print(calculateTotal(crypto, 2100));
}
