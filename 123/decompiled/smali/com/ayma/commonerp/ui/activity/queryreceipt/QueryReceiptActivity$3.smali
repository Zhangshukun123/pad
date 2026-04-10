.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$3;
.super Ljava/lang/Object;
.source "QueryReceiptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->finishActivity()V

    return-void
.end method
