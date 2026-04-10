.class public final synthetic Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$3:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->lambda$bindData$2$ScrappedActivity$1(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
