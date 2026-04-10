.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->searchGoods(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
        "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

.field final synthetic val$count:Ljava/lang/String;

.field final synthetic val$isScan:Z

.field final synthetic val$isUserReturn:Z

.field final synthetic val$pageType:Ljava/lang/String;

.field final synthetic val$payWay:Ljava/lang/String;

.field final synthetic val$priceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$pageType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$isScan:Z

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$count:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$isUserReturn:Z

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$priceType:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$payWay:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1902(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z

    .line 293
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1902(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;Z)Z

    .line 302
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 227
    iget-object v2, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 233
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "\u5907\u54c1"

    const-string v6, "12306"

    const-string v7, "\u6b63\u5e38"

    const-string v8, "VIP"

    const v9, 0x2c9ffb8

    const v10, 0xd5f35

    const v11, 0x14bfd

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    .line 234
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsBigTypeName()Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v15, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$pageType:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v2, v11, :cond_3

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v14, :cond_5

    if-eq v2, v13, :cond_5

    .line 248
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u51fa\u9519\u4e86"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 242
    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u6b64\u5546\u54c1\u4e0d\u80fd\u5728\u6b64\u5904\u9500\u552e\uff01"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_7
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 257
    iget-object v12, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$pageType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v11, :cond_b

    if-eq v13, v10, :cond_a

    if-eq v13, v9, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x2

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v12, -0x1

    :goto_5
    if-eqz v12, :cond_d

    if-eq v12, v14, :cond_d

    const/4 v13, 0x2

    if-eq v12, v13, :cond_e

    .line 266
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_d
    const/4 v13, 0x2

    .line 261
    :cond_e
    invoke-virtual {v15}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsBigTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 262
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 271
    :cond_f
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 273
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v2, "\u9886\u6599\u5355\u4e2d\u65e0\u6b64\u5546\u54c1"

    invoke-interface {v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v14, :cond_12

    .line 277
    iget-boolean v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$isScan:Z

    if-eqz v1, :cond_11

    .line 279
    iget-object v4, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$count:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$isUserReturn:Z

    iget-object v8, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$priceType:Ljava/lang/String;

    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$payWay:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitGoodsChange(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 281
    :cond_11
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$count:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$isUserReturn:Z

    iget-object v8, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$priceType:Ljava/lang/String;

    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->val$payWay:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showConfirmGoodsDialog(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    .line 286
    :cond_12
    iget-object v2, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {v2, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->dealManyGoodsSameCode(Ljava/util/List;)V

    return-void
.end method
