#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import QMainWindow, QAction, QMenu, QApplication, QTextEdit, qApp,QMessageBox,QWidget, QPushButton
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QFileDialog
from PyQt5.QtCore import pyqtSlot


class Window(QMainWindow):

    def __init__(self):
        super().__init__()

        self.MainWindow()

    def MainWindow(self):


        menubar = self.menuBar()
        fileMenu = menubar.addMenu('File')

        open = QAction(QIcon('open.png'),"Open", self)
        fileMenu.addAction(open)
        open.triggered.connect(self.openFile)

        save = QAction(QIcon('save.png'),"Save", self)
        save.setShortcut("Ctrl+S")
        fileMenu.addAction(save)
        save.triggered.connect(self.saveFile)

        copy = QAction(QIcon('copy.png'),"Copy", self)
        copy.setShortcut("Ctrl+C")
        fileMenu.addAction(copy)
        # copy.triggered.connect(self.selectQuestion)

        paste = QAction(QIcon('paste.png'),"Pasta", self)
        paste.setShortcut("Ctrl+v")
        fileMenu.addAction(paste)

        self.statusBar()
        quit = QAction(QIcon('quit.png'), "Quit", self)
        fileMenu.addAction(quit)
        quit.setShortcut('Ctrl+Q')
        quit.setStatusTip('Exit application')
        quit.triggered.connect(self.selectQuestion)
        # quit.triggered.connect(qApp.quit)

        fileMenu.triggered[QAction].connect(self.processtrigger)

        self.testEdit=QTextEdit()
        self.setCentralWidget(self.testEdit)
        self.setGeometry(300, 300, 300, 200)
        self.setWindowTitle('MainWindow')
        self.show()

    def processtrigger(self, q):
         print(q.text() + " is triggered")

    def openFile(self):

        fileName1, filetype = QFileDialog.getOpenFileName(self,
                                                          "ouvrir le fichier",
                                                          "./",
                                                          "All Files (*);;Text Files (*.txt)")
        # 设置文件扩展名过滤,注意用双分号间隔
        print(fileName1, filetype)
        if fileName1:
            f = open(fileName1, 'r')

            with f:
                data = f.read()
                self.testEdit.setText(data)


    def saveFile(self):
        fileName2, ok2 = QFileDialog.getSaveFileName(self,
                                                     "conserve le fichier",
                                                     "./",
                                                     "All Files (*);;Text Files (*.txt)")
        if fileName2:
            f = open(fileName2, 'w')
            with f:
                data=self.testEdit.toPlainText()
                f.write(data)

    def selectQuestion(self):
        button = QMessageBox.question(self, "quit", "Vous voulez finir l'utilisation？",
                                      QMessageBox.Ok | QMessageBox.Cancel, QMessageBox.Ok)

        if button == QMessageBox.Ok:
            sys.exit(app.exec_())
        elif button == QMessageBox.Cancel:
            qApp.quit
        else:
            return

    def closeEvent(self, event):
        reply = QMessageBox.question(self, 'Message', 'You sure to quit?',
                                     QMessageBox.Yes | QMessageBox.No, QMessageBox.No)

        if reply == QMessageBox.Yes:
            event.accept()
        else:
            event.ignore()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = Window()
    ex.show()
    sys.exit(app.exec_())