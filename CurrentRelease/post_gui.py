import os
import re
import sys
import shutil
import subprocess

import tempfile
import shutil

kmod = False
user = False
host = False
verbose = False
    
    
VECTORCAST_DIR = os.environ['VECTORCAST_DIR']

CWD =  os.getcwd()

#Imports as usual
import os, sys, shutil, re, platform, time
from PySide import QtCore
from PySide import QtGui
# from PySide import QtWebKit
from vector.lib.core import VC_PySide_API

class VC_POS_QT(QtGui.QWidget):

    def __init__(self):
        super(VC_POS_QT, self).__init__()

        self.widgets = {}
        self.connected = False
        self.make_widgets()
        self.create_layout()
        self.connect = False
        self.results_open = False

    def proper(self, s):
        '''Converts underscore separated lower to space separated title'''
        return s.replace('_', ' ').title()
        
    def GetBuildDir(self):
        from PySide import QtGui
        dialog = QtGui.QFileDialog()
        dialog.setFileMode(QtGui.QFileDialog.Directory)
        dialog.setOption(QtGui.QFileDialog.ShowDirsOnly)
        self.widgets['build_dir'].setText(dialog.getExistingDirectory())

    def get(self, field):
        '''Return the text field of the provided widget'''

        widget = self.widgets[field]
        if isinstance(widget, QtGui.QComboBox):
            return widget.currentText()    
        elif isinstance(widget, QtGui.QLineEdit):
            return widget.text()    
        elif isinstance(widget, QtGui.QTextEdit):
            return str(widget.toPlainText())
        elif isinstance(widget, QtGui.QCheckBox):
            return widget.isChecked()
        else:
            return None

    def create_layout(self):

        grid = QtGui.QGridLayout()
        grid.setSpacing(12)

        for idx, item in enumerate( self.jWidgets, start=1):
            button = item[1] + '_push'
            grid.addWidget(self.widgets[item[1]+'_label'], idx, 0)
            if button in self.widgets:
                layout = QtGui.QHBoxLayout()
                layout.addWidget(self.widgets[item[1]])
                layout.addWidget(self.widgets[button])
                grid.addLayout(layout, idx, 1)
            else:
                grid.addWidget(self.widgets[item[1]], idx, 1)
                
                
        
        layout = QtGui.QHBoxLayout()
        for button in self.buttons:
            layout.addWidget(self.widgets[button[0]+'_push'])
        grid.addLayout(layout, idx+2, 1)

        self.statusBar = QtGui.QStatusBar()
        grid.addWidget(self.statusBar,idx+3,1)
        self.statusBar.showMessage("Check Total: ")

        self.setLayout(grid) 
        self.setMinimumHeight (200)
        self.setMinimumWidth  (500)
        self.setWindowTitle('VectorCAST Point of Sales Terminal')
        
        self.show()

    def make_widgets(self):

        self.dispatch_widget = { "combo" : QtGui.QComboBox,
                                 "lineedit" : QtGui.QLineEdit,
                                 "label" : QtGui.QLabel}
                                            
        self.jWidgets =  [ ['lineedit','Table', 'Table'], 
                           ['lineedit','Seat', 'Seat'],         
                           ['combo','Entree Choice', 'Entree Choice'],
                           ]

        self.buttons = [ ['Place Order','Place Order'],
                         ['Get Check Total','Get Check Total'],
                         ['Pay Bill','Pay Bill'],
                         ['Clear Table','Clear Table'],
                         ['Done','Exit application']]

        self.checkboxes = [ ]
                         
        for item in self.jWidgets:
            self.widgets[item[1]] = self.dispatch_widget[item[0]]()
            label = item[1] + '_label'
            self.widgets[label] = QtGui.QLabel(self.proper(item[1]))

        for button in self.buttons:
            self.widgets[button[0] + '_push'] = QtGui.QPushButton(self.proper(button[0]))

        for boxtype, field_name, tooltip in self.jWidgets:
            self.widgets[field_name + '_label'].setToolTip(tooltip)
            
        for button_name, tooltip in self.buttons:
            self.widgets[button_name + '_push'].setToolTip(tooltip)
            

        self.widgets['Entree Choice'].addItem("Steak")
        self.widgets['Entree Choice'].addItem("Lobster")
        self.widgets['Entree Choice'].addItem("Special")
        
        self.widgets['Table'].setText('1')
        self.widgets['Seat'].setText('1')
                
        self.widgets['Done_push'].clicked.connect(self.save_close)
        self.widgets['Pay Bill_push'].clicked.connect(self.payBill)
        self.widgets['Place Order_push'].clicked.connect(self.placeOrder)
        self.widgets['Get Check Total_push'].clicked.connect(self.getCheckTotal)
        self.widgets['Clear Table_push'].clicked.connect(self.clearTable)

    def placeOrder(self):
        testData = ""
        try:
            f = open("TESTINSS.DAT","r")
            testData = f.read()
            f.close()
        except:
            pass
        entree = self.get('Entree Choice')
        if entree == "Special":
            entree = "AddFreeDessert"
        callStr = "post.exe " + entree
        subprocess.call (callStr,shell=True)
        try:
            f = open("TESTINSS.DAT","r")
            testData += f.read()
            f.close()
        except:
            pass
            
    def getCheckTotal(self):
        entree = self.get('Entree Choice')
        if entree == "Special":
            entree = "AddFreeDessert"
        testData = ""
        try:
            f = open("TESTINSS.DAT","r")
            testData = f.read()
            f.close()
        except:
            pass

        testData = ""
        try:
            f = open("TESTINSS.DAT","r")
            testData = f.read()
            f.close()
        except:
            pass
            
        callStr = "post.exe " + entree + " GetCheck"
            
        subprocess.call (callStr,shell=True)
        if entree == "Steak":
            self.statusBar.showMessage("Check Total: $14")
        if entree == "Lobster":
            self.statusBar.showMessage("Check Total: $18")
        if entree == "Special":
            self.statusBar.showMessage("Check Total: $14")
        try:
            f = open("TESTINSS.DAT","r")
            testData += f.read()
            f.close()
        except:
            pass

    def clearTable(self):
        entree = self.get('Entree Choice')
        if entree == "Special":
            entree = "AddFreeDessert"
        testData = ""
        try:
            f = open("TESTINSS.DAT","r")
            testData = f.read()
            f.close()
        except:
            pass

        callStr = "post.exe " + entree + " PayBill TableClear"
        subprocess.call (callStr,shell=True)
        try:
            f = open("TESTINSS.DAT","r")
            testData += f.read()
            f.close()
        except:
            pass

    def payBill(self):
        entree = self.get('Entree Choice')
        if entree == "Special":
            entree = "AddFreeDessert"
        testData = ""
        try:
            f = open("TESTINSS.DAT","r")
            testData = f.read()
            f.close()
        except:
            pass

        callStr = "post.exe " + entree + " PayBill"
        subprocess.call (callStr,shell=True)
        try:
            f = open("TESTINSS.DAT","r")
            testData += f.read()
            f.close()
        except:
            pass
    
    def save_close(self):
        self.close()
                    
def main():
    app = QtGui.QApplication(sys.argv)
    ex = VC_POS_QT()
    sys.exit(app.exec_())



def run_cmd(statusMsg,  build_dir, compiler_name, manage_project_name):
    pass
    
#If this is the main program execute the main function
if __name__ == '__main__':
    main()

