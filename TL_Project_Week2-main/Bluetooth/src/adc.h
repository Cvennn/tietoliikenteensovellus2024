#ifndef ADC_H_KJJ
#define ADC_H_KJJ

struct Measurement
{
   uint16_t sensor_x;
   uint16_t sensor_y;
   uint16_t sensor_z;
   uint16_t sensor_dir; //muutos 14.11
};

int initializeADC(void);
struct Measurement readADCValue(void);
void printDebugInfo(void);


#endif



