## Minimal Calcit

> This repo demonstrates how to use Calcit without calcit-editor, just use a plain text editor.

### Usages

1. Install Calcit.

- For Ubuntu 20.04 LTS , download [`bundle_calcit`](http://bin.calcit-lang.org/linux/bundle_calcit) and [`cr`](http://bin.calcit-lang.org/linux/cr) and put into your `$PATH` directory.
- For other platforms, install Rust, then use Rust to install from [Source Code](https://github.com/calcit-lang/calcit_runner.rs) via `cargo install --path .` .

2. Run this demo.

```
=>> bundle_calcit && cr -1
file created at ./compact.cirru
calcit version: 0.5.0
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

Simple answer is to replace `cr -1` with `cr -1 --emit-js` and compile into `js-out/*.js`, and bundle code with Webpack or [esbuild](https://github.com/evanw/esbuild) in Node.js mode. Also remember to install `@calcit/procs` for the runtime for Node.js .

### About

By default, [Calcit Editor](https://github.com/calcit-lang/calcit-workflow) is recommanded to write code. With Calcit Editor, `compact.cirru` is the snapshot file emitted, which will be consumed by `cr`. To code in separated files, the command `bundle_calcit` is required, as demonstrated in this repo.

### License

MIT
