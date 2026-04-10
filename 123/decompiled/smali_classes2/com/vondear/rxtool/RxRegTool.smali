.class public Lcom/vondear/rxtool/RxRegTool;
.super Ljava/lang/Object;
.source "RxRegTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetAreaCode()Ljava/util/Hashtable;
    .locals 3

    .line 264
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "11"

    const-string v2, "\u5317\u4eac"

    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "12"

    const-string v2, "\u5929\u6d25"

    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "13"

    const-string v2, "\u6cb3\u5317"

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "14"

    const-string v2, "\u5c71\u897f"

    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "15"

    const-string v2, "\u5185\u8499\u53e4"

    .line 269
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "21"

    const-string v2, "\u8fbd\u5b81"

    .line 270
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "22"

    const-string v2, "\u5409\u6797"

    .line 271
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "23"

    const-string v2, "\u9ed1\u9f99\u6c5f"

    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "31"

    const-string v2, "\u4e0a\u6d77"

    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "32"

    const-string v2, "\u6c5f\u82cf"

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "33"

    const-string v2, "\u6d59\u6c5f"

    .line 275
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "34"

    const-string v2, "\u5b89\u5fbd"

    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "35"

    const-string v2, "\u798f\u5efa"

    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "36"

    const-string v2, "\u6c5f\u897f"

    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "37"

    const-string v2, "\u5c71\u4e1c"

    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "41"

    const-string v2, "\u6cb3\u5357"

    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "42"

    const-string v2, "\u6e56\u5317"

    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "43"

    const-string v2, "\u6e56\u5357"

    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "44"

    const-string v2, "\u5e7f\u4e1c"

    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "45"

    const-string v2, "\u5e7f\u897f"

    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "46"

    const-string v2, "\u6d77\u5357"

    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "50"

    const-string v2, "\u91cd\u5e86"

    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "51"

    const-string v2, "\u56db\u5ddd"

    .line 287
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "52"

    const-string v2, "\u8d35\u5dde"

    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "53"

    const-string v2, "\u4e91\u5357"

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "54"

    const-string v2, "\u897f\u85cf"

    .line 290
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "61"

    const-string v2, "\u9655\u897f"

    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "62"

    const-string v2, "\u7518\u8083"

    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "63"

    const-string v2, "\u9752\u6d77"

    .line 293
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "64"

    const-string v2, "\u5b81\u590f"

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "65"

    const-string v2, "\u65b0\u7586"

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "71"

    const-string v2, "\u53f0\u6e7e"

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "81"

    const-string v2, "\u9999\u6e2f"

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "82"

    const-string v2, "\u6fb3\u95e8"

    .line 298
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "91"

    const-string v2, "\u56fd\u5916"

    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static IDCardValidate(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "1"

    const-string v3, "0"

    const-string v4, "x"

    const-string v5, "9"

    const-string v6, "8"

    const-string v7, "7"

    const-string v8, "6"

    const-string v9, "5"

    const-string v10, "4"

    const-string v11, "3"

    const-string v12, "2"

    .line 170
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    const-string v4, "9"

    const-string v5, "10"

    const-string v6, "5"

    const-string v7, "8"

    const-string v8, "4"

    const-string v9, "2"

    const-string v10, "1"

    const-string v11, "6"

    const-string v12, "3"

    const-string v13, "7"

    const-string v14, "9"

    const-string v15, "10"

    const-string v16, "5"

    const-string v17, "8"

    const-string v18, "4"

    const-string v19, "2"

    .line 172
    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x12

    const/16 v5, 0xf

    if-eq v0, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_0

    const-string v0, "\u8eab\u4efd\u8bc1\u53f7\u7801\u957f\u5ea6\u5e94\u8be5\u4e3a15\u4f4d\u621618\u4f4d\u3002"

    return-object v0

    .line 183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x11

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-ne v0, v4, :cond_1

    .line 184
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "19"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 188
    invoke-static {v5}, Lcom/vondear/rxtool/RxRegTool;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u8eab\u4efd\u8bc115\u4f4d\u53f7\u7801\u90fd\u5e94\u4e3a\u6570\u5b57 ; 18\u4f4d\u53f7\u7801\u9664\u6700\u540e\u4e00\u4f4d\u5916\uff0c\u90fd\u5e94\u4e3a\u6570\u5b57\u3002"

    return-object v0

    :cond_3
    const/16 v0, 0xa

    .line 195
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xc

    .line 196
    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0xe

    .line 197
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vondear/rxtool/RxRegTool;->isDate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u8eab\u4efd\u8bc1\u751f\u65e5\u65e0\u6548\u3002"

    return-object v0

    .line 202
    :cond_4
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 203
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 205
    :try_start_0
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    sub-int/2addr v14, v15

    const/16 v15, 0x96

    if-gt v14, v15, :cond_5

    .line 206
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v14, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v14, v12

    if-gez v0, :cond_6

    :cond_5
    const-string v0, "\u8eab\u4efd\u8bc1\u751f\u65e5\u4e0d\u5728\u6709\u6548\u8303\u56f4\u3002"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 216
    :cond_6
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v9, :cond_d

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 220
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0x1f

    if-gt v0, v7, :cond_c

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 227
    :cond_8
    invoke-static {}, Lcom/vondear/rxtool/RxRegTool;->GetAreaCode()Ljava/util/Hashtable;

    move-result-object v0

    const/4 v7, 0x2

    .line 228
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "\u8eab\u4efd\u8bc1\u5730\u533a\u7f16\u7801\u9519\u8bef\u3002"

    return-object v0

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-ge v8, v6, :cond_a

    .line 238
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v9, v3, v8

    .line 239
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int v7, v7, v9

    add-int/2addr v0, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 241
    :cond_a
    rem-int/lit8 v0, v0, 0xb

    .line 242
    aget-object v0, v2, v0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "\u6709\u6548"

    if-ne v2, v4, :cond_b

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u8eab\u4efd\u8bc1\u65e0\u6548\uff0c\u4e0d\u662f\u5408\u6cd5\u7684\u8eab\u4efd\u8bc1\u53f7\u7801"

    return-object v0

    :cond_b
    return-object v3

    :cond_c
    :goto_3
    const-string v0, "\u8eab\u4efd\u8bc1\u65e5\u671f\u65e0\u6548"

    return-object v0

    :cond_d
    :goto_4
    const-string v0, "\u8eab\u4efd\u8bc1\u6708\u4efd\u65e0\u6548"

    return-object v0
.end method

.method public static checkBirthday(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[1-9]{4}([-./])\\d{1,2}\\1\\d{1,2}"

    .line 444
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static checkBlankSpace(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\s+"

    .line 433
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static checkDecimals(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\-?[1-9]\\d+(\\.\\d+)?"

    .line 422
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static checkDigit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\-?[1-9]\\d+"

    .line 411
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static checkPhone(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(\\+\\d+)?(\\d{3,4}\\-?)?\\d{7,8}$"

    .line 400
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static checkPostcode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[1-9]\\d{5}"

    .line 455
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isBankCard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\d{16,19}$|^\\d{6}[- ]\\d{10,13}$|^\\d{4}[- ]\\d{4}[- ]\\d{4}[- ]\\d{4,7}$"

    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isChz(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    .line 342
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    .line 363
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    .line 322
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$|^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|x|X)$)"

    .line 144
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard15(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    .line 124
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard18(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    .line 134
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIP(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    .line 373
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 384
    invoke-static {p1}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(13[0-9]|15[012356789]|17[03678]|18[0-9]|14[57])[0-9]{8}$"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isMobileExact(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|(147))\\d{8}$"

    .line 104
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMobileSimple(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[1]\\d{10}$"

    .line 94
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 310
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isTel(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}"

    .line 114
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isURL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?"

    .line 332
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUsername(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    .line 353
    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxRegTool;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static validateIdCard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
