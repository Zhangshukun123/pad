.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

.field public final synthetic f$1:Lcom/ayma/base/widget/ClearEditText;

.field public final synthetic f$2:Landroid/app/AlertDialog;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/ayma/commonerp/bean/ReceiptSelectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$1:Lcom/ayma/base/widget/ClearEditText;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$2:Landroid/app/AlertDialog;

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$3:I

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$4:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$1:Lcom/ayma/base/widget/ClearEditText;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$2:Landroid/app/AlertDialog;

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$3:I

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;->f$4:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->lambda$showEditCountDialog$3$TeamHandoverActivity(Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/view/View;)V

    return-void
.end method
