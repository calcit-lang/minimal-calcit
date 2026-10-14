## Minimal Calcit

> This repo demonstrates a minimal Calcit project using the canonical
> `calcit.cirru` source snapshot.

状态：native/Node 入门模板，不作为独立业务模块发版。工具链使用正式 Calcit 0.29.3，
两个示例函数均为 `Fn() -> Unit`；源码和入口配置以 `calcit.cirru` 为准，
依赖版本以 `deps.cirru` 为准。

### Usages

1. Install Calcit.

Install the exact Calcit 0.29.3 prebuilt binary from the
[Calcit 0.29.3 release](https://github.com/calcit-lang/calcit/releases/tag/0.29.3),
or install the matching crate with `cargo install calcit --version 0.29.3`.
The JavaScript runtime is pinned to the same version in `package.json`.

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

CI checks the canonical snapshot, both namespaces and the strict workflow, runs the native demo,
then compiles and runs it with Node.js. This is a native/Node example, not a
browser frontend: there are no static assets to upload to COS or CDN paths to
configure.

### Editor

Use Calcit's structured `query`, `edit`, and `tree` commands to inspect and
change `calcit.cirru`. Run `calcit docs agents --contract` before automated
mutations; use `calcit docs agents --full` for first orientation or when the
contract digest changes. The commands are complementary.
The legacy `compact.cirru` and `bundle_calcit` workflow has been retired.

[Calcit Editor](https://github.com/calcit-lang/editor) and
[calcit-workflow](https://github.com/calcit-lang/calcit-workflow) remain useful
for interactive and CI workflows.

### License

MIT
