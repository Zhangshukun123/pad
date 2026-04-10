.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;
.super Ljava/lang/Object;
.source "QueryReceiptDetailsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryReceiptDetailsView"
.end annotation


# virtual methods
.method public abstract init(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyGoodsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAllCountandAllMoney(DD)V
.end method
