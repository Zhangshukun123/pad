.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 451
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 452
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;->val$position:I

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showEditCountDialog(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    return-void
.end method
