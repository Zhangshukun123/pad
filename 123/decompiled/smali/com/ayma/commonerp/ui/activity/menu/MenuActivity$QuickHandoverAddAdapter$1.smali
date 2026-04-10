.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;Lcom/ayma/commonerp/bean/ReceiptJsonBean;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;)V
    .locals 0

    .line 1644
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1647
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1651
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->editQuickHandoverAddQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V

    return-void
.end method
