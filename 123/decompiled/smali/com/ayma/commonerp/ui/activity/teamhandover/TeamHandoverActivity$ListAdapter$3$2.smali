.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 654
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->removeDataByPosition(I)V

    .line 655
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    .line 656
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
