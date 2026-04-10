.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->hideSoftKeyboard()V

    .line 137
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spPayType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spOrderType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->queryAllOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
