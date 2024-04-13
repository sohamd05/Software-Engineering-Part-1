#!/bin/bash

# CSV file
csvFile="mydata.csv"

# Output VCF file
vcfFile="contacts.vcf"

# Remove the VCF file if it already exists
if [ -f "$vcfFile" ]; then
    rm "$vcfFile"
fi

# Read the CSV file line by line
while IFS=, read -r FirstName LastName MobilePhone Email
do
    # Skip the header line
    if [ "$FirstName" != "FirstName" ]; then
        # Write the contact information to the VCF file
        echo "BEGIN:VCARD" >> "$vcfFile"
        echo "VERSION:3.0" >> "$vcfFile"
        echo "N:$LastName;$FirstName;;;" >> "$vcfFile"
        echo "FN:$FirstName $LastName" >> "$vcfFile"
        echo "TEL;TYPE=CELL:$MobilePhone" >> "$vcfFile"
        echo "EMAIL:$Email" >> "$vcfFile"
        echo "END:VCARD" >> "$vcfFile"
    fi
done < "$csvFile"
xdg-open "$vcfFile"