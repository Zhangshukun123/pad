.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;)V
    .locals 0

    .line 1706
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1709
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V

    return-void
.end method
