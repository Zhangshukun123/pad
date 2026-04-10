.class public Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

.field private view7f0800e5:Landroid/view/View;

.field private view7f0801f7:Landroid/view/View;

.field private view7f0801f8:Landroid/view/View;

.field private view7f0801f9:Landroid/view/View;

.field private view7f0801fa:Landroid/view/View;

.field private view7f0801fb:Landroid/view/View;

.field private view7f0801fc:Landroid/view/View;

.field private view7f0801fd:Landroid/view/View;

.field private view7f0801fe:Landroid/view/View;

.field private view7f080202:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;Landroid/view/View;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0806ef

    const-string v2, "field \'textView4\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->textView4:Landroid/widget/TextView;

    const v0, 0x7f080212

    const-string v1, "field \'asView\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asView:Landroid/view/View;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08008f

    const-string v2, "field \'alTvUserNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->alTvUserNumber:Landroid/widget/TextView;

    .line 58
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080200

    const-string v2, "field \'asEtPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0801fa

    const-string v1, "field \'asBtnGetData\' and method \'onBtnGetDataClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'asBtnGetData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnGetData:Landroid/widget/Button;

    .line 61
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fa:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0806f5

    const-string v2, "field \'textView5\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->textView5:Landroid/widget/TextView;

    .line 69
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f0801ff

    const-string v2, "field \'etNetAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f0801fc

    const-string v1, "field \'asBtnSave\' and method \'onBtnSaveClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'asBtnSave\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnSave:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fc:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08020d

    const-string v2, "field \'asTvMachineModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineModel:Landroid/widget/TextView;

    .line 80
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08020e

    const-string v2, "field \'asTvMachineSerialNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineSerialNumber:Landroid/widget/TextView;

    const v0, 0x7f0801f7

    const-string v1, "field \'asBtnBoundMachine\' and method \'onBtnBoundMachineClick\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'asBtnBoundMachine\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnBoundMachine:Landroid/widget/Button;

    .line 83
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f7:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080211

    const-string v2, "field \'asTvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvVersion:Landroid/widget/TextView;

    const v0, 0x7f0801f8

    const-string v1, "field \'btnClear\' and method \'onBtnClearClick\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnClear\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->btnClear:Landroid/widget/Button;

    .line 93
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f8:Landroid/view/View;

    .line 94
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801f9

    const-string v1, "field \'tvBtnClearSimple\' and method \'onBtnClearDataSimpleClick\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 101
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'tvBtnClearSimple\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvBtnClearSimple:Landroid/widget/Button;

    .line 102
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f9:Landroid/view/View;

    .line 103
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f080208

    const-string v2, "field \'rgEnChange\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rgEnChange:Landroid/widget/RadioGroup;

    .line 110
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080206

    const-string v2, "field \'rbPrepub\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbPrepub:Landroid/widget/RadioButton;

    .line 111
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080207

    const-string v2, "field \'rbProduction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbProduction:Landroid/widget/RadioButton;

    .line 112
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08020b

    const-string v2, "field \'tvAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvAddress:Landroid/widget/TextView;

    .line 113
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080201

    const-string v2, "field \'asEtQr\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    const v0, 0x7f080202

    const-string v1, "field \'asIvScan\' and method \'onIvScanClick\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 115
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'asIvScan\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asIvScan:Landroid/widget/ImageView;

    .line 116
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f080202:Landroid/view/View;

    .line 117
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const-class v0, Landroid/widget/ToggleButton;

    const v1, 0x7f080209

    const-string v2, "field \'tbInvoicingStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbInvoicingStatue:Landroid/widget/ToggleButton;

    .line 124
    const-class v0, Landroid/widget/ToggleButton;

    const v1, 0x7f08020a

    const-string v2, "field \'tbPayOptionType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbPayOptionType:Landroid/widget/ToggleButton;

    const v0, 0x7f0801fd

    const-string v1, "method \'onBtnStartScanServiceClick\'"

    .line 125
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fd:Landroid/view/View;

    .line 127
    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801fb

    const-string v1, "method \'onBtnGtpcClick\'"

    .line 133
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fb:Landroid/view/View;

    .line 135
    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnExitClick\'"

    .line 141
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 143
    new-instance v1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801fe

    const-string v1, "method \'onBtnWifiManagerClick\'"

    .line 149
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 150
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fe:Landroid/view/View;

    .line 151
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    .line 166
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->textView4:Landroid/widget/TextView;

    .line 167
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asView:Landroid/view/View;

    .line 168
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->alTvUserNumber:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 170
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnGetData:Landroid/widget/Button;

    .line 171
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->textView5:Landroid/widget/TextView;

    .line 172
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    .line 173
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnSave:Landroid/widget/Button;

    .line 174
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineModel:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineSerialNumber:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asBtnBoundMachine:Landroid/widget/Button;

    .line 177
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvVersion:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->btnClear:Landroid/widget/Button;

    .line 179
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvBtnClearSimple:Landroid/widget/Button;

    .line 180
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rgEnChange:Landroid/widget/RadioGroup;

    .line 181
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbPrepub:Landroid/widget/RadioButton;

    .line 182
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->rbProduction:Landroid/widget/RadioButton;

    .line 183
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tvAddress:Landroid/widget/TextView;

    .line 184
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    .line 185
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asIvScan:Landroid/widget/ImageView;

    .line 186
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbInvoicingStatue:Landroid/widget/ToggleButton;

    .line 187
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->tbPayOptionType:Landroid/widget/ToggleButton;

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fa:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fc:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f7:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f8:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801f9:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f080202:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f080202:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fd:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fb:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;->view7f0801fe:Landroid/view/View;

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
