#!/bin/bash

# Define the paths
OUTPUT_PATH="/output"
RESOURCE_PATH="resources"

# Ensure the output directories exist
mkdir -p "${OUTPUT_PATH}/images"

# Copy the files
cp "${RESOURCE_PATH}/output.tif" "${OUTPUT_PATH}/images/."
cp "${RESOURCE_PATH}/output.json" "${OUTPUT_PATH}/results.json"
cp "${RESOURCE_PATH}/gleason-score.json" "${OUTPUT_PATH}/gleason-score.json"

ls "${OUTPUT_PATH}"
ls "${OUTPUT_PATH}/images"
