#!/bin/bash

# Install the testing requirements
echo "Installing testing requirements in Docker container...";
pip install -r /mnt/data/geopandas/requirements.test.txt > /dev/null;

# Run the tests
echo "Running geopandas test suite...";
results_file="/mnt/results/results-${IMAGE_VERSION}.txt";
pytest /mnt/data/geopandas/geopandas/tests > ${results_file} 2>&1;

echo "Testing complete. See results/results-${IMAGE_VERSION}.txt for results."
