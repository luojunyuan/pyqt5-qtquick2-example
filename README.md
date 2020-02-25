# Example

resources.qrc 中加入image qml等文件



## 用 PyInstaller 打包发布

手动打包源代码：

> `.qrc` 文件必须和加载qrc文件的python文件在同一目录。

``` sh
pyside2-rcc resources.qrc -o reader/resources.py
pyinstaller main.py -y --windowed --additional-hooks-dir pyi_hooks/
```
