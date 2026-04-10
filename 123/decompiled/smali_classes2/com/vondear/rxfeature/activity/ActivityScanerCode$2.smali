.class Lcom/vondear/rxfeature/activity/ActivityScanerCode$2;
.super Ljava/lang/Object;
.source "ActivityScanerCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 381
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->access$200(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)Lcom/vondear/rxui/view/dialog/RxDialogSure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vondear/rxui/view/dialog/RxDialogSure;->cancel()V

    return-void
.end method
