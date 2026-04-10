.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ScrappedActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->onTvGoodsCodeClick(Landroid/view/View;)V

    return-void
.end method
