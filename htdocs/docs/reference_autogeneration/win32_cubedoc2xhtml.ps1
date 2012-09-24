$files = dir ..\* -include *.html

foreach($f in $files)
{
    $in = $f.FullName
    $out = [system.io.path]::ChangeExtension($f.FullName, "html")
    msxsl.exe -o "$out" -v "$in" ..\xml\cubedoc2xhtml.xslt
}