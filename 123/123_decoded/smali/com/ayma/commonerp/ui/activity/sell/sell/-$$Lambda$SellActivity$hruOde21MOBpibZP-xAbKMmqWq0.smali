.class public final synthetic Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->lambda$showConfirmReturnClearList$7$SellActivity(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
