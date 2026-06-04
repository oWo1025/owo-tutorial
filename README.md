---
title: "零基础小白必看！OpenCode保姆级安装使用教程（附详细步骤图解）"
date: 2026-06-04 10:00:00
author: "AI自动化运营"
categories: ["人工智能", "编程工具", "新手教程"]
tags: ["OpenCode", "AI编程", "安装教程", "小白教程", "终端工具", "代码助手"]
description: "手把手教你从零开始安装配置OpenCode，包含Windows/Mac全平台详细步骤，小白也能轻松上手的AI编程助手！"
cover: cover-default.png
---

# 零基础小白必看！OpenCode保姆级安装使用教程（附详细步骤图解）

## 前言：什么是OpenCode？

在开始安装之前，先简单了解一下OpenCode是什么——

**OpenCode** 是一个开源的AI编程助手，它可以：

- 直接在你的终端（命令行界面）里帮你写代码
- 理解你的项目结构，帮你修改、调试代码
- 支持多种AI模型：Claude、GPT、Gemini等
- 完全免费开源，不用担心隐私问题

简单说，它就像一个**住在你电脑里的编程专家**，你只要用自然语言告诉它想做什么，它就能帮你实现。

---

## 第一步：安装Node.js（必须）

OpenCode是基于Node.js开发的，所以我们需要先安装Node.js。

**什么是Node.js？**
- 你可以把它理解为一个"运行环境"
- 就像玩游戏需要安装DirectX一样，运行OpenCode需要Node.js

### Windows系统安装Node.js

**第一步：下载安装包**

1. 打开浏览器，访问Node.js官网：https://nodejs.org/
2. 你会看到两个下载按钮：
   - **LTS版本**（推荐）：稳定版本，适合大多数用户
   - **Current版本**：最新版本，可能有新功能但不太稳定
3. **点击"LTS版本"下面的下载按钮**

**第二步：安装Node.js**

1. 双击下载好的`.msi`安装文件
2. 一路点击"Next"（下一步）
3. 在"Tools for Native Modules"这一步，**不要勾选**任何选项（除非你知道自己在做什么）
4. 继续点击"Next"直到安装完成

**第三步：验证Node.js是否安装成功**

1. 按键盘上的 `Win + R` 键
2. 在弹出的对话框中输入 `cmd`，然后按回车
3. 在打开的黑色窗口中输入以下命令，然后按回车：
```
node --version
```
4. 如果看到类似 `v20.11.0` 的版本号，说明安装成功

### Mac系统安装Node.js

**第一步：下载安装包**

1. 打开浏览器，访问Node.js官网：https://nodejs.org/
2. 点击"LTS版本"下载macOS安装包

**第二步：安装Node.js**

1. 双击下载好的`.pkg`安装文件
2. 按照提示一路点击"继续"和"安装"
3. 输入你的电脑密码完成安装

**第三步：验证Node.js是否安装成功**

1. 打开"终端"（按 `Command + Space`，输入"Terminal"搜索）
2. 输入以下命令，然后按回车：
```
node --version
```
3. 同样看到版本号就说明成功了

---

## 第二步：一键安装OpenCode

Node.js安装好后，我们就可以安装OpenCode了。

### Windows系统安装OpenCode

**第一步：打开命令提示符**

1. 按键盘上的 `Win + R` 键
2. 在弹出的对话框中输入 `cmd`
3. 按回车键，会打开一个黑色的窗口（命令提示符）

**第二步：复制并粘贴安装命令**

在黑色窗口中，输入以下命令（注意：不要手动输入，直接复制粘贴）：

```
npm install -g opencode-ai
```

**如何复制粘贴？**
- 复制：选中上面的命令文本，按 `Ctrl + C`
- 粘贴：在命令提示符窗口中，按 `鼠标右键` 即可粘贴
- 然后按回车键执行命令

**第三步：等待安装完成**

你会看到类似这样的输出：

```
added 1 package in 15s
```

**第四步：验证安装是否成功**

输入以下命令，然后按回车：

```
opencode --version
```

如果看到版本号（例如 `1.1.50`），说明安装成功！

### Mac系统安装OpenCode

**第一步：打开终端**

1. 按 `Command + Space` 打开Spotlight搜索
2. 输入 "Terminal" 或 "终端"
3. 按回车打开

**第二步：执行安装命令**

输入以下命令，然后按回车：

```bash
curl -fsSL https://opencode.ai/install | bash
```

**第三步：验证安装是否成功**

```bash
opencode --version
```

如果看到版本号，说明安装成功！

---

## 第三步：启动OpenCode并体验免费模型

安装完成后，我们先用OpenCode自带的免费模型跑通流程！

### 启动OpenCode

**Windows用户**：
在命令提示符中输入以下命令，然后按回车：

```
opencode
```

**Mac用户**：
在终端中输入以下命令，然后按回车：

