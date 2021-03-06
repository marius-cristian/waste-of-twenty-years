#!/bin/sh

set -e

day=8876
upper=16176
while [ "$day" -le "$upper" ]; do
    date=$(date -d "1970-01-01 UTC $day day" --iso-8601)
    echo $date > token
    git add token
    git commit -m "Good Morning $date ..." --date="$date"
    day=$(($day + 1))
done
echo "1889-04-20" > token
git add token
git commit -m "Ach nein"
