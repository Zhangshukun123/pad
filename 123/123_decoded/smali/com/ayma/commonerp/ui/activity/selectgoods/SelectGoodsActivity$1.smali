.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->fetchStock(Z)V

    return-void
.end method
