.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QueryReceiptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080558
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

.field tvCompany:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080727
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08072c
    .end annotation
.end field

.field tvCreteDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080730
    .end annotation
.end field

.field tvFrom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080734
    .end annotation
.end field

.field tvHandover:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080755
    .end annotation
.end field

.field tvHandoverHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080756
    .end annotation
.end field

.field tvOrderNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080769
    .end annotation
.end field

.field tvReview:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080779
    .end annotation
.end field

.field tvStationName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080782
    .end annotation
.end field

.field tvStoreName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080788
    .end annotation
.end field

.field tvStoreNameHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080789
    .end annotation
.end field

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080798
    .end annotation
.end field

.field tvUser:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08079e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Landroid/view/View;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    .line 369
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 370
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
