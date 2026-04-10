.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 1742
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 1745
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1748
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    .line 1749
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, p1, v8

    const-string v0, "\u5373\u5c06\u5220\u9664\u5546\u54c1\uff1a%s\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v7, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$2;)V

    const-string v2, ""

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u7ee7\u7eed"

    .line 1748
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v8
.end method
