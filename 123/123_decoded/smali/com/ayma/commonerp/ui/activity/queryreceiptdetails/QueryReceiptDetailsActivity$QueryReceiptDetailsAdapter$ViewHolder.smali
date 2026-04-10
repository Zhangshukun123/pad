.class public Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QueryReceiptDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ckCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053a
    .end annotation
.end field

.field root:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

.field tvBrith:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080539
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053b
    .end annotation
.end field

.field tvEndDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053c
    .end annotation
.end field

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053d
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053e
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08053f
    .end annotation
.end field

.field tvSalePrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080540
    .end annotation
.end field

.field tvSpecifications:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080541
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080542
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;Landroid/view/View;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    .line 289
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 290
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
