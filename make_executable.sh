#!/bin/bash
# make_executable.sh
# Helper script to ensure postBuild is executable
# Run this after cloning your repository

echo "Making postBuild executable..."
chmod +x postBuild

echo "Checking file permissions..."
ls -la postBuild

echo "Adding to git..."
git add postBuild

echo "Committing change..."
git commit -m "Make postBuild executable for Binder"

echo "Pushing to GitHub..."
git push

echo "Done! Your postBuild is now executable."
echo "Binder should now work correctly."
