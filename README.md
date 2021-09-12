
Minimal Calcit
----

> This repo demonstrates how to use Calcit without calcit-editor, just use a plain text editor.

### Usages

1. Install Calcit.

  * For Ubuntu 20.20 , download [`bundle_calcit`](http://bin.calcit-lang.org/linux/bundle_calcit) and [`cr`](http://bin.calcit-lang.org/linux/cr) and put into your `$PATH` directory.
  * For other platforms, install Rust, then use Rust to install from [Source Code](https://github.com/calcit-lang/calcit_runner.rs) via `cargo install --path .` .

2. Run this demo.

```
=>> bundle_calcit && cr -1
file created at ./compact.cirru
calcit_runner version: 0.4.16
Calling main function: 10
Calling lib
took 0.238ms: nil
```


```bash
$ tree
.
├── README.md
├── compact.cirru # generated from `bundle_calcit` command
├── package.cirru # metadata file for running `bundle_calcit`
└── src # source files to construct namespace and code
    ├── lib.cirru
    └── main.cirru
```

### Compile to JavaScript

Simple anwser is to replace `cr -1` with `cr -1 --emit-js` and compile into `js-out/*.js`, and bundle code with Webpack or [esbuild](https://github.com/evanw/esbuild) in Node.js mode. Also remember to install `@calcit/procs` for the runtime for Node.js .

### License

MIT
