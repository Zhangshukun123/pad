.class public final synthetic Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

.field public final synthetic f$1:Lcom/ayma/base/widget/ClearEditText;

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$1:Lcom/ayma/base/widget/ClearEditText;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$2:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$1:Lcom/ayma/base/widget/ClearEditText;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$2:Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->lambda$editQuickHandoverAddQty$0$MenuActivity(Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;ILandroid/view/View;)V

    return-void
.end method
