.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;
.super Ljava/lang/Object;
.source "OnlineRefundJDFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

.field private view7f080384:Landroid/view/View;

.field private view7f080386:Landroid/view/View;

.field private view7f080387:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    const v0, 0x7f080387

    const-string v1, "field \'tvStartTime\' and method \'onTvStartTimeClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvStartTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvStartTime:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080387:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080384

    const-string v1, "field \'tvEndTime\' and method \'onTvEndTimeClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvEndTime:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080384:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080386

    const-string v1, "field \'tvQuery\' and method \'onTvQueryClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvQuery:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080386:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080385

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvNoData:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f080381

    const-string v2, "field \'rgSort\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rgSort:Landroid/widget/RadioGroup;

    .line 61
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080382

    const-string v2, "field \'rvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08037e

    const-string v2, "field \'clTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->clTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    .line 72
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvStartTime:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvEndTime:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvQuery:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvNoData:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rgSort:Landroid/widget/RadioGroup;

    .line 77
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->clTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080387:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080387:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080384:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080384:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080386:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;->view7f080386:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
