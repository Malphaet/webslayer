/System/Library/Frameworks/Python.framework/Versions/2.6/bin/pyuic4 Main-wzuffer.ui > MainGui.py
echo "from overGui import *" > tempy
cat MainGui.py >> tempy
mv tempy MainGui.py
sed s/Ui_MainWindow/MainGui/ MainGui.py > temp
sed s/self.patternEdit\ =\ QtGui.QLineEdit/self.patternEdit\ =\ DropLine/ temp > temp2 
sed s/self.payloadList\ =\ QtGui.QListWidget/self.payloadList\ =\ ListPay/ temp2 > temp3
mv temp3 MainGui.py
rm temp
rm temp2
python wfGui.py
