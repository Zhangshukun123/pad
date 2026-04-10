.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2$1;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;->finishActivity()V

    return-void
.end method
