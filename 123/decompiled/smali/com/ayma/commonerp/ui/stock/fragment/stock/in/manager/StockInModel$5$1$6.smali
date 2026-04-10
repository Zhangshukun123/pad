.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$6;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$6;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)I
    .locals 0

    .line 335
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCreateDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCreateDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 332
    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$6;->compare(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)I

    move-result p1

    return p1
.end method
