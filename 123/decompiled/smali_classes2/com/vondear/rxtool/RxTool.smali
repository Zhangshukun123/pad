.class public Lcom/vondear/rxtool/RxTool;
.super Ljava/lang/Object;
.source "RxTool.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 151
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/vondear/rxtool/RxTool;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 155
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 163
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 164
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static countDown(Landroid/widget/TextView;JJLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    new-instance v0, Lcom/vondear/rxtool/RxTool$2;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/vondear/rxtool/RxTool$2;-><init>(JJLandroid/widget/TextView;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static delayToDo(JLcom/vondear/rxtool/interfaces/OnSimpleListener;)V
    .locals 2

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vondear/rxtool/RxTool$1;

    invoke-direct {v1, p2}, Lcom/vondear/rxtool/RxTool$1;-><init>(Lcom/vondear/rxtool/interfaces/OnSimpleListener;)V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static fixListViewHeight(Landroid/widget/ListView;)V
    .locals 6

    .line 122
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v5, 0x0

    .line 128
    invoke-interface {v0, v3, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 130
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getBackgroundHandler()Landroid/os/Handler;
    .locals 2

    .line 351
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 70
    sget-object v0, Lcom/vondear/rxtool/RxTool;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u8bf7\u5148\u8c03\u7528init()\u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getResIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/vondear/rxtool/RxTool;->context:Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lcom/vondear/rxtool/RxCrashTool;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static initFastClickAndVibrate(Landroid/content/Context;Lcom/vondear/rxtool/interfaces/OnDoListener;)V
    .locals 2

    const/16 v0, 0x64

    .line 357
    invoke-static {v0}, Lcom/vondear/rxtool/RxTool;->isFastClick(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u8bf7\u4e0d\u8981\u91cd\u590d\u70b9\u51fb"

    .line 358
    invoke-static {p0}, Lcom/vondear/rxtool/view/RxToast;->normal(Ljava/lang/String;)V

    return-void

    .line 361
    :cond_0
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxVibrateTool;->vibrateOnce(Landroid/content/Context;I)V

    .line 362
    invoke-interface {p1}, Lcom/vondear/rxtool/interfaces/OnDoListener;->doSomething()V

    return-void
.end method

.method public static isFastClick(I)Z
    .locals 7

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    sget-wide v2, Lcom/vondear/rxtool/RxTool;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 199
    :cond_0
    sput-wide v0, Lcom/vondear/rxtool/RxTool;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public static setEdDecimal(Landroid/widget/EditText;I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    const/16 v2, 0x2002

    .line 266
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 270
    new-instance v2, Lcom/vondear/rxtool/RxTool$4;

    invoke-direct {v2, p1}, Lcom/vondear/rxtool/RxTool$4;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static setEdTwoDecimal(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x2

    .line 209
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTool;->setEdDecimal(Landroid/widget/EditText;I)V

    return-void
.end method

.method public static setEdType(Landroid/widget/EditText;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/vondear/rxtool/RxTool$3;

    invoke-direct {v0, p0}, Lcom/vondear/rxtool/RxTool$3;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static setEditNumber(Landroid/widget/EditText;IZ)V
    .locals 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_0
    const-string v3, "0"

    const/4 v4, 0x0

    if-ge v2, p1, :cond_0

    .line 332
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    :goto_1
    if-ge v4, p1, :cond_1

    .line 336
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setEditNumberAuto(Landroid/widget/EditText;IZ)V
    .locals 1

    .line 305
    new-instance v0, Lcom/vondear/rxtool/RxTool$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/vondear/rxtool/RxTool$5;-><init>(Landroid/widget/EditText;IZ)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    const-string v0, "[^0-9\u4e00-\u9fa5]"

    .line 254
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 256
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
