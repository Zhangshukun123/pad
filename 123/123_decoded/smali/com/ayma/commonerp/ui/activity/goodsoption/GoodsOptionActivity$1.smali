.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;
.super Ljava/lang/Object;
.source "GoodsOptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->fetchGoodsList()V

    return-void
.end method
