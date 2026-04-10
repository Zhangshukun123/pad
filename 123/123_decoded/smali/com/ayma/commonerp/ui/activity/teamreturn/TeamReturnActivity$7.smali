.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$groupPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;II)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$groupPosition:I

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 487
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$1$TeamReturnActivity$7(IILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 489
    iget-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-static {p4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    move-result-object p4

    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->access$800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;IILjava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->calculateAmount()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 484
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 485
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u8981\u5220\u9664  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 486
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \uff1f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$l40FM48AGBqlWn4_fPQMNBEYQsM;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$l40FM48AGBqlWn4_fPQMNBEYQsM;

    iget p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$groupPosition:I

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$position:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;

    invoke-direct {v6, p0, p1, v1, v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;IILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    const-string v1, "\u6ce8\u610f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    .line 485
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
