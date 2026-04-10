.class public Lcom/ayma/commonerp/app/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static instance:Landroid/app/Application;


# instance fields
.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private isEnterMenu:Z

.field private watermarkDrawable:Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ayma/commonerp/app/App;->isEnterMenu:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/ayma/commonerp/app/App;->watermarkDrawable:Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 94
    sget-object v0, Lcom/ayma/commonerp/app/App;->instance:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finishAll()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getWatermark()Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->watermarkDrawable:Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/ayma/watermark/widget/Watermark;->getInstance()Lcom/ayma/watermark/widget/Watermark;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s %s"

    .line 106
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/watermark/widget/Watermark;->setText(Ljava/lang/String;)Lcom/ayma/watermark/widget/Watermark;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/app/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/watermark/widget/Watermark;->setTextColor(I)Lcom/ayma/watermark/widget/Watermark;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    .line 109
    invoke-virtual {v0, v1}, Lcom/ayma/watermark/widget/Watermark;->setTextSize(F)Lcom/ayma/watermark/widget/Watermark;

    move-result-object v0

    const/high16 v1, -0x3dcc0000    # -45.0f

    .line 110
    invoke-virtual {v0, v1}, Lcom/ayma/watermark/widget/Watermark;->setRotation(F)Lcom/ayma/watermark/widget/Watermark;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/ayma/watermark/widget/Watermark;->generateWatermarkDrawable()Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/app/App;->watermarkDrawable:Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->watermarkDrawable:Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    return-object v0
.end method

.method public isNoActivityRunning()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u9875\u9762\u6570\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "App"

    invoke-static {v2, v0}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCreate()V
    .locals 2

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    sput-object p0, Lcom/ayma/commonerp/app/App;->instance:Landroid/app/Application;

    .line 30
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/app/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/base/util/CrashHandler;->init(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    .line 32
    invoke-static {p0}, Lorg/litepal/Operator;->initialize(Landroid/content/Context;)V

    .line 33
    invoke-static {p0}, Lcom/vondear/rxtool/RxTool;->init(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/ayma/commonerp/app/App$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/app/App$1;-><init>(Lcom/ayma/commonerp/app/App;)V

    invoke-static {p0, v0}, Lcom/billy/android/swipe/SmartSwipeBack;->activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/ayma/commonerp/app/App;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ayma/commonerp/app/App;->isEnterMenu:Z

    if-nez p1, :cond_1

    .line 75
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->show(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setEnterMenu(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/ayma/commonerp/app/App;->isEnterMenu:Z

    return-void
.end method
