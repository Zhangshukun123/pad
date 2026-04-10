.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;
.super Ljava/lang/Object;
.source "TeamReturnModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->filerGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$newTransportTToTrainDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$newTransportTToTrainDate:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$3300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 742
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 743
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 745
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v2

    invoke-static {v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 746
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$newTransportTToTrainDate:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 747
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->access$3400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 752
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 753
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 755
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getShellife()I

    move-result v2

    invoke-static {v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfterN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 756
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$newTransportTToTrainDate:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    .line 757
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 763
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
