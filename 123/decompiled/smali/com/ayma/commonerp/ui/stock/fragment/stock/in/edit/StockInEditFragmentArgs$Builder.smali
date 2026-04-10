.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;
.super Ljava/lang/Object;
.source "StockInEditFragmentArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    .line 133
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "position"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    .line 129
    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;
    .locals 3

    .line 139
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;-><init>(Ljava/util/HashMap;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$1;)V

    return-object v0
.end method

.method public getData()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
