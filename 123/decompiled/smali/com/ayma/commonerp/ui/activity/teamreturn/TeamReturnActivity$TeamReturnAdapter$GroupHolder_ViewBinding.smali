.class public Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TeamReturnActivity$TeamReturnAdapter$GroupHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080557

    const-string v2, "field \'ivSelect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->ivSelect:Landroid/widget/ImageView;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080555

    const-string v2, "field \'ivExpanded\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->ivExpanded:Landroid/widget/ImageView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080754

    const-string v2, "field \'tvGroupName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->tvGroupName:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080731

    const-string v2, "field \'tvDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->tvDelete:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->ivSelect:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->ivExpanded:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->tvGroupName:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->tvDelete:Landroid/widget/TextView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
