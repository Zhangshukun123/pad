.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;
.super Ljava/lang/Object;
.source "OnlineRefundSimplePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->queryRefundOrderDelay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$transactionNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->val$transactionNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->val$errorMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$3;->val$transactionNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->queryRefundOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
