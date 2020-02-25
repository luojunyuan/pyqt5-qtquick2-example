import os
import sys

from PySide2.QtCore import QUrl, QObject
from PySide2.QtWidgets import QApplication
from PySide2.QtQml import QQmlApplicationEngine
from reader import resources  # load resources built by pyside2-rcc


os.environ['QT_QUICK_CONTROLS_STYLE'] = "Universal"

# Create an instance of the application
# QApplication MUST be declared in global scope to avoid segmentation fault
app = QApplication(sys.argv)

# Create QML engine
engine = QQmlApplicationEngine()

# Load the qml file into the engine
engine.load(QUrl('qrc:/reader/qml/main.qml'))

# Qml file error handling
if not engine.rootObjects():
    sys.exit(-1)

# Send QT_QUICK_CONTROLS_STYLE to main qml (only for demonstration)
# For more details and other methods to communicate between Qml and Python:
#   http://doc.qt.io/archives/qt-4.8/qtbinding.html
# qtquick2Themes = engine.rootObjects()[0].findChild(
#     QObject,
#     'qtquick2Themes'
# )
# qtquick2Themes.setProperty('text', os.environ['QT_QUICK_CONTROLS_STYLE'])

sys.exit(app.exec_())
