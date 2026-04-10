.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SelectGoodsActivity$PopupGoodsAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080685

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080686

    const-string v2, "field \'tvPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080681

    const-string v2, "field \'ivAdd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080684

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080682

    const-string v2, "field \'ivReduce\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->ivReduce:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;

    .line 37
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->ivReduce:Landroid/widget/ImageView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
