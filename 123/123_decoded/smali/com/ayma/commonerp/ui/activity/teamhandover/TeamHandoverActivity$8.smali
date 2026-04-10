.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;
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

    .line 425
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 431
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$1$TeamHandoverActivity$8(ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 433
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-static {p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->removeDataByPosition(I)V

    .line 435
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p3, p2, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 428
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u8981\u5220\u9664  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 430
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \uff1f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$cmrYjNs8JnBNwkUCeK-JBLjazjY;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$cmrYjNs8JnBNwkUCeK-JBLjazjY;

    iget p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->val$position:I

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;

    invoke-direct {v6, p0, p1, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    const-string v1, "\u6ce8\u610f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    .line 429
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
