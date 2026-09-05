## Minimal Calcit

> This repo demonstrates a minimal Calcit project using the canonical
> `calcit.cirru` source snapshot.

### Usages

1. Install Calcit.

Install the exact Calcit 0.13.77 prebuilt binary from the
[Calcit 0.13.77 release](https://github.com/calcit-lang/calcit/releases/tag/0.13.77).
The published 0.13.77 crate does not install on stable Rust; use the release
binary for this template until that packaging issue is fixed in a later release.

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
yarn install --immutable
calcit calcit.cirru js
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
