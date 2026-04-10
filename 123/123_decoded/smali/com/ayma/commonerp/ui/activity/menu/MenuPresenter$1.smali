.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$1;
.super Landroid/os/Handler;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    .line 129
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
