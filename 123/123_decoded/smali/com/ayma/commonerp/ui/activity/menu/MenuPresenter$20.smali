.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->saveSignInStatue(ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$data:Z

.field final synthetic val$isSell:Z

.field final synthetic val$isTakeOff:Z

.field final synthetic val$sellType:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;ZZIZ)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$isSell:Z

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$data:Z

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$sellType:I

    iput-boolean p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$isTakeOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 1046
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$isSell:Z

    if-eqz v0, :cond_1

    .line 1047
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$sellType:I

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->judgeToSell(I)V

    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u7b7e\u5230\u8bb0\u5f55\u5f02\u5e38\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u8bf7\u8fdb\u5165\u8d44\u6599\u4e0b\u8f7d\u9875\u9762\u6267\u884c\u66f4\u65b0\u7b7e\u5230\u4fe1\u606f\u540e\u8fd4\u56de\u83dc\u5355\u9875\u9762\u786e\u8ba4\u72b6\u6001\u662f\u5426\u5df2\u6b63\u786e\u66f4\u65b0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1055
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->hideLoading()V

    .line 1021
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$isSell:Z

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->saveUpdateSignInTime()V

    .line 1024
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$data:Z

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSignInStatue(Z)V

    .line 1026
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "\u60a8\u5f53\u524d\u8f66\u6b21\uff1a%s \u51fa\u4e58\u65e5\u671f\uff1a%s \u672a\u7b7e\u5230\u6216\u5df2\u9000\u4e58\uff0c\u4e0d\u80fd\u8fdb\u884c\u9500\u552e/\u9000\u6b3e\u64cd\u4f5c"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$sellType:I

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->judgeToSell(I)V

    return-void

    .line 1032
    :cond_2
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->val$isTakeOff:Z

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$8900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->exit()V

    goto :goto_0

    .line 1035
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignStatue()V

    .line 1037
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$20;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const-string v1, "\u66f4\u65b0\u7b7e\u5230\u72b6\u6001\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method
