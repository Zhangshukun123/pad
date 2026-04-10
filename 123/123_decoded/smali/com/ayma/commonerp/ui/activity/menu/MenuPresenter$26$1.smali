.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->requestSuccess(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterOrder()V

    return-void
.end method
