# cross-page-state-sync

QoderWork Skill: 多页面/多组件应用中修改共享状态时的系统性同步规范。

## 适用场景

当修改被多个页面或组件引用的共享数据（如用户设置、全局配置、共享 store）时，自动审计所有消费方并同步更新，避免遗漏。

适用于：

- 单文件多页面 HTML 原型
- Vue / React 多组件应用
- 任何存在跨页面状态依赖的前端开发场景

## 核心工作流

1. **识别共享状态** — 搜索目标变量在整个项目中的所有引用
2. **审计影响范围** — 标注每处引用的使用方式（读取显示 / 条件判断 / 计算依赖 / 写入）
3. **执行同步修改** — 按映射表逐一更新所有消费方
4. **检查副作用** — 排查硬编码残留、状态竞态、缓存失效
5. **验证完整性** — 重新搜索确认无遗漏，检查页面导航流程

## 安装

### 自动安装（推荐）

**Windows:**
```bat
curl -sL -o install.bat https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/install.bat && install.bat
```

**macOS / Linux:**
```bash
curl -sL https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/install.sh | bash
```

### 手动安装

将 `SKILL.md` 放入 `~/.qoderworkcn/skills/cross-page-state-sync/` 目录即可。

## License

MPL 2.0
