.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$7;
.super Ljava/lang/Object;
.source "ScrappedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->onBtnDeleteAllClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 467
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 468
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->clearAllData()V

    return-void
.end method
