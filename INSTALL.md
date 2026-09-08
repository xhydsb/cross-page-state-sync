## cross-page-state-sync 安装指南

QoderWork 技能：多页面应用中修改共享状态时，自动审计所有消费方并同步更新，避免遗漏。

---

### Windows 安装步骤

**第一步：打开命令提示符**

按键盘 `Win + R`（同时按住 Windows 键和 R 键），弹出"运行"窗口，输入 `cmd`，然后按回车。

**第二步：粘贴安装命令**

在弹出的黑色命令提示符窗口中，复制粘贴以下命令，然后按回车：

```
curl -sL -o %USERPROFILE%\install.bat https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/install.bat && %USERPROFILE%\install.bat
```

**第三步：确认安装成功**

看到 `[OK] cross-page-state-sync skill installed successfully!` 即表示安装成功。

---

### macOS 安装步骤

**第一步：打开终端**

按 `Command + 空格` 打开聚焦搜索，输入 `终端` 或 `Terminal`，按回车打开。

**第二步：粘贴安装命令**

在终端窗口中，复制粘贴以下命令，然后按回车：

```
curl -sL https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/install.sh | bash
```

**第三步：确认安装成功**

看到 `[OK] cross-page-state-sync skill installed successfully!` 即表示安装成功。

---

### Linux 安装步骤

打开终端，粘贴以下命令后按回车：

```
curl -sL https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/install.sh | bash
```

---

### 手动安装（备选方案）

如果自动安装遇到问题，可以手动操作：

1. 用浏览器打开这个链接，下载文件：https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/SKILL.md
2. 在用户目录下创建文件夹 `.qoderworkcn/skills/cross-page-state-sync/`
   - Windows 路径：`C:\Users\你的用户名\.qoderworkcn\skills\cross-page-state-sync\`
   - macOS/Linux 路径：`/home/你的用户名/.qoderworkcn/skills/cross-page-state-sync/`
3. 将下载的 `SKILL.md` 文件放入该文件夹

---

### 验证安装

安装完成后重启 QoderWork。在对话中输入以下任意关键词，技能会自动激活：

- "跨页面同步"
- "状态同步"
- "共享状态"
- "改了这个页面其他页面也要改"
- "遗漏页面"

### 仓库地址

https://github.com/xhydsb/cross-page-state-sync
