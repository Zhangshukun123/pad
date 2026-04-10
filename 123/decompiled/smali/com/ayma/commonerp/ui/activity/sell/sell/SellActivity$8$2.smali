.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;I)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 794
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 795
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->val$position:I

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$402(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;I)I

    .line 796
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    iget v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->val$position:I

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$102(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    return-void
.end method
