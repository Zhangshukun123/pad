.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1754
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->list:Ljava/util/List;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1755
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->notifyItemRemoved(I)V

    .line 1756
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->notifyItemRangeChanged(II)V

    .line 1757
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const-string p2, "\u5df2\u5220\u9664"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
