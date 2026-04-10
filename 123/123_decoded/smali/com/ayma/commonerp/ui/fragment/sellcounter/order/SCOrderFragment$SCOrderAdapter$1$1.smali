.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;
.super Ljava/lang/Object;
.source "SCOrderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getLineOrderId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SCOrderBean;->getLineOrderNo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->completeOrder(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
