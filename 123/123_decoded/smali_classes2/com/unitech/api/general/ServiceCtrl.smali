.class public Lcom/unitech/api/general/ServiceCtrl;
.super Ljava/lang/Object;
.source "ServiceCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.servicectrl"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final METHOD_EXECUTE_SERVICE:Ljava/lang/String; = "executeMethod"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I

.field private static chkMap:Ljava/util/Map;

.field private static clsObjMap:Ljava/util/Map;

.field private static mContext:Landroid/content/Context;

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field TAG:Ljava/lang/String;

.field mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unitech/api/general/ServiceCtrl;->chkMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/unitech/api/general/ServiceCtrl;->clsObjMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ServiceCtrl"

    .line 26
    iput-object v0, p0, Lcom/unitech/api/general/ServiceCtrl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/unitech/api/general/ServiceCtrl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 67
    new-instance v0, Lcom/unitech/api/general/ServiceCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/general/ServiceCtrl$1;-><init>(Lcom/unitech/api/general/ServiceCtrl;)V

    return-object v0
.end method

.method private ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static getClassFunctions(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 94
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 96
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 58
    :try_start_0
    sget-object v0, Lcom/unitech/api/general/ServiceCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/general/ServiceCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    sget-object v0, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public varargs executeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "actionName",
            "className",
            "methodName",
            "params"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "Unknown error"

    .line 147
    iget-object v6, v1, Lcom/unitech/api/general/ServiceCtrl;->TAG:Ljava/lang/String;

    const-string v7, "ExecuteMethod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 149
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "errorMsg"

    const-string v9, "errorCode"

    const/4 v10, 0x1

    .line 150
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x18

    if-ge v7, v12, :cond_0

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Android version is too low"

    .line 151
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_0
    const/4 v7, 0x0

    .line 154
    sput-object v7, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 156
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    sget-object v3, Lcom/unitech/api/general/ServiceCtrl;->mContext:Landroid/content/Context;

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/general/ServiceCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v13

    invoke-direct {v0, v3, v12, v2, v13}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    .line 160
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    .line 161
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/unitech/api/util/ServiceHandler;

    sget-object v3, Lcom/unitech/api/general/ServiceCtrl;->mContext:Landroid/content/Context;

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/general/ServiceCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v12

    invoke-direct {v0, v3, v2, v12}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v0, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 166
    :cond_3
    new-instance v3, Lcom/unitech/api/util/ServiceHandler;

    sget-object v12, Lcom/unitech/api/general/ServiceCtrl;->mContext:Landroid/content/Context;

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/general/ServiceCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v13

    invoke-direct {v3, v12, v0, v2, v13}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v3, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 170
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/unitech/api/general/ServiceCtrl;->tryToBindService()Z

    .line 171
    iget-object v0, v1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_4

    .line 172
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Service is not connected"

    .line 173
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 176
    :cond_4
    sget-object v0, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v2

    .line 178
    :try_start_0
    iget-object v0, v1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    .line 181
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Class not found"

    .line 182
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 186
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v12

    array-length v13, v12

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_7

    aget-object v16, v12, v15

    .line 187
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Stub"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v7, v16

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_8

    .line 193
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Stub class not found"

    .line 194
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_8
    const-string v12, "asInterface"

    .line 197
    invoke-virtual {v1, v7, v12}, Lcom/unitech/api/general/ServiceCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    .line 198
    iget-object v14, v1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v12, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IInterface;

    .line 200
    invoke-static {v0}, Lcom/unitech/api/general/ServiceCtrl;->getClassFunctions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 202
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Methods not found"

    .line 203
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 206
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 208
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-nez v13, :cond_a

    goto :goto_3

    .line 210
    :cond_a
    :try_start_1
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 212
    array-length v15, v13

    new-array v15, v15, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v17, v5

    const/4 v10, 0x0

    .line 213
    :goto_4
    :try_start_2
    array-length v5, v13

    if-ge v10, v5, :cond_17

    .line 214
    array-length v5, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-ne v10, v5, :cond_b

    const/4 v5, 0x0

    :try_start_3
    new-array v13, v5, [Lcom/unitech/dmservice/ObjectData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 215
    :try_start_4
    aput-object v13, v15, v10

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 p2, v12

    goto/16 :goto_d

    .line 218
    :cond_b
    aget-object v5, v13, v10

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v18, v4, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 p2, v12

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 219
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 220
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v10

    :goto_5
    move-object/from16 p3, v13

    goto/16 :goto_7

    .line 221
    :cond_c
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 222
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v15, v10

    goto :goto_5

    .line 223
    :cond_d
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 224
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v15, v10

    goto :goto_5

    .line 225
    :cond_e
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 226
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v15, v10

    goto :goto_5

    .line 227
    :cond_f
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 228
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v15, v10

    goto :goto_5

    .line 229
    :cond_10
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 230
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v15, v10

    goto/16 :goto_5

    .line 231
    :cond_11
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 232
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v15, v10

    goto/16 :goto_5

    .line 233
    :cond_12
    aget-object v5, v13, v10

    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 234
    aget-object v5, v4, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v15, v10

    goto/16 :goto_5

    .line 235
    :cond_13
    aget-object v5, v13, v10

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_15

    aget-object v5, v13, v10

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    const-class v12, Lcom/unitech/dmservice/ObjectData;

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 236
    array-length v5, v4

    sub-int/2addr v5, v10

    new-array v12, v5, [Lcom/unitech/dmservice/ObjectData;

    move-object/from16 p3, v13

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_14

    move/from16 v18, v5

    .line 238
    new-instance v5, Lcom/unitech/dmservice/ObjectData;

    add-int v19, v10, v13

    aget-object v14, v4, v19

    invoke-direct {v5, v14}, Lcom/unitech/dmservice/ObjectData;-><init>(Ljava/lang/Object;)V

    aput-object v5, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, p4

    move/from16 v5, v18

    goto :goto_6

    .line 240
    :cond_14
    aput-object v12, v15, v10

    goto :goto_7

    :cond_15
    move-object/from16 p3, v13

    .line 242
    aget-object v5, v4, v10

    aput-object v5, v15, v10

    goto :goto_7

    :cond_16
    move-object/from16 p3, v13

    .line 245
    aget-object v5, v4, v10

    aput-object v5, v15, v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_17
    :goto_8
    move-object/from16 p2, v12

    .line 249
    :try_start_6
    invoke-virtual {v0, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    check-cast v0, Lcom/unitech/dmservice/ObjectData;

    const-string v5, "retInvoke"

    .line 252
    invoke-virtual {v0}, Lcom/unitech/dmservice/ObjectData;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v5, 0x0

    .line 253
    :try_start_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 256
    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object/from16 v0, v17

    :goto_a
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    :goto_b
    move-object/from16 p2, v12

    :goto_c
    const/4 v5, 0x0

    .line 260
    :goto_d
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_19
    move-object/from16 v0, v17

    :goto_e
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_f
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, p2

    move-object/from16 v5, v17

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v17, v5

    .line 265
    :goto_10
    iget-object v0, v1, Lcom/unitech/api/general/ServiceCtrl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExecuteMethod: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 273
    sget-object v0, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v6

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v17, v5

    .line 267
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    sget-object v4, Lcom/unitech/api/general/ServiceCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v4, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    .line 269
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_1b
    move-object/from16 v5, v17

    :goto_12
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public varargs executeServiceMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "methodName",
            "params"
        }
    .end annotation

    .line 289
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 290
    aput-object p1, v6, v0

    const/4 p1, 0x1

    .line 291
    aput-object p2, v6, p1

    .line 292
    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_0

    add-int/lit8 p1, v0, 0x2

    .line 293
    aget-object p2, p3, v0

    aput-object p2, v6, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "com.unitech.dmservice"

    const-string v3, "com.unitech.dmservice.action.servicectrl"

    const-string v4, ""

    const-string v5, "executeMethod"

    move-object v1, p0

    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/unitech/api/general/ServiceCtrl;->executeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 120
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 121
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FIND"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
