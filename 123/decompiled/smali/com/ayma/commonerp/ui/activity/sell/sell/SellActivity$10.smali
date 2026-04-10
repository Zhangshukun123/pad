.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showCommitType(Ljava/util/List;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field final synthetic val$discountAmount:D

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$typeMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;Ljava/util/Map;D)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$typeList:Ljava/util/List;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$typeMap:Ljava/util/Map;

    iput-wide p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$discountAmount:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1069
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$typeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1070
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$typeMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1071
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-wide p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->val$discountAmount:D

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitSellRecord(Ljava/lang/String;Ljava/lang/String;D)V

    .line 1072
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
