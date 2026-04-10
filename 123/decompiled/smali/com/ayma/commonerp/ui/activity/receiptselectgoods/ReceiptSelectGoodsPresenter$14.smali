.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->updateWarehouse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

.field final synthetic val$billDay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->val$billDay:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 6

    .line 661
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->val$billDay:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 6

    .line 666
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->val$billDay:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 6

    .line 656
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$7100(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$14;->val$billDay:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
