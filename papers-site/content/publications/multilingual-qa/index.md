---
title: "示例：在此输入期刊论文标题"
authors:
- admin
- "更多作者可继续添加"
author_notes:
- "可选：在此说明贡献或通讯作者"
date: "2024-01-01T00:00:00Z"

# Schedule page publish date (NOT publication's date).
publishDate: "2024-01-01T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*填写期刊或会议全称*"
publication_short: "*可选缩写*"

abstract: |
  用正式摘要替换此段文字，概述研究背景、方法与主要贡献。

# Summary. An optional shortened abstract.
summary: 列表页摘要：一句话说明论文的功能/亮点。

tags:
- 在此列出主题标签
- 例如：Retrieval, NLP
featured: false

hugoblox:
  ids:
    arxiv: 0000.00000 # 若无可删除

links:
  - type: pdf
    url: https://example.com/paper.pdf
  - type: code
    url: https://github.com/your-project
  - type: dataset
    url: https://dataset.example.com
  - type: slides
    url: https://slides.example.com

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: '可替换为图表说明，若无需可删除 image 段落。'
  focal_point: ""
  preview_only: false

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

> **填写建议**  
> - 用 Markdown 编写“Abstract / Methodology / Results / Resources”等小节  
> - 可以嵌入图片、表格或代码块  
> - 若需要隐藏某段内容，可使用 `<!-- -->` 注释

### 示例结构

```
## Abstract
简要总结论文。

## Methodology
详述模型架构、训练流程或算法公式。

## Results
- 指标对比
- 消融实验
- 可视化分析
```
