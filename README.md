# INCaS 论文展示站

 INCaS 实验室使用 Hugo 搭建的精简论文展示站。它基于 Hugo Blox（Wowchemy）模板，但已裁剪成单页滚动的首页 + 每篇论文独立的详情页。

## 项目结构

```
papers-site/
├── assets/               # 自定义 CSS（papers.css）及静态资源
├── config/_default/      # Hugo 配置（菜单、参数、多语言、模块）
├── content/
│   ├── _index.md         # 单页首页（列出所有论文）
│   ├── authors/          # 作者信息（admin/_index.md 里是填写指引）
│   └── publications/     # 每个子目录对应一篇论文（如 paso 等）
├── external/             # 本地 vendor 的 Hugo Blox 模块
├── layouts/              # 覆盖的模板（首页、论文详情）
└── static/               # 静态文件（PDF、图片等）
```

关键文件：

- `layouts/index.html`：控制首页列表。
- `layouts/publications/single.html`：控制论文详情页布局。
- `assets/css/papers.css`：站点整体排版、配色、深浅色主题规则。
- `content/publications/<slug>/index.md`：每篇论文的元信息 + Markdown 正文。

## 本地开发

1. 安装依赖：
   ```bash
   npm install
   ```
2. 确保本机已安装 Go（或设置好 `GOROOT`）。
3. 启动开发服务器：
   ```bash
   hugo server --disableFastRender
   ```
4. 打开 `http://localhost:1313` 预览。

构建发布版本：
```bash
HUGO_GO_FLAGS='-mod=mod' hugo --gc --minify
```
生成结果会输出在 `public/`。

## 新增 / 维护论文

1. 在 `content/publications/` 下复制一个已有目录（例如 `cp -r paso new-paper`）。
2. 编辑 front matter：
   - `title`, `authors`, `date`, `publishDate`, `publication_short`, `summary`, `links`。
   - `links` 控制详情页面的小圆角按钮（`pdf`、`code`、`dataset`、`video` 等类型）。
3. 在 Markdown 中撰写正文（Abstract、Methodology、Results 等），图片可用 `![说明](/images/...)`。
4. 放置资源：
   - PDF、源代码等：`static/files/<slug>/`
   - 图片/多媒体：`static/images/<slug>/`
5. 再次运行 `hugo server` 验证展示效果。

## 常用操作

- **插入图片**：拷贝至 `static/images/<slug>/` 并使用 `/images/<slug>/xxx.png` 引用。
- **嵌入视频**：可使用 Hugo shortcode 或直接插入 `<iframe>`。
- **调整样式**：修改 `assets/css/papers.css` 并重新构建。
- **更新模块**：`external/` 中为 vendor 的 Hugo Blox 模块，若需升级再替换。

## 交接提示

- 仓库已完成 git 初始化，按需 `git add`、`git commit`。
- `.gitignore` 已忽略 `node_modules/`、`public/` 等文件夹，避免提交构建产物。
- 若恢复博客、讲座等功能，可在 `content/` 和 `config/_default/menus.yaml` 中重新启用相关条目。

祝维护顺利，展示愉快！
