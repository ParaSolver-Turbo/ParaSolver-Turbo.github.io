---
title: '在这里填写论文标题（例如：Acc3D: Accelerating Single Image to 3D Diffusion Models）'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin # 使用 authors/ 目录下的文件名，或直接写作者姓名
  - '请在此添加其他作者'

# Author notes (optional)
author_notes:
  - '可选：注明贡献关系，例如 Equal Contribution'

date: '2025-01-01T00:00:00Z' # 论文正式发表日期

# Schedule page publish date (NOT publication's date).
publishDate: '2025-01-01T00:00:00Z' # 用于控制站点发布时间

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ['paper-conference'] # 根据 CSL 类型填写

# Publication name and optional abbreviated publication name.
publication: In *填写完整会议或期刊名称*
publication_short: In *缩写（可选）*

abstract: |
  **在这里粘贴论文摘要**。建议保持 150–250 字，概述问题背景、方法与结果。示例：

  “我们提出 Acc3D，通过边缘一致性约束与蒸馏策略，将单图像转 3D 的生成时间压缩到 1.5 秒，并保持高质量细节。”

# Summary. An optional shortened abstract.
summary: 用一句话介绍论文亮点，出现在列表页的 Summary 区域。

tags:
  - 在这里添加主题标签
  - 例如：Diffusion Models

# Display this page in the Featured widget?
featured: true # 设为 true 可让论文出现在列表上方的“精选”区域

# Standard identifiers for auto-linking
hugoblox:
  ids:
    doi: 10.0000/placeholder # 可删除或替换为真实 DOI

# Custom links
links:
  - type: pdf
    url: https://example.com/your-paper.pdf # 上传到 static/files/ 后可使用 /files/xxx.pdf
  - type: code
    url: https://github.com/your-repo
  - type: dataset
    url: https://dataset.example.com
  - type: video
    url: https://video.example.com

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: '可选：为论文添加配图说明。将 featured.jpg 放入同目录。'
  focal_point: ''
  preview_only: false

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: "" # 若有 Markdown 幻灯片可填写文件名
---

> **写作指引**  
> 使用 Markdown 在此处撰写论文的详细介绍。建议包含以下部分：
>
> - **Motivation**：问题背景、痛点和意义  
> - **Methodology**：方法结构图、核心模块描述、关键公式或伪代码  
> - **Results**：表格/图片对比、速度与质量指标、消融实验  
> - **Resources**：视频、交互式 Demo、Mesh/Point Cloud 等补充材料

### 模板示例

```
## Abstract
粘贴官方摘要，或写一个面向公众的精简版本。

## Methodology
介绍主要流程，必要时插入图片：  
![示意图](/images/placeholder.png)

## Results
- 与基线模型对比
- 运行耗时/成本
- 用户案例或可视化
```
