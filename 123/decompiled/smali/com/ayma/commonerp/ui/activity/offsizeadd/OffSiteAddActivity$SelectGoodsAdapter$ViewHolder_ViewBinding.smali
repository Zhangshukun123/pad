.class public Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "OffSiteAddActivity$SelectGoodsAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    .line 23
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080726

    const-string v2, "field \'tvCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08075c

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080729

    const-string v2, "field \'tvCompanyName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080774

    const-string v2, "field \'tvPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    .line 37
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCode:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
