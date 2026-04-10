.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$6;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->notifyListDataChanged()V
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

    .line 291
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->access$000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->notifyDataSetChanged()V

    return-void
.end method
