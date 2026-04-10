.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;
.super Ljava/lang/Object;
.source "SCOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;Lcom/ayma/commonerp/bean/SCOrderBean;Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 240
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    .line 242
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SCOrderBean;->getTakeCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SCOrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SCOrderBean;->getReceiptAmount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SCOrderBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SCOrderBean;->getLineOrderNo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p1, v2

    const-string v1, "\u53d6\u9910\u7801\uff1a%s\n\u987e\u5ba2\u53f7\u7801\uff1a%s\n\u91d1\u989d\uff1a%s\n\u8ba2\u5355:%s\n\n\u8bf7\u786e\u8ba4\u8ba2\u5355\u4fe1\u606f\uff0c\u65e0\u8bef\u540e\u70b9\u51fb\u786e\u8ba4"

    .line 241
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;)V

    const-string v1, ""

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u8ba4"

    .line 240
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
