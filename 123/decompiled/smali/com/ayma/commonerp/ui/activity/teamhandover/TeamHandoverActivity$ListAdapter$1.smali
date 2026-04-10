.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;ZLcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$selected:Z

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 626
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    iget-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$selected:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 628
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$1;->val$selected:Z

    xor-int/2addr v2, v0

    invoke-virtual {p1, p2, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->selectItem(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZ)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
