@ECHO OFF

REM Install Hugo if it's not installed
pushd C:\Users\ZeoSmeijsters\Documents\GitHub\AvolaDocs\Hugo\bin
if not exist Hugo md Hugo
cd Hugo 
if exist bin goto build
md bin
cd bin
:install
curl -o hugo.zip -L https://github.com/gohugoio/hugo/releases/download/v0.42.1/hugo_0.42.1_Windows-64bit.zip
echo Installing Hugo...
SetLocal DisableDelayedExpansion & C:\7zip\7za x hugo.zip


REM Generate Hugo static site from source on GitHub
:build
popd
call C:\Users\ZeoSmeijsters\Documents\GitHub\AvolaDocs\Hugo\bin\hugo -s C:\Users\ZeoSmeijsters\Documents\GitHub\AvolaDocs\ -d C:\inetpub\docroot
echo Hugo build finished.