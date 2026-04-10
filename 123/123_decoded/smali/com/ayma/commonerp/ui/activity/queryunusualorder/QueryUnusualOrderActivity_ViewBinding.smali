.class public Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryUnusualOrderActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0801ae:Landroid/view/View;

.field private view7f0801af:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    const v0, 0x7f0801ae

    const-string v1, "field \'btnAlipayQuery\' and method \'onAquoBtnAlipayQueryClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnAlipayQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->btnAlipayQuery:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801ae:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801af

    const-string v1, "field \'btnWechatQuery\' and method \'onAquoBtnWechatQueryClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnWechatQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->btnWechatQuery:Landroid/widget/Button;

    .line 47
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801af:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0801b0

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onAppTitleBtnLeftClicked\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    .line 72
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->btnAlipayQuery:Landroid/widget/Button;

    .line 73
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->btnWechatQuery:Landroid/widget/Button;

    .line 74
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801ae:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801af:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0801af:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
