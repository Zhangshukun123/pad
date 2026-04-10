.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080491
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;

.field tvMsg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080492
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;Landroid/view/View;)V
    .locals 0

    .line 1615
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;

    .line 1616
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1617
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
