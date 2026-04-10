.class public Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil;
.super Ljava/lang/Object;
.source "ShowInvoicingQrCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showInvoicingQrCode(Lcom/ayma/commonerp/base/BaseActivity;Ljava/lang/String;ZZ)V
    .locals 4

    const-string v0, "\u6b63\u5728\u751f\u6210\u4e8c\u7ef4\u7801..."

    .line 23
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/base/BaseActivity;->showLoading(Ljava/lang/String;)V

    const/high16 v0, 0x435c0000    # 220.0f

    .line 24
    invoke-static {p0, v0}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://wifi.12306.cn/wifiapps/mealreceipt/openview/index#/orderquery?orderCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/vondear/rxfeature/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0057

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080552

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;

    invoke-direct {v3, p3, p0, v1, p2}, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil$1;-><init>(ZLcom/ayma/commonerp/base/BaseActivity;Landroid/app/AlertDialog;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080556

    .line 65
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->hideLoading()V

    .line 68
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 70
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/base/BaseActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method
