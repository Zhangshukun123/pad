.class public Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;"
    }
.end annotation


# instance fields
.field alTvUserNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008f
    .end annotation
.end field

.field asBtnBoundMachine:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f7
    .end annotation
.end field

.field asBtnGetData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801fa
    .end annotation
.end field

.field asBtnSave:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801fc
    .end annotation
.end field

.field asEtPwd:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080200
    .end annotation
.end field

.field asEtQr:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080201
    .end annotation
.end field

.field asIvScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080202
    .end annotation
.end field

.field asTvMachineModel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020d
    .end annotation
.end field

.field asTvMachineSerialNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020e
    .end annotation
.end field

.field asTvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080211
    .end annotation
.end field

.field asView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080212
    .end annotation
.end field

.field btnClear:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f8
    .end annotation
.end field

.field etNetAddress:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801ff
    .end annotation
.end field

.field rbPrepub:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080206
    .end annotation
.end field

.field rbProduction:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080207
    .end annotation
.end field

.field rgEnChange:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080208
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field tbInvoicingStatue:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080209
    .end annotation
.end field

.field tbPayOptionType:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020a
    .end annotation
.end field

.field textView4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0806ef
    .end annotation
.end field

.field textView5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0806f5
    .end annotation
.end field

.field tvAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08020b
    .end annotation
.end field

.field tvBtnClearSimple:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->isResume:Z

    return p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dealScanResult(Ljava/lang/String;)V
    .locals 2

    .line 473
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->openSystemBrowser(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b003c

    return v0
.end method

.method public init()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbInvoicingStatue:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbPayOptionType:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvVersion:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/ayma/base/util/CommonUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Ver %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;
    .locals 2

    .line 383
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 368
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 374
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->dealScanResult(Ljava/lang/String;)V

    return-void

    .line 378
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBtnBoundMachineClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801f7
        }
    .end annotation

    .line 336
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineModel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineSerialNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->boundMachine(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBtnClearClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801f8
        }
    .end annotation

    .line 273
    new-instance v6, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$7;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u786e\u5b9a\u8981\u6e05\u9664\u9500\u552e\u6570\u636e\uff1f\n\u6ce8\u610f\uff1a\u6b64\u9879\u64cd\u4f5c\u4f1a\u5220\u9664\u6240\u6709\u9500\u552e\u6570\u636e\uff0c\u5305\u62ec\u672a\u4e0a\u4f20\u7684\u90e8\u5206\uff0c\u5220\u9664\u540e\u65e0\u6cd5\u6062\u590d\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnClearDataSimpleClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801f9
        }
    .end annotation

    .line 288
    new-instance v6, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$8;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u786e\u5b9a\u8981\u6e05\u9664\u672c\u5730\u8d44\u6599\u6570\u636e\uff1f"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnExitClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->finish()V

    return-void
.end method

.method public onBtnGetDataClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801fa
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->hideSoftKeyboard()V

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 250
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->getConfig(Ljava/lang/String;)V

    return-void
.end method

.method public onBtnGtpcClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801fb
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 306
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "title"

    const-string v1, "\u9ad8\u94c1\u914d\u9910"

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content"

    const-string v1, "\u5b89\u88c5\u9ad8\u94c1\u914d\u9910"

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tips"

    const-string v1, "\u6ce8\uff1a\u5b89\u88c5\u7248\u672c\u4e3av5.9.0.4"

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    const-string v1, "https://mobile.12306.cn/otsmobile/app/mdsweb/mcube/8DBA91F091009-product/5.9.0.4/ANDROID/gtpc-v5.9.0.4.apk"

    .line 314
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6e

    const-string v1, "versionCode"

    .line 316
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isCheckMd5"

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "isForceUpdate"

    .line 322
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cancelable"

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->setAutoSizeConfig()V

    .line 326
    invoke-static {p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->show(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onBtnSaveClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801fc
        }
    .end annotation

    .line 263
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u670d\u52a1\u5668\u5730\u5740"

    .line 264
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbProduction:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->saveConfig(Ljava/lang/String;Z)V

    return-void
.end method

.method public onBtnStartScanServiceClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801fd
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez p1, :cond_1

    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/util/ScanUtil;->startScanService()V

    return-void
.end method

.method public onBtnWifiManagerClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801fe
        }
    .end annotation

    .line 358
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->checkDevice()V

    .line 126
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->registerReceiver()V

    .line 127
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/CommonUtil;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->isSNEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V

    goto :goto_0

    .line 142
    :cond_0
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineSerialNumber:Landroid/widget/TextView;

    sget-object v0, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->unregisterReceiver()V

    .line 160
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onIvScanClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080202
        }
    .end annotation

    .line 346
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 349
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 350
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 351
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 352
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onResume()V

    return-void
.end method

.method public openSystemBrowser(Ljava/lang/String;)V
    .locals 9

    .line 500
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->isPassVerify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5373\u5c06\u4f7f\u7528\u7cfb\u7edf\u6d4f\u89c8\u5668\u6253\u5f00\u7f51\u5740\uff1a\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$11;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    new-instance v8, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;

    invoke-direct {v8, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;Ljava/lang/String;)V

    const-string v3, "\u63d0\u793a"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u5b9a"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public passVerify(Z)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnSave:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->btnClear:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$10;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method public saveSuccess()V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->updateRunningMode()V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 388
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineModel:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNetAddress(Ljava/lang/String;Z)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 418
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvAddress:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvAddress:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_INTERFACE:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v2, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_PAY:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rgEnChange:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 422
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbProduction:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbPrepub:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public showOnlinePayInvoicingStatue(Z)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbInvoicingStatue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public showPayOptionType(Z)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbPayOptionType:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public showPwdError()V
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    const-string v3, "\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    .line 488
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->destroy()V

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    :cond_0
    return-void
.end method

.method public updateRunningMode()V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->judgeRunningMode()V

    .line 436
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->setTitle()Ljava/lang/String;

    return-void
.end method
