cpu-stress-test.sh
#!/bin/bash

echo "Starting CPU stress test..."

stress --cpu 2 --timeout 300

echo "CPU stress test completed."
