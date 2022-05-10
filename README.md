## Minimal Calcit

> This repo demonstrates how to use Calcit without calcit-editor, just use a plain text editor.

### Usages

1. Install Calcit.

Get Rust installed first, then run:

```bash
cargo install calcit
```

For Ubuntu , download [`bundle_calcit`](http://bin.calcit-lang.org/linux/bundle_calcit) and [`cr`](http://bin.calcit-lang.org/linux/cr) and put into your `$PATH` directory.

2. Run this demo.

```bash
$ bundle_calcit -1 && cr -1
file created at ./compact.cirru
Calling main function: 10
Calling lib
took 0.238ms: nil
```

```
.
├── README.md
├── compact.cirru # GENERATED from `bundle_calcit`
├── package.cirru # metadata file for running `bundle_calcit`
└── src # source files to construct namespace and code
    ├── lib.cirru
    └── main.cirru
```

### Run compiled JavaScript

Since Calcit compile js into `js-out/*.mjs` files, you need to add `main.mjs` as entry first:

```js
import { main_$x_ } from "./js-out/app.main.mjs";
main_$x_();
```

then install the runtime dependency, run with Node.js with ES Modules support:

```bash
cr -1 --emit-js
yarn add @calcit/procs
node main.mjs
```

### Editor

To maintain code in text files, `bundle_calcit` is required as shown in this repo.

Personally, I recommend [Calcit Editor](https://github.com/calcit-lang/editor). With Calcit Editor, `compact.cirru` is the snapshot file emitted as the bundled code. Try workflow from https://github.com/calcit-lang/calcit-workflow .

### License

MIT
