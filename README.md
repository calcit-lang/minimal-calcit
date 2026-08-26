## Minimal Calcit

> This repo demonstrates a minimal Calcit project using the canonical
> `calcit.cirru` source snapshot.

### Usages

1. Install Calcit.

Get Rust installed first, then run:

```bash
cargo install calcit
```

Prebuilt binaries are also available from
[Calcit releases](https://github.com/calcit-lang/calcit/releases).

2. Run this demo.

```bash
calcit calcit.cirru
```

```bash
.
├── README.md
├── calcit.cirru # canonical source snapshot
└── deps.cirru # toolchain and module metadata
```

### Run compiled JavaScript

Since Calcit compile js into `js-out/*.mjs` files, you need to add `main.mjs` as entry first:

```js
import { main_$x_ } from "./js-out/app.main.mjs";
main_$x_();
```

then install the runtime dependency, run with Node.js with ES Modules support:

```bash
calcit calcit.cirru js
yarn add @calcit/procs
node main.mjs
```

### Editor

Use Calcit's structured `query`, `edit`, and `tree` commands to inspect and
change `calcit.cirru`. Run `calcit docs agents --full` before automated edits.
The legacy `compact.cirru` and `bundle_calcit` workflow has been retired.

[Calcit Editor](https://github.com/calcit-lang/editor) and
[calcit-workflow](https://github.com/calcit-lang/calcit-workflow) remain useful
for interactive and CI workflows.

### License

MIT
