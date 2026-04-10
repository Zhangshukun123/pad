.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GoodsOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080798
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;Landroid/view/View;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    .line 415
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 416
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
