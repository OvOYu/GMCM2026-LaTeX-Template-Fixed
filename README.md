# 第二十三届（2026）“华为杯”研究生数学建模 TeX 模板·修复版

这是根据本届官方 Word 格式文件制作的**非官方**空白 TeX 模板。

## 相比已有模板修复了什么

- [forsisi/huaweibei-template](https://github.com/forsisi/huaweibei-template) 使用 Fandol 中文字体、重排封面和摘要题头，并默认插入目录；本模板使用宋体／黑体和官方封面、摘要题头，正文紧接摘要。
- [dai123x/2026-](https://github.com/dai123x/2026-) 将封面拆分重组，也默认插入目录；本模板直接沿用官方封面资源，不自动生成目录。
- 官方 Word 导出的封面资源有未嵌入的 Times New Roman 字体引用和小页码“0”；本模板已嵌入字体，并在生成的封面中遮盖“0”。摘要页从页码 1 开始。

## 使用

1. 在 `settings.tex` 填标题、队伍信息和关键词，在 `sections/` 填摘要、正文和附录。
2. 安装 TeX Live 及宋体、黑体、Times New Roman，在 Windows PowerShell 运行 `pwsh -NoProfile -File ./build.ps1`。
3. 到新生成的 `build/<时间戳>/main.pdf` 查看结果；`空白预览.pdf` 仅供预览。

发现问题欢迎[提 Issue](https://github.com/OvOYu/GMCM2026-LaTeX-Template-Fixed/issues)；觉得有用，欢迎点亮 ⭐。
