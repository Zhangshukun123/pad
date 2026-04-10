.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$qty:D


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;Lcom/ayma/commonerp/bean/SellDetailBean;D)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    iput-wide p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$qty:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 1701
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$qty:D

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v6

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->confirmDeleteGoodsOrNot(ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
