    #!/bin/bash

    read -p "Enter the first file name: " file1
    read -p "Enter the second file name: " file2

    if cmp -s "$file1" "$file2"; then
        echo "The contents of '$file1' and '$file2' are the same."
    else
        echo "The contents of '$file1' and '$file2' are different."
    fi
