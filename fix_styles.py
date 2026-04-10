import re

path = r'D:\works\pda\app\src\main\res\values\styles.xml'
with open(path, 'r', encoding='utf-8') as f:
    text = f.read()

# Remove all bad bg_table_content injections
text = re.sub(r' *<item name="android:background">@drawable/bg_table_content</item>\n?', '', text)

# Put it back specifically to 'table_grid_text'
target = '''    <style name="table_grid_text">
        <item name="android:textSize">@dimen/title_text_12</item>
        <item name="android:textStyle">bold</item>
        <item name="android:textColor">@color/table_title</item>
        <item name="android:gravity">center</item>'''

replacement = '''    <style name="table_grid_text">
        <item name="android:textSize">@dimen/title_text_12</item>
        <item name="android:textStyle">bold</item>
        <item name="android:textColor">@color/table_title</item>
        <item name="android:gravity">center</item>
        <item name="android:background">@drawable/bg_table_content</item>'''

text = text.replace(target, replacement)

with open(path, 'w', encoding='utf-8') as f:
    f.write(text)

print("Fixed")
