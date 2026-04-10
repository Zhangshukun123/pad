.class public Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;
.super Ljava/lang/Object;
.source "QuickHandoverWarehouseResult.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->list:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->message:Ljava/lang/String;

    return-void
.end method
