.class public Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity$SelectCrossRoadAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080796

    const-string v2, "field \'tvTrainNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08078f

    const-string v2, "field \'tvTeamName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTeamName:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08077b

    const-string v2, "field \'tvRoadDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvRoadDate:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    .line 36
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTeamName:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvRoadDate:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
