.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;
.super Ljava/lang/Object;
.source "ScrappedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
