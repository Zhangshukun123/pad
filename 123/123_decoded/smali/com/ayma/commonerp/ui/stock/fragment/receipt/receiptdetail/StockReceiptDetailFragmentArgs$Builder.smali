.class public Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;
.super Ljava/lang/Object;
.source "StockReceiptDetailFragmentArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    .line 170
    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v1, "receiptId"

    .line 178
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v0, "receiptCode"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string p2, "receiptType"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string p2, "receiptStore"

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"receiptId\" is marked as non-null but was passed a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;
    .locals 3

    .line 186
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs;-><init>(Ljava/util/HashMap;Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$1;)V

    return-object v0
.end method

.method public getReceiptCode()Ljava/lang/String;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptId()Ljava/lang/String;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptStore()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptStore"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptType()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setReceiptCode(Ljava/lang/String;)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReceiptId(Ljava/lang/String;)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"receiptId\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReceiptStore(Ljava/lang/String;)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptStore"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReceiptType(Ljava/lang/String;)Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "receiptType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
