# Review follow-up: workflow indentation / 评审跟进：workflow 缩进

- Indent the `steps` sequence conventionally beneath its key so reviewers and YAML tooling do not need to rely on the valid but less familiar indentationless-sequence form.
- Keep all pinned action SHAs, exact Calcit 0.13.77 / Node 24.20.0 / Yarn 4.12.0 assertions, strict Caps gates, and runtime checks unchanged.
- Update PR #3 description separately to state that Calcit 0.13.77 canonical formatting changes `calcit.cirru`; the no-diff gate proves the committed result is stable afterward.

- 将 `steps` 序列按常规方式缩进到 key 下，避免评审者和 YAML 工具依赖合法但较少见的无缩进序列写法。
- 保持所有固定 action SHA、精确 Calcit 0.13.77 / Node 24.20.0 / Yarn 4.12.0 断言、严格 Caps 门禁和运行时检查不变。
- 另行更新 PR #3 描述，明确 Calcit 0.13.77 canonical format 会修改 `calcit.cirru`；no-diff 门禁证明提交后的结果保持稳定。
