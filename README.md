# 第二十三届（2026）“华为杯”研究生数学建模 TeX 模板·修复版

本仓库提供**无题目、无队伍身份、无实验结果**的空白 TeX 工程。它根据第二十三届官方 Word 格式文件制作，并非主办方发布的 LaTeX 模板。封面和统一摘要题头沿用当届官方资源；修复了这两份导入 PDF 的 Times New Roman 字体未嵌入问题，并在排版时遮盖封面原有的小页码“0”。

使用中发现格式或编译问题，欢迎[提交 Issue](https://github.com/OvOYu/GMCM2026-LaTeX-Template-Fixed/issues)；如果模板帮到了你，也欢迎点一个 Star。

## 填写与编译

1. 仅在 `settings.tex` 填论文题目、学校、队号、三位队员和关键词。身份只会叠在官方空白封面的第 1 页；不要把身份写进正文、图片或程序附件。
2. 在 `sections/abstract.tex` 写真实摘要，在 `sections/body.tex` 按所选题目增删小问并填写正文。注释是填写提醒，不会进入 PDF。
3. 需要文献时填写 `references.bib` 并把 `settings.tex` 中的 `\WithReferencesfalse` 改为 `\WithReferencestrue`；需要附录时启用 `\WithAppendixtrue` 并填写 `sections/appendix.tex`。
4. Windows 安装 TeX Live、宋体、黑体和 Times New Roman 后执行 `pwsh -NoProfile -File ./build.ps1`。使用 XeLaTeX＋latexmk，每次输出到新的 `build/<时间戳>/main.pdf`；脚本不清理旧文件。

首页保留官方四标识封面，第二页为统一摘要页，从页脚中部数字 1 起连续编号，无页眉、无默认目录。题目三号黑体，一级标题四号黑体居中，正文其他汉字小四宋体、单倍行距。封面原 Word 的小页码“0”由 TeX 的白底覆盖，官方空白封面 PDF 本身留存于 `assets/`。

**空白预览不能提交。** 正式论文需填写内容并按 2026 官方公告及赛题检查摘要、匿名、引用、AI 标注、程序附件和“题号＋队号.pdf”文件名；MD5 提交后不要再次导出或修改 PDF。TeX 模板只适配 2026 年，其他年份须重新核对当届官方文件。
