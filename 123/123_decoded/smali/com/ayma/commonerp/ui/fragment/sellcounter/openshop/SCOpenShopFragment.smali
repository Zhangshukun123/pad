.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;
.super Lcom/ayma/commonerp/base/BaseFragment;
.source "SCOpenShopFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseFragment<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;"
    }
.end annotation


# static fields
.field private static final SCAN_TYPE_SHOP_CODE:I = 0x1

.field private static final SCAN_TYPE_TRAIN_ID:I


# instance fields
.field private date:Ljava/lang/String;

.field etFirstOutTrain:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080407
    .end annotation
.end field

.field etShopCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080408
    .end annotation
.end field

.field etTrainId:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080409
    .end annotation
.end field

.field private scanType:I

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field tvFirstOutDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08040c
    .end annotation
.end field

.field tvOpenShop:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08040f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanType:I

    return-void
.end method

.method static synthetic lambda$onTvFirstOutDayClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 243
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0073

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;
    .locals 2

    .line 64
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->initView(Landroid/view/View;)V

    .line 80
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 81
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 87
    new-instance p1, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->activity:Landroid/app/Activity;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 88
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$4;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$5;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public synthetic lambda$onTvFirstOutDayClick$0$SCOpenShopFragment(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 235
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 236
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 237
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$onTvFirstOutDayClick$1$SCOpenShopFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->tvFirstOutDay:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 181
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->hideLoading()V

    const-string p1, "codedContent"

    .line 188
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanType:I

    if-nez p2, :cond_2

    .line 190
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    const-string p2, "http"

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 195
    :try_start_0
    invoke-static {p1}, Lcom/ayma/commonerp/util/UrlUtil;->parse(Ljava/lang/String;)Lcom/ayma/commonerp/util/UrlUtil$UrlEntity;

    move-result-object p1

    .line 196
    iget-object p1, p1, Lcom/ayma/commonerp/util/UrlUtil$UrlEntity;->params:Ljava/util/Map;

    const-string p2, "c"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "\u626b\u63cf\u7684\u4e8c\u7ef4\u7801\u4e0d\u5408\u89c4"

    .line 198
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 210
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->onDestroyView()V

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    :cond_0
    return-void
.end method

.method public onIvScanShopCodeClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08040a
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showLoading()V

    const/4 p1, 0x1

    .line 261
    iput p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanType:I

    .line 262
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->openScanPage()V

    return-void
.end method

.method public onIvScanTrainIdClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08040b
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showLoading()V

    const/4 p1, 0x0

    .line 254
    iput p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->scanType:I

    .line 255
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->openScanPage()V

    return-void
.end method

.method public onTvFirstOutDayClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08040c
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->hideSoftKeyboard()V

    .line 221
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0060

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080304

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 225
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 226
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 227
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 228
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "yyyyMMdd"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 230
    invoke-virtual {v6, v3, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 231
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->date:Ljava/lang/String;

    .line 233
    new-instance v5, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$sbfNKD6fDUOC5IFC92gQNCQvfS0;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$sbfNKD6fDUOC5IFC92gQNCQvfS0;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$hBjWReN0icJciJnQTIRmgFrP8QE;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$hBjWReN0icJciJnQTIRmgFrP8QE;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$lQaLBBZrNERqjrjlzhCTzy-5NYo;->INSTANCE:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/-$$Lambda$SCOpenShopFragment$lQaLBBZrNERqjrjlzhCTzy-5NYo;

    const-string v2, "\u53d6\u6d88"

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public onTvOpenShopClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08040f
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->openShop()V

    return-void
.end method

.method public openScanPage()V
    .locals 4

    .line 277
    new-instance v0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v1, 0x1

    .line 279
    invoke-virtual {v0, v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 280
    invoke-virtual {v0, v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 282
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->activity:Landroid/app/Activity;

    const-class v3, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "zxingConfig"

    .line 283
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x3e7

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openShop()V
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->hideSoftKeyboard()V

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u59cb\u53d1\u8f66\u6b21"

    .line 292
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u626b\u63cf\u8f66\u5e95\u53f7"

    .line 298
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "\u8bf7\u626b\u63cf\u8d2d\u7269\u7801"

    .line 304
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 308
    :cond_2
    iget-object v3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v3, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->openShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openShopSuccess()V
    .locals 2

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchToOrder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9875\u9762\u8df3\u8f6c\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 316
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
