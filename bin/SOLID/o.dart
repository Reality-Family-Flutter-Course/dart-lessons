class Discount {
  double giveDiscount(double price) {
    return price * 0.2;
  }

  double giveDiscounts(double price, String account) {
    if (account == 'fav') {
      return price * 0.2;
    } else if (account == 'vip') {
      return price * 0.4;
    } else {
      return 0;
    }
  }
}

// Correct one

class VipDiscount extends Discount {
  @override
  double giveDiscount(double price) {
    return super.giveDiscount(price) * 2;
  }
}

class SuperVipDiscount extends Discount {
  @override
  double giveDiscount(double price) {
    return super.giveDiscount(price) * 3;
  }
}
