## Minimal Calcit

> This repo demonstrates a minimal Calcit project using the canonical
> `calcit.cirru` source snapshot.

使用者影响：CLI 与 `@calcit/procs` 从正式 0.32.0 同步配对正式 **0.32.1**。
复制模板后须同步工具链与依赖，并重新生成 `js-out/`，不能用新 runtime 运行旧生成物。
官方 `edit format` 确认 Snapshot 已符合当前类型标注语法、无需改写；不改示例逻辑、Node入口或公开类型，不新增检查脚本/测试框架。

状态：native/Node 入门模板，不作为独立业务模块发版。工具链使用正式 Calcit 0.32.1，
两个示例函数均为 `Fn() -> Unit`；源码和入口配置以 `calcit.cirru` 为准，
依赖版本以 `deps.cirru` 为准。入口不在依赖清单重复声明。

本地验收：配对 runtime 按统一 60 分钟包龄门禁正常安装并生成 lock；原生运行、全定义检查、
完整 strict、JS 生成与 Node 原流程通过。Linux CI 以精确提交结果为准。

### Usages

1. Install Calcit.

Install the exact Calcit 0.32.1 prebuilt binary for a supported platform from the
[Calcit 0.32.1 release](https://github.com/calcit-lang/calcit/releases/tag/0.32.1).
The JavaScript runtime is pinned to the same version in `package.json`.

以该release实际提供的宿主平台为准；Linux CI通过不等于所有平台均已提供预编译包或完成验收。

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

CI checks the canonical snapshot, all definitions and the strict workflow, runs the native demo,
then compiles and runs it with Node.js. This is a native/Node example, not a
browser frontend: there are no static assets to upload to COS or CDN paths to
configure.

本轮保留 Snapshot、两个 `Fn() -> Unit` 函数、Node入口和原 native/Node 执行，只同步正式
CLI/runtime 与正常生成的 lock。原源码使用的求和、range 和库函数无需改写；以正式 0.32.1
的格式、全定义、完整 strict、native 和 Node 原流程验收，不关闭默认 proof audit。
示例应输出求和 20、range 0 到 99 并调用库函数。这里只是入门示例，不冒称已有独立单元测试套件。
模板元数据 0.1.3 保持不变，不另发 tag 或业务模块版本。

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
