.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;IILcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$1:I

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$2:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$1:I

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$2:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$7$kxwT2krSGYV_WgKO4_J4PJz0C8I;->f$3:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;->lambda$onClick$1$TeamReturnActivity$7(IILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V

    return-void
.end method
