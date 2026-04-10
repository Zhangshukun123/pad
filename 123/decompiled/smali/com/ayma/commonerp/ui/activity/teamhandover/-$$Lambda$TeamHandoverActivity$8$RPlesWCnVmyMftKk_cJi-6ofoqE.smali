.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$1:I

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$1:I

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$8$RPlesWCnVmyMftKk_cJi-6ofoqE;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;->lambda$onClick$1$TeamHandoverActivity$8(ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V

    return-void
.end method
