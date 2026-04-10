.class public final synthetic Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;Ljava/lang/String;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$2:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$2:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;->f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->lambda$bindData$2$OffSiteAddActivity$2(Ljava/lang/String;ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
