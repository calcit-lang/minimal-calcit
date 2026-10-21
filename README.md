## Minimal Calcit

> This repo demonstrates a minimal Calcit project using the canonical
> `calcit.cirru` source snapshot.

状态：native/Node 入门模板，不作为独立业务模块发版。工具链使用 Calcit 0.30.1-alpha.5，
两个示例函数均为 `Fn() -> Unit`；源码和入口配置以 `calcit.cirru` 为准，
依赖版本以 `deps.cirru` 为准。入口不在依赖清单重复声明。

### Usages

1. Install Calcit.

Install the exact Calcit 0.30.1-alpha.5 prebuilt binary from the
[Calcit 0.30.1-alpha.5 release](https://github.com/calcit-lang/calcit/releases/tag/0.30.1-alpha.5).
The JavaScript runtime is pinned to the same version in `package.json`.

截至 2026-10-21（Asia/Shanghai；对应 UTC 日期 2026-10-20），正式 0.30.1 release 已存在但尚无 macOS 资产；本轮使用已完成
native/Node 对照验收的 alpha.5，不宣称完成正式 0.30.1 跨平台验收。

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

本轮保留 Snapshot、两个 `Fn() -> Unit` 函数、Node 入口及原 CI；仅同步 CLI/runtime
与最小 lockfile。0.30.0 和 alpha.5 均通过全定义检查及完整 strict，未发现需要改写的
旧调用或类型债务。原生和新鲜生成的 Node 输出在两版工具链下完全一致：求和为 20、
range 为 0 到 99，最后调用库函数。这里只是入门示例，不冒称已有独立单元测试套件。

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
