.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;Lcom/ayma/commonerp/bean/ReceiptJsonBean;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1735
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1739
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->editQuickHandoverHandoverQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V

    return-void
.end method
