.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->checkCommit(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/util/List<",
        "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field final synthetic val$discountAmount:D


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;D)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-wide p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->val$discountAmount:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$requestSuccess$0$SellActivity$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$requestSuccess$1$SellActivity$12(DLandroid/content/DialogInterface;I)V
    .locals 1

    .line 1158
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 1159
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1160
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const-string p4, "\u73b0\u91d1"

    const-string v0, "C"

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitSellRecord(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideLoading()V

    .line 1170
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1148
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-wide v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->val$discountAmount:D

    invoke-virtual {v0, p1, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showCommitType(Ljava/util/List;D)V

    return-void

    .line 1152
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$12$3FdpOsXKxrOxyS8BpCvvIqP_cGY;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$12$3FdpOsXKxrOxyS8BpCvvIqP_cGY;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;)V

    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;->val$discountAmount:D

    new-instance v9, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$12$g6ntwFm-_4nzdju4Q8rlU4xoQXg;

    invoke-direct {v9, p0, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$12$g6ntwFm-_4nzdju4Q8rlU4xoQXg;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;D)V

    const-string v4, "\u63d0\u793a"

    const-string v5, "\u5373\u5c06\u63d0\u4ea4\u5f53\u524d\u5546\u54c1\n\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v6, "\u53d6\u6d88"

    const-string v8, "\u786e\u5b9a"

    invoke-virtual/range {v3 .. v9}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
