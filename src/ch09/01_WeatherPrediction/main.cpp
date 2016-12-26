#include "WeatherPrediction.h"
#include "MyWeatherPrediction.h"

#include <iostream>
using namespace std;

int main() {
  WeatherPrediction p;
  p.setCurrentTempFahrenheit(24);
  p.setPositionOfJupiter(80);
  p.showResult();

  cout << "---------------------------------------" << endl;

  MyWeatherPrediction mp;
	mp.setCurrentTempCelsius(33);
	mp.setPositionOfJupiter(80);
	mp.showResult();
	cout << mp.getTemperature() << endl;

  return 0;
}
