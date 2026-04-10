.class public Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "QueryReceiptActivity$ReceiptListAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080769

    const-string v2, "field \'tvOrderNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080727

    const-string v2, "field \'tvCompany\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCompany:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08079e

    const-string v2, "field \'tvUser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvUser:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080788

    const-string v2, "field \'tvStoreName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreName:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080782

    const-string v2, "field \'tvStationName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStationName:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080734

    const-string v2, "field \'tvFrom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvFrom:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080798

    const-string v2, "field \'tvType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080730

    const-string v2, "field \'tvCreteDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCreteDate:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080779

    const-string v2, "field \'tvReview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvReview:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080755

    const-string v2, "field \'tvHandover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandover:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080756

    const-string v2, "field \'tvHandoverHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandoverHint:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080789

    const-string v2, "field \'tvStoreNameHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreNameHint:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080558

    const-string v2, "field \'ivStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08072c

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCompany:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvUser:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreName:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStationName:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvFrom:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCreteDate:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvReview:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandover:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandoverHint:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreNameHint:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    .line 62
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
