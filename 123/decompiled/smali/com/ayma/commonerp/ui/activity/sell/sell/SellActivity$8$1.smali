.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$1;
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


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 787
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 788
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
