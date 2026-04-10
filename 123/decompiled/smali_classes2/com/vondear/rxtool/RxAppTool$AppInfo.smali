.class public Lcom/vondear/rxtool/RxAppTool$AppInfo;
.super Ljava/lang/Object;
.source "RxAppTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxAppTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSD:Z

.field private isUser:Z

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packagePath:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    invoke-virtual {p0, p1}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setName(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0, p2}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 650
    invoke-virtual {p0, p3}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0, p4}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setPackagePath(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, p5}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0, p6}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setVersionCode(I)V

    .line 654
    invoke-virtual {p0, p7}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setSD(Z)V

    .line 655
    invoke-virtual {p0, p8}, Lcom/vondear/rxtool/RxAppTool$AppInfo;->setUser(Z)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagePath()Ljava/lang/String;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 707
    iget v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isSD()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->isSD:Z

    return v0
.end method

.method public isUser()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->isUser:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackagePath(Ljava/lang/String;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->packagePath:Ljava/lang/String;

    return-void
.end method

.method public setSD(Z)V
    .locals 0

    .line 671
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->isSD:Z

    return-void
.end method

.method public setUser(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->isUser:Z

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 711
    iput p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/vondear/rxtool/RxAppTool$AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method
