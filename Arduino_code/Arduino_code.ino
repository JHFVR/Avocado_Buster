#include "AS726X.h"
AS726X sensor;

int counter = 0;
int value;

void setup() {
  sensor.begin();
  Serial.begin(115200);
//  sensor.begin(Wire, GAIN, MEASUREMENT_MODE);

}

void loop()  {
  if(counter < 3) {
    sensor.takeMeasurements();
    sensor.printMeasurements();
    sensor.takeMeasurementsWithBulb();
    //return sensor.printMeasurements();
    //Serial.println(value);
    //sensor.printUncalibratedMeasurements();
    counter = counter + 1;
  }
}

void takeMeasurementsWithBulb();

void printMeasurements();


