.class Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;
.super Ljava/lang/Object;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/lib/appctrl/ApkInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPkgInstaller"
.end annotation


# static fields
.field public static consSessionCallback:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static consSessionParams:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field close:Ljava/lang/reflect/Method;

.field commit:Ljava/lang/reflect/Method;

.field createSession:Ljava/lang/reflect/Method;

.field fsync:Ljava/lang/reflect/Method;

.field mContext:Landroid/content/Context;

.field objInstaller:Ljava/lang/Object;

.field openSession:Ljava/lang/reflect/Method;

.field openWrite:Ljava/lang/reflect/Method;

.field registerSessionCallback:Ljava/lang/reflect/Method;

.field setAppPackageName:Ljava/lang/reflect/Method;

.field uninstall:Ljava/lang/reflect/Method;

.field unregisterSessionCallback:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {p0}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->doPackageInstallerReflection()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 2

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->close:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public commit(Ljava/lang/Object;Landroid/content/IntentSender;)V
    .locals 3

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->commit:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createSession(Ljava/lang/Object;)I
    .locals 4

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->createSession:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public doPackageInstallerReflection()V
    .locals 7

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 335
    const-class v1, Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageInstaller"

    .line 336
    invoke-virtual {p0, v1, v2}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 338
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "createSession"

    invoke-virtual {p0, v1, v4}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->createSession:Ljava/lang/reflect/Method;

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 342
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "uninstall"

    invoke-virtual {p0, v1, v4}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->uninstall:Ljava/lang/reflect/Method;

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 344
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "unregisterSessionCallback"

    invoke-virtual {p0, v1, v4}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->unregisterSessionCallback:Ljava/lang/reflect/Method;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 346
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "registerSessionCallback"

    invoke-virtual {p0, v1, v4}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->registerSessionCallback:Ljava/lang/reflect/Method;

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "SessionParams"

    .line 349
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->consSessionParams:Ljava/lang/reflect/Constructor;

    const-string v3, "setAppPackageName"

    .line 351
    invoke-virtual {p0, v1, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->setAppPackageName:Ljava/lang/reflect/Method;

    .line 353
    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "openSession"

    invoke-virtual {p0, v1, v3}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openSession:Ljava/lang/reflect/Method;

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "Session"

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "openWrite"

    .line 358
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openWrite:Ljava/lang/reflect/Method;

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "fsync"

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->fsync:Ljava/lang/reflect/Method;

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "commit"

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->commit:Ljava/lang/reflect/Method;

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "close"

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->close:Ljava/lang/reflect/Method;

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method findClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object p1

    .line 387
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 389
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

.method findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
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

    .line 373
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 374
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 376
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

.method public fsync(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->fsync:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public openSession(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openSession:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public openWrite(Ljava/lang/Object;Ljava/lang/String;II)Ljava/io/OutputStream;
    .locals 3

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->openWrite:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerSessionCallback(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->registerSessionCallback:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setAppPackageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->setAppPackageName:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->uninstall:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public unregisterSessionCallback(Ljava/lang/Object;)V
    .locals 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->unregisterSessionCallback:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/lib/appctrl/ApkInstaller$MyPkgInstaller;->objInstaller:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
