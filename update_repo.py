import re
path = r'D:\works\pda\app\src\main\java\com\ccv\pda\FakeQueryWarehouseRepository.kt'
with open(path, 'r', encoding='utf-8', errors='ignore') as f:
    text = f.read()

new_db = '''    private val mockDb = buildList {
        add(QueryWarehouseRecord("GZT477463", "VIP蛋花汤", 0, 0.0, 0.0, "汤/粥"))
        add(QueryWarehouseRecord("GZT528535", "红烧牛肉面 (禁售)", 0, 0.0, 0.0, "汤/粥"))

        add(QueryWarehouseRecord("G14921282", "常温早餐", 0, 0.0, 0.0, "早餐"))
        add(QueryWarehouseRecord("G16170759", "商务早餐", 0, 0.0, 0.0, "早餐"))

        add(QueryWarehouseRecord("G08749241", "鸡丝拌面", 0, 15.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17965174", "(河南特色小碗菜) 平顶山鲁山揽锅菜...", 0, 15.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17962613", "(河南特色小碗菜) 濮阳清丰苗茹小炒...", 0, 28.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17266824", "嘉座红烧牛肉饭(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17473961", "嗨味亿家红烧牛肉面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17547350", "海福盛港式腊味煲仔饭(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17582974", "和园番茄排骨面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17788814", "和园香辣牛肉面(预包装)", 0, 45.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17123895", "农家红烧肉套餐", 0, 65.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17429430", "川香回锅肉套餐", 0, 65.0, 0.0, "餐食"))
        add(QueryWarehouseRecord("G17748322", "黑椒凤梨牛仔粒套餐(清真)", 0, 68.0, 0.0, "餐食"))
    }'''

text = re.sub(r'    private val mockDb = buildList \{.*?\n    \}', new_db, text, flags=re.DOTALL)

with open(path, 'w', encoding='utf-8') as f:
    f.write(text)
print("Updated successfully")
