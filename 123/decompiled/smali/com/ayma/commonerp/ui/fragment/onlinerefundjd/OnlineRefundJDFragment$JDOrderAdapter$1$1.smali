.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1$1;
.super Ljava/lang/Object;
.source "OnlineRefundJDFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/OrderBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getTransactionNo()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->refundOrder(Ljava/lang/String;I)V

    return-void
.end method
