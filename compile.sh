
pages=$(ls -r pages/*.html | xargs -n 1 basename)

rm site/*

cp assets/* site

for page in $pages; do
    cat header.html >> site/$page
    cat pages/$page >> site/$page
    cat footer.html >> site/$page
done
