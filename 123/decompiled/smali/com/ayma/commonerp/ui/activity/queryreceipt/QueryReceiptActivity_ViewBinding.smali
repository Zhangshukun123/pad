.class public Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryReceiptActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

.field private view7f080132:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    .line 33
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080135

    const-string v2, "field \'spEtcType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcType:Landroid/widget/Spinner;

    .line 34
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080134

    const-string v2, "field \'spEtcStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcStatue:Landroid/widget/Spinner;

    const v0, 0x7f080132

    const-string v1, "field \'btnQuery\' and method \'onBtnQueryClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQuery\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->btnQuery:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->view7f080132:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080133

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080136

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    .line 55
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcType:Landroid/widget/Spinner;

    .line 56
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcStatue:Landroid/widget/Spinner;

    .line 57
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->btnQuery:Landroid/widget/Button;

    .line 58
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->tvNoData:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->view7f080132:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity_ViewBinding;->view7f080132:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
