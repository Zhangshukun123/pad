.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InvoicingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->onTvStartTimeClick(Landroid/view/View;)V

    return-void
.end method
