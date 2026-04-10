.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$2:I

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$3:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$2:I

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$ePItI-0Oitm0Xemr-89gBPKt6js;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->lambda$getChildView$6$TeamReturnActivity$TeamReturnAdapter(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;IILandroid/view/View;)Z

    move-result p1

    return p1
.end method
