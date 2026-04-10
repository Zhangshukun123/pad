import os

def fix_file(path):
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    content = content.replace('android:id="@id/', 'android:id="@+id/')
    content = content.replace('@dimen/edittext_high32', '@dimen/dp_32')
    
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)

fix_file(r'D:\works\pda\app\src\main\res\layout\activity_query_warehouse.xml')
fix_file(r'D:\works\pda\app\src\main\res\layout\item_qwa_list.xml')
print("Fixed successfully")
