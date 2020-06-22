#! /bin/bash

# Create folder for site.
mkdir -p site/blog

# Copy the style CSS into site folder.
cp assets/style.css site

# Create new file temp and start it with an empty line, so there is a space
# between original content and list we are about to append to it.
echo > .temp

for filename in $(ls ./posts | sort -r); do
    newpath="/blog/`basename $filename .md`"
    title=`grep ^title: posts/$filename | head -n 1 | cut -c 7- | xargs`
    date=`grep ^date: posts/$filename | head -n 1 | cut -c 6- | xargs`
    echo "- $date - [$title]($newpath/)" >> .temp
    mkdir -p site$newpath
    pandoc -s --template assets/template.html posts/$filename -o ./site$newpath/index.html
done

cat home.md .temp | pandoc -s --quiet --template assets/template.html -o site/index.html
rm .temp
