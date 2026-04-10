.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;
.super Ljava/lang/Object;
.source "TeamHandoverModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->addTrainStock(Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 136
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 139
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v9, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    .line 143
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v9, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice0()D

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    .line 149
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice()D

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    .line 150
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostShuilv()D

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 151
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getGoodsIdByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v9, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    .line 162
    :cond_2
    new-instance v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v12

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;-><init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;DD)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->calculateTotalCountAndPrice()V

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$800(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$900(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$1000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 176
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->access$1200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
