.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;
.super Ljava/lang/Object;
.source "InvoicingModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->sortList(ZLcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ayma/commonerp/bean/OrderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

.field final synthetic val$isNewest:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;Z)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;->val$isNewest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/bean/OrderBean;Lcom/ayma/commonerp/bean/OrderBean;)I
    .locals 1

    .line 165
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderBean;->getComparatorSellTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getComparatorSellTime()Ljava/lang/String;

    move-result-object p2

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, p2, v0}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 166
    iget-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;->val$isNewest:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 162
    check-cast p1, Lcom/ayma/commonerp/bean/OrderBean;

    check-cast p2, Lcom/ayma/commonerp/bean/OrderBean;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel$2;->compare(Lcom/ayma/commonerp/bean/OrderBean;Lcom/ayma/commonerp/bean/OrderBean;)I

    move-result p1

    return p1
.end method
