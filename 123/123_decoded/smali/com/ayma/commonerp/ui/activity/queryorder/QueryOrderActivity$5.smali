.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;
.super Ljava/lang/Object;
.source "QueryOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->notifyListDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;->notifyDataSetChanged()V

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
