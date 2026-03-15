<div align="center">

# 📄 智历 v2.0

### AI 智能简历诊断与优化平台

**六维度深度分析 · 隐私泄露检测 · ATS关键词匹配 · STAR法则检测 · AI对话 · 一键优化**

![version](https://img.shields.io/badge/version-2.0-blue)
![python](https://img.shields.io/badge/python-3.8+-green)
![license](https://img.shields.io/badge/license-MIT-orange)
![platform](https://img.shields.io/badge/platform-Web%20%7C%20Windows%20%7C%20Mobile-lightgrey)

</div>

---

## 📌 项目简介

**智历**是一款面向大学生和求职者的 AI 简历诊断与优化工具。用户上传或粘贴简历后，系统调用大语言模型从**六个维度**进行全方位深度分析，自动生成可视化诊断报告，提供具体修改建议和优化示例，并支持**一键生成优化简历**。

本项目将 AI 技术与**网络安全视角**相结合，在提供简历优化建议的同时，帮助用户识别和防范简历中的**隐私泄露风险**——这是市面上其他简历工具所不具备的。

> 西安电子科技大学 · 网络与信息安全学院
>
> "数字西电"大模型应用创新赛 · 精准就业类

---

## ✨ 功能总览

### 🔍 简历诊断（核心）

| 维度 | 说明 |
|------|------|
| 📋 内容完整性 | 教育背景、实习/工作经历、项目经历、技能、自我评价等模块是否齐全 |
| ✍️ 表达专业度 | 是否使用STAR法则、是否量化成果、用词是否专业规范 |
| 📐 排版规范性 | 格式是否统一、层次是否清晰、信息密度是否合理 |
| 🔒 隐私安全性 | 身份证号、家庭住址、银行卡号等敏感信息自动检测（网安特色） |
| 🎯 ATS兼容性 | 关键词覆盖率分析，预估自动筛选系统通过率 |
| 💼 行业适配度 | 互联网/金融/咨询/公务员等行业的定制化建议 |

### 📊 诊断报告

- **雷达图** — 六维度评分可视化
- **问题诊断** — 严重/中等/轻微三级分类，附修改建议
- **隐私风险** — 自动识别敏感信息，给出风险评级
- **ATS分析** — 匹配与缺失关键词对比，通过率预估
- **STAR检测** — 逐段检查经历描述是否符合STAR法则
- **优化对比** — 关键段落优化前后对比

### ✨ 一键优化

基于诊断结果，AI 自动重写整份简历：STAR法则重写经历、移除隐私信息、补充ATS关键词、重写自我评价。生成后可复制或下载。

### 💬 AI 对话助手

针对诊断结果追问，获取详细修改建议。支持上下文对话，会结合你的诊断结果给出精准建议。

### 📑 简历模板库

内置互联网/技术、金融、通用三大类简历模板，包含完整的各模块示例和STAR法则写法参考，支持一键复制。

### 📁 其他功能

- 支持 **PDF / Word(.docx) / TXT** 文件上传解析
- **历史记录** — 自动保存诊断结果，追踪改进趋势
- **行业关键词库** — 四大行业核心关键词
- **报告导出** — 一键导出 TXT 格式诊断报告
- **工作台仪表盘** — 使用数据概览
- **手机端适配** — 响应式设计，手机浏览器可用
- **桌面安装程序** — Windows 安装包，桌面快捷方式 + 开始菜单

---

## 🛠️ 技术栈

| 模块 | 技术 |
|------|------|
| 前端界面 | HTML5 + CSS3 + JavaScript（纯原生，零框架依赖） |
| 文件解析 | PDF.js + mammoth.js |
| 数据可视化 | Canvas 雷达图 + CSS 动画 |
| AI 引擎 | DeepSeek / 通义千问 / OpenAI（兼容 OpenAI 接口格式） |
| 核心设计 | Prompt Engineering — 结构化 JSON 输出 |
| 桌面端 | Python + pywebview |
| 安装包 | PyInstaller + Inno Setup |

---

## 🚀 快速开始

### 方式一：在线使用

访问 `https://你的用户名.github.io/ZhiLi/` 即可使用（需开启 GitHub Pages）。

### 方式二：本地使用

下载 `index.html`，双击用浏览器打开，配置 API Key 或选择演示模式。

### 方式三：桌面程序

```bash
git clone https://github.com/你的用户名/ZhiLi.git
cd ZhiLi
pip install pywebview
python app.py
```

### 方式四：安装包

下载 Releases 中的 `ZhiLi_v2_Setup.exe`，双击安装即可。

---

## 📖 使用流程

```
输入简历 ──→ 选择配置 ──→ AI分析 ──→ 查看报告 ──→ 一键优化
 粘贴/上传     行业/岗位    六维度评分   问题+建议    AI重写简历
PDF/Word/TXT   勾选选项     雷达图      隐私/ATS     复制/下载
```

---

## 🔑 API 配置

支持任何兼容 OpenAI 接口格式的大模型：

| 服务 | API Base URL | 说明 |
|------|-------------|------|
| **DeepSeek**（推荐） | `https://api.deepseek.com` | 注册送免费额度 |
| 通义千问 | `https://dashscope.aliyuncs.com/compatible-mode` | 阿里云 |
| OpenAI | `https://api.openai.com` | 需境外支付 |

无 API Key 可使用**演示模式**体验完整流程。

---

## 🔒 隐私与安全

- API Key 仅存储在浏览器本地 localStorage，不上传任何服务器
- 简历内容直接发送至用户配置的 AI API，项目本身不做数据收集
- 隐私检测覆盖：身份证号、详细家庭住址、银行卡号等
- 所有数据处理均在用户本地完成

---

## 📁 项目结构

```
ZhiLi/
├── index.html               # 前端（全部功能，单文件）
├── app.py                   # 桌面端启动脚本
├── start.bat                # 一键启动
├── make_icon.py             # 图标生成
├── setup.iss                # Inno Setup 安装包配置
├── step1_build_exe.bat      # 打包 exe
├── step2_make_installer.bat # 生成安装包
└── README.md
```

---

## 💡 创新点

1. **六维度评分体系** — 将隐私安全和ATS兼容性纳入简历评分，突破传统简历诊断的单一维度
2. **网安特色隐私检测** — 融合网络安全视角，自动识别简历中的敏感信息泄露风险
3. **STAR法则自动化检测** — 逐段分析经历描述，量化评估并给出改写建议
4. **一键简历重写** — 基于诊断结果，AI全自动重写优化整份简历
5. **Prompt Engineering** — 设计结构化JSON输出方案，实现稳定可靠的六维度分析
6. **全平台覆盖** — Web + 桌面 + 手机，一套代码多端运行

---

## 🔧 构建安装包

```
1. 安装 Inno Setup 6 → https://jrsoftware.org/isdl.php
2. 双击 step1_build_exe.bat（打包exe，1-3分钟）
3. 双击 step2_make_installer.bat（生成安装包）
4. 在 installer_output/ 获取 ZhiLi_v2_Setup.exe
```

---

## 📜 License

MIT License

---

<div align="center">

**西安电子科技大学 · 网络与信息安全学院**

</div>
