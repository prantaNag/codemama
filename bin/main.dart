import 'dart:io';

int calculateTablePosition(int screenWidth) {
  int tableWidth = 300;
  int leftMargin = (screenWidth - tableWidth) ~/ 2;
  return leftMargin;
}

void main() {
  int? screenWidth = int.tryParse(stdin.readLineSync() ?? '');

  if (screenWidth != null &&
      screenWidth >= 480 &&
      screenWidth <= 2160 &&
      screenWidth % 10 == 0) {
    int tablePosition = calculateTablePosition(screenWidth);
    print(tablePosition);
  } else {
    print(
        "Invalid input. Please provide a screen width within the range 480 to 2160 and divisible by 10.");
  }
}
