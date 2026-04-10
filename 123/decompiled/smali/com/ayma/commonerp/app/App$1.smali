.class Lcom/ayma/commonerp/app/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/app/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/app/App;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/app/App;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/app/App$1;->this$0:Lcom/ayma/commonerp/app/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilter(Landroid/app/Activity;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->notNeedSlideBackList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
