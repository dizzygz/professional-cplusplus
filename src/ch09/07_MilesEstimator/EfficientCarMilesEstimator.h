#ifndef EFFICIENTCARMILESESTIMATOR_H
#define EFFICIENTCARMILESESTIMATOR_H

#include "MilesEstimator.h"

class EfficientCarMilesEstimator : public MilesEstimator {
private:
  virtual int getMilesPerGallon() const override;
};

#endif /* EFFICIENTCARMILESESTIMATOR_H */
