  
  String size = "";
  int price = 0;
  bool validSize = false;

  // While loop to handle input validation
  while (!validSize) {
    print('Please enter your pizza size (small, medium, or large):');
    size = stdin.readLineSync()!.toLowerCase();

    // Use a switch statement to determine the price
    switch (size) {
      case 'small':
        price = 5;
        validSize = true;
        break;
      case 'medium':
        price = 7;
        validSize = true;
        break;
      case 'large':
        price = 10;
        validSize = true;
        break;
      default:
        print('Invalid size. Please try again.');
    }
  }

  print('How many pizzas do you want of $size?');
  int quantity = int.parse(stdin.readLineSync()!);

  int totalPayment = price * quantity;
  print('Your Total Payment is: \$${totalPayment}');
}