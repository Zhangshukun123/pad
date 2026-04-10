.class Lcom/ayma/commonerp/litepal/LitepalUse$5;
.super Ljava/lang/Object;
.source "LitepalUse.java"

# interfaces
.implements Lorg/litepal/crud/callback/FindMultiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/litepal/LitepalUse;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/litepal/crud/callback/FindMultiCallback<",
        "Lcom/ayma/commonerp/bean/PermissionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$permissionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 0

    .line 1651
    iput-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

    iput-object p2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->val$permissionType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PermissionBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1654
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1658
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/PermissionBean;

    .line 1660
    iget-object v1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->val$permissionType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "moveRequire"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "offSizeAdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "editScrappedPrice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "isOut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "handover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "return"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "isTeam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "addLocal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    goto :goto_2

    .line 1683
    :pswitch_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsOut()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1680
    :pswitch_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsTeam()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1677
    :pswitch_2
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsMoveRequire()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1674
    :pswitch_3
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsReturn()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1671
    :pswitch_4
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsScrapUpdate()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1668
    :pswitch_5
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsTransfer()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1665
    :pswitch_6
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsNonlocalSupply()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1662
    :pswitch_7
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/PermissionBean;->getIsLocalSupply()Ljava/lang/String;

    move-result-object p1

    .line 1689
    :goto_2
    iget-object v0, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 1655
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "\u65e0\u6743\u9650\u6570\u636e\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d\uff0c\u5982\u5df2\u4e0b\u8f7d\uff0c\u8bf7\u8054\u7cfb\u7ba1\u7406\u5458"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ab74cb6 -> :sswitch_7
        -0x4656e159 -> :sswitch_6
        -0x37b1c2d0 -> :sswitch_5
        0x212dc3 -> :sswitch_4
        0x5fd21c4 -> :sswitch_3
        0x2de1aa61 -> :sswitch_2
        0x438c5471 -> :sswitch_1
        0x4921a054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
