.class public Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080493

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080494

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080495

    const-string v2, "field \'tvReceiveCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvReceiveCount:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080498

    const-string v2, "field \'tvWarehouseReceiveCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvWarehouseReceiveCount:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080496

    const-string v2, "field \'tvTotalCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvTotalCount:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080497

    const-string v2, "field \'tvAddCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvAddCount:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0802b3

    const-string v2, "field \'cbSelect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvReceiveCount:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvWarehouseReceiveCount:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvTotalCount:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvAddCount:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
