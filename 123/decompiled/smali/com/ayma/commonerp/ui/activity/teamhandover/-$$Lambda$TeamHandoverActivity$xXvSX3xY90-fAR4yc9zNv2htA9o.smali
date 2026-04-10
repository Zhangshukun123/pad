.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;->f$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;->f$1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->lambda$showSelectDateDialog$1$TeamHandoverActivity(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
