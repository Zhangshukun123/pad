.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GoodsOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "viewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804d4
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804d5
    .end annotation
.end field

.field tvGoodsOption:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804d6
    .end annotation
.end field

.field tvQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804d7
    .end annotation
.end field

.field tvStockQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804d9
    .end annotation
.end field

.field tvTypeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804db
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;Landroid/view/View;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    .line 331
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 332
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