```bash
opencode
```

### 选择免费模型

启动后，OpenCode会引导你选择AI模型。你会看到一个界面，让你选择模型提供商。

**选择"Zen"或"Free"选项** - 这是OpenCode团队提供的免费模型集合，专门针对编程任务优化。

如果你没有看到免费选项，可以：
1. 输入 `/models` 命令
2. 在列表中找到免费模型（通常标记为 "Free" 或 "Zen"）
3. 选择它

### 开始对话

现在你可以在OpenCode界面中输入你的需求了！

试试这些简单的命令：

**创建一个Hello World程序：**
```
帮我创建一个Python文件，实现Hello World功能
```

**查看文件内容：**
```
当前目录下有哪些文件？
```

**修改代码：**
```
把这个Python文件改成输入用户名并打招呼
```

### 常用命令

| 命令 | 功能 |
|------|------|
| `/help` | 查看帮助 |
| `/models` | 切换模型 |
| `/clear` | 清空当前对话 |
| `/compact` | 压缩对话历史 |
| `Ctrl + C` | 退出当前操作 |
| `Ctrl + L` | 清屏 |

---

## 进阶：连接其他AI模型提供商

如果你想使用更强大的AI模型（如Claude、GPT等），可以按照以下步骤配置。

### 准备API密钥

你需要从AI服务商获取API密钥：

| 服务商 | 模型 | 获取方式 |
|--------|------|----------|
| **Anthropic** | Claude | https://console.anthropic.com/ |
| **OpenAI** | GPT | https://platform.openai.com/ |
| **DeepSeek** | DeepSeek | https://platform.deepseek.com/ |
| **阿里云** | 通义千问 | https://bailian.console.aliyun.com/ |

### 创建配置文件

**第一步：创建配置目录**

- **Windows**：
```cmd
mkdir %USERPROFILE%\.config\opencode
```

- **Mac**：
```bash
mkdir -p ~/.config/opencode
```

**第二步：创建配置文件**

使用记事本或其他文本编辑器创建 `opencode.json` 文件。

**配置文件位置**：
- **Windows**：`C:\Users\你的用户名\.config\opencode\opencode.json`
- **Mac**：`~/.config/opencode/opencode.json`

**配置示例（以阿里云百炼为例）**：

```json
{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "alibaba": {
      "npm": "@ai-sdk/anthropic",
      "options": {
        "apiKey": "你的API密钥",
        "baseURL": "https://dashscope.aliyuncs.com/compatible-mode/v1"
      },
      "models": {
        "qwen-max": {
          "name": "Qwen-Max",
          "attachment": true
        }
      }
    }
  },
  "model": "alibaba/qwen-max"
}
```

**注意**：把 `"你的API密钥"` 替换成你从阿里云百炼获取的真实API Key。

**第三步：重启OpenCode**

配置完成后，关闭当前OpenCode，重新启动即可使用新的模型。

---

## 常见问题及解决方案

### 问题一：Windows系统提示"禁止运行脚本"

**错误现象**：
```
无法加载文件 C:\Program Files\nodejs\npm.ps1，因为在此系统上禁止运行脚本。
```

**解决方案**：
1. 以管理员身份运行PowerShell
2. 输入以下命令：
```powershell
Set-ExecutionPolicy RemoteSigned
```
3. 按回车，然后输入 `Y` 确认
4. 重新执行安装命令

### 问题二：提示"权限不足"或"Permission denied"

**解决方案**：
- **Mac用户**：在命令前加 `sudo`
```bash
sudo npm install -g opencode-ai
```
- **Windows用户**：以管理员身份运行命令提示符

### 问题三：安装后输入opencode提示"命令未找到"

**解决方案**：
1. 关闭当前命令行窗口
2. 重新打开一个新的命令行窗口
3. 再次尝试输入 `opencode`

### 问题四：网络问题导致安装失败

**解决方案**：
使用国内镜像源安装：
```bash
npm install -g opencode-ai --registry=https://registry.npmmirror.com
```

---

## 使用技巧

1. **描述要清晰**：告诉OpenCode你要做什么，而不是怎么做
2. **分步骤提问**：复杂任务拆分成多个小步骤
3. **提供上下文**：告诉它你的项目用什么语言、什么框架
4. **及时确认**：在它修改代码前，先确认修改方案

---

## 总结

恭喜你！现在你已经成功安装并配置好了OpenCode。

**下一步建议**：

1. **先试试简单任务**：比如"创建一个Hello World程序"
2. **阅读官方文档**：https://opencode.ai/docs
3. **加入社区**：在GitHub上关注OpenCode项目，获取最新动态

记住，AI编程助手只是工具，真正的编程能力还需要你不断学习和实践。

---

*数据来源：OpenCode官方文档、菜鸟教程、CSDN技术社区、腾讯云开发者社区*