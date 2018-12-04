# XLS2TXT

This is a command line tool to convert XLS files to TXT files. It is based on the http://wizard.ae.krakow.pl/~jb/xls2txt/ code.

## Build

This project use the `CMAKE` and  to compile and generate the executable run the following command:

```shell
mkdir cmake-build-release
cd cmake-build-release
cmake -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ..
cd ..
cmake --build cmake-build-release --target xls2txt -- -j 4
```

## Use

To convert an XLS file to a TXT file use the following command:

```shell
xls2txt source.xls target.txt
```

There are also the following options:

```
usage: xls2txt [-C cs] [-n sheetnum|-A] [-f] file.xls [X:X]
       xls2txt [-C cs] -l file.xls
       
 X:X     cell range (eg. A1:C5, D2:E)
 -l	     list sheets
 -n num  select sheet
 -A	     all sheets (\f separated)
 -C cs	 output charset (utf8 asc iso1 iso2), utf8 is default
 -f	     don't try to format numbers
 -a	     ascii output (same as -C asc)
```

## Scripts

In the scripts folder there are two scripts that can aid in conversion.

* convertAll.sh
* pre-commit

The `convertAll` converts all XLS from one folder to TXT in another folder. Use this:

```shell
convertAll.sh <<SOURCE_FOLDER>> <<TARGET_FOLDER>>
```

Useful in comparing changes in the XLSs of a git repository there is the script `pre-commit`. Use it as a pre-commit hook.
