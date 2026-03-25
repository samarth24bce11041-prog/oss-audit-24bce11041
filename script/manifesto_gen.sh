#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Purpose: Generates a personalized philosophy statement.

echo "Answer three questions to generate your manifesto."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph
{
    echo "Open Source Manifesto"
    echo "Created on: $DATE"
    echo "------------------------------------------"
    echo "I believe that tools like $TOOL empower the world because $FREEDOM is essential to progress."
    echo "To contribute to this ecosystem, I commit to building $BUILD and sharing it openly,"
    echo "ensuring that knowledge remains a shared human resource."
} > "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"

# Alias concept note: alias mygen='./manifesto_gen.sh'