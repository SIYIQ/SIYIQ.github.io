# Academic Homepage

这是一个可以直接部署到 GitHub Pages 的纯静态个人主页。页面入口是 `index.html`，不需要 Node.js、Jekyll、数据库或云服务器。

## 1. 需要修改的内容

主要编辑 `index.html`，按下面的关键词搜索并替换：

| 内容 | 在 `index.html` 中搜索 | 同时需要替换的文件/链接 |
| --- | --- | --- |
| 浏览器标题 | `Junhao Cheng's Homepage` | 无 |
| 姓名与中文名 | `Junhao Cheng`、`程钧豪` | 无 |
| 头像 | `images/junhaocheng.png` | 用新头像覆盖该文件，或修改图片路径 |
| 职位、学校、所在地 | `MPhil in Computer Science`、`City University`、`Shenzhen` | 可替换学校 Logo |
| 邮箱 | `howe4884@outlook.com` | 同时修改显示文字和 `mailto:` 地址 |
| 学术主页 | `scholar.google.com/citations` | 替换为自己的 Google Scholar 链接 |
| GitHub | `github.com/donahowe` | 替换为自己的 GitHub 主页 |
| 个人简介 | `About me` 区域 | 修改两段简介和求职提示 |
| 动态 | `News` 区域 | 按现有 `news-item` 结构增删 |
| 教育/实习 | `Education`、`Internships` 区域 | 图片放在 `images/Schools/` 或 `images/` |
| 论文 | `Selected Publications` 区域 | 缩略图放在 `images/publications/` |
| 微信二维码 | `images/wechat-qr.png` | 覆盖图片；不需要微信入口时删除对应按钮和弹窗 |
| 页脚年份与姓名 | `&copy; 2025 Junhao Cheng` | 改为当前年份和姓名 |

建议保留图片文件名不变并直接覆盖，这样不必同步修改 HTML。若改了文件名，请注意路径大小写必须完全一致；GitHub Pages 运行在 Linux 环境，大小写不同会导致线上图片无法显示。

## 2. 本地预览

需要 Python 3（macOS 通常已安装或可通过开发环境安装）。在仓库根目录运行：

```bash
./run_server.sh
```

浏览器打开 <http://127.0.0.1:8000>。停止服务时在终端按 `Control+C`。

如需使用其他端口，把端口号作为参数传入：

```bash
./run_server.sh 8080
```

然后访问 <http://127.0.0.1:8080>。不要直接双击打开 `index.html`；通过本地服务器预览更接近 GitHub Pages 的实际行为。

## 3. 部署到 GitHub Pages

### 方式 A：作为账号主页（推荐）

1. 在目标 GitHub 账号下创建公开仓库，仓库名必须是 `<用户名>.github.io`。
2. 把本仓库的远程地址改为新仓库：

   ```bash
   git remote set-url origin https://github.com/<用户名>/<用户名>.github.io.git
   ```

3. 提交并推送：

   ```bash
   git add index.html images README.md run_server.sh .nojekyll
   git commit -m "Customize personal homepage"
   git push -u origin main
   ```

4. 在 GitHub 仓库进入 **Settings → Pages**，在 **Build and deployment** 下选择 **Deploy from a branch**，分支选择 `main`，目录选择 `/(root)`，然后保存。
5. 发布完成后访问 `https://<用户名>.github.io/`。

### 方式 B：作为普通项目站点

仓库名可以自定义，例如 `homepage`。Pages 设置相同，发布地址为：

```text
https://<用户名>.github.io/homepage/
```

本项目使用相对资源路径，两种部署方式都兼容。

> 注意：执行 `git remote set-url` 前确认新仓库属于你的账号。它只修改本地推送目标，不会复制或删除原仓库。

## 4. 发布前检查

- 页面中的姓名、邮箱、个人链接和二维码均已替换。
- 没有提交不希望公开的简历、二维码或其他隐私文件。
- 本地分别用桌面和手机尺寸检查布局。
- 所有论文、代码和社交链接均能打开。
- GitHub Pages 设置的分支为 `main`、目录为 `/(root)`。

## Acknowledgements

Based on the original homepage by [Junhao Cheng](https://donahowe.github.io/) and the open-source work by [Yi Ren](https://rayeren.github.io/). See [LICENSE](LICENSE) for licensing information.
