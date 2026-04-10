.class public Lcom/ayma/commonerp/eventbus/OnlinePayResult;
.super Ljava/lang/Object;
.source "OnlinePayResult.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private payWay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->payWay:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPayWay()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->payWay:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->list:Ljava/util/List;

    return-void
.end method

.method public setPayWay(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/OnlinePayResult;->payWay:Ljava/lang/String;

    return-void
.end method
