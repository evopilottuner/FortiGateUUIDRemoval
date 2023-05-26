# Path to your input file
$inputFile = "path\to\your\file.txt"

# Path to save the modified file
$outputFile = "path\to\save\modified_file.txt"

# Read the input file
$lines = Get-Content -Path $inputFile

# Filter out lines containing "set uuid"
$filteredLines = $lines | Where-Object { $_ -notmatch "set uuid [a-fA-F0-9-]+" }

# Write the modified lines to the output file
$filteredLines | Out-File -FilePath $outputFile -Encoding UTF8

Write-Host "Lines with 'set uuid' removed. Modified file saved."
