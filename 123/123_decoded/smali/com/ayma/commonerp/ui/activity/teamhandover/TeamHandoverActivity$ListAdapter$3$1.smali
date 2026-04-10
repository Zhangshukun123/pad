.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$1;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$1;->this$2:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 648
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
