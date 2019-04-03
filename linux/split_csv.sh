tail -n +2 $1 | split -l $2 - split_file_
for file in split_file_*
do
    head -n 1 $1 > tmp_file
    cat "$file" >> tmp_file
    mv -f tmp_file "$file.csv"
    rm -f $file
done
