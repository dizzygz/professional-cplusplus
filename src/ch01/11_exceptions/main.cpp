#include <exception>
#include <iostream>
#include <stdexcept>

double divideNumbers(double numerator, double denominator) {
  if (denominator == 0) {
    throw std::invalid_argument("Denominator cannot be 0.");
  }

  return numerator / denominator;
}

int main() {
  try {
    std::cout << divideNumbers(2.5, 0.5) << std::endl;
    std::cout << divideNumbers(2.3, 0) << std::endl;
    std::cout << divideNumbers(4.5, 2.5) << std::endl;
  } catch (const std::exception& ex) {
    std::cout << "Exception caught: " << ex.what() << std::endl;
  }

  return 0;
}
