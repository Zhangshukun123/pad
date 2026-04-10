.class public interface abstract Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;
.super Ljava/lang/Object;
.source "GoodsOptionContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGoodsOptionView"
.end annotation


# virtual methods
.method public abstract editOnlineQty(Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V
.end method

.method public abstract notifyGoodsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyItemChange(I)V
.end method

.method public abstract notifySmallTypeList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showUpdateResult(ZLjava/lang/String;)V
.end method
