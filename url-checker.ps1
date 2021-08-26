#todo
#need to add some error control when url fails
#need to clean up output to file better, maybe write-host?

$infile=".\html.txt"
$outfile=".\checked-url.txt"
$list=get-content $infile | % {$_.split('"')} | select-string http:// 
foreach ($url in $list) {invoke-webrequest $url.line | Format-Table @{expression={$url.line};label="url"}, statuscode, statusdescription -AutoSize}

#can add this line to get input from select string piped in but can't figure out how to show current url as it dosen't exsit in the invoke-webrequest object
#| foreach-object {invoke-webrequest $_.line | Format-Table statuscode, statusdescription -AutoSize}
