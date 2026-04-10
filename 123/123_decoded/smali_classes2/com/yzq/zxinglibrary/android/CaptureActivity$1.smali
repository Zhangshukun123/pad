.class Lcom/yzq/zxinglibrary/android/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yzq/zxinglibrary/android/CaptureActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yzq/zxinglibrary/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity$1;->this$0:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDecodeFailed()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity$1;->this$0:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    sget v1, Lcom/yzq/zxinglibrary/R$string;->scan_failed_tip:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onImageDecodeSuccess(Lcom/google/zxing/Result;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity$1;->this$0:Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {v0, p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;)V

    return-void
.end method
