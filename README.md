# minifyR

minify files and folders

This is a very very simple package. I am using **_GOLANG Minify Package_** Binary for windows for this package and thus No one needs to install anything for the package to work. If you want to read more about the **_MINIFY_** please visit at **https://github.com/tdewolff/minify/tree/master/cmd/minify**

This package has only 2 functions currently one for recursively minifying all the files inside a folder into another folder and secondly for minifying and bundling all the files into a single bundled file.

depending on the use case you can pick your poison.

This package might have a few bugs, Feel free to report them. This package is shipped with a windows binary but for other operating systems you can download the binary and define the path in an environment variable **_minify_binary_path_**.

You can go to `github.com/tdewolff/minify/tree/master/cmd/minify` then you can define the path of the binary in an environment variable
called `minify_binary_path`. This will help everybody set up
the binary even if they are not using windows. With this step everyone should be able to minify all of their css, js, html files without needing NODE server.
