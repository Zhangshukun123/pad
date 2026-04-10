.class public Lcom/ayma/appupdater/ui/UpdateVersionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UpdateVersionDialog.java"


# static fields
.field public static final KEY_UPDATER_CANCELABLE:Ljava/lang/String; = "cancelable"

.field public static final KEY_UPDATER_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_UPDATER_IS_CHECK_MD5:Ljava/lang/String; = "isCheckMd5"

.field public static final KEY_UPDATER_IS_FORCE_UPDATE:Ljava/lang/String; = "isForceUpdate"

.field public static final KEY_UPDATER_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_UPDATER_TIPS:Ljava/lang/String; = "tips"

.field public static final KEY_UPDATER_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_UPDATER_URL:Ljava/lang/String; = "url"

.field public static final KEY_UPDATER_VERSION_CODE:Ljava/lang/String; = "versionCode"


# instance fields
.field private content:Ljava/lang/String;

.field private isCheckMd5:Z

.field private isForceUpdate:Z

.field private md5:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->download(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->isCheckMd5:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->md5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method private bindEvent(Landroid/view/View;)V
    .locals 7

    .line 101
    sget v0, Lcom/ayma/appupdater/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    sget v1, Lcom/ayma/appupdater/R$id;->tv_close:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    sget v2, Lcom/ayma/appupdater/R$id;->tv_update_content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    sget v3, Lcom/ayma/appupdater/R$id;->tv_update_notice:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    sget v4, Lcom/ayma/appupdater/R$id;->tv_update:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    sget v5, Lcom/ayma/appupdater/R$id;->tv_update_tip:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v5, 0x8

    .line 107
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v6, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->content:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->tips:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$1;

    invoke-direct {v0, p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog$1;-><init>(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-boolean v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->isForceUpdate:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 119
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0, v4, v1, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->download(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;

    invoke-direct {v0, p0, v4, v1, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;-><init>(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private download(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6

    .line 139
    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    invoke-static {v1}, Lcom/ayma/appupdater/utils/UpdateUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ayma/appupdater/utils/UpdateUtil;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    return-void

    .line 153
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 158
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 159
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    invoke-static {}, Lcom/ayma/appupdater/AppUpdater;->getInstance()Lcom/ayma/appupdater/AppUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/appupdater/AppUpdater;->getNetManager()Lcom/ayma/appupdater/net/INetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->url:Ljava/lang/String;

    new-instance v3, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;-><init>(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v0, v2, v1, v3, p0}, Lcom/ayma/appupdater/net/INetManager;->download(Ljava/lang/String;Ljava/io/File;Lcom/ayma/appupdater/net/INetDownloadCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-direct {v0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;-><init>()V

    .line 233
    invoke-virtual {v0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    const-string v2, "cancelable"

    .line 234
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->setCancelable(Z)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "updateVersionDialog"

    invoke-virtual {v0, p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showToastShort(Ljava/lang/String;)V
    .locals 3

    .line 241
    new-instance v0, Lcom/ayma/appupdater/widget/ToastCompat;

    invoke-direct {v0}, Lcom/ayma/appupdater/widget/ToastCompat;-><init>()V

    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/appupdater/widget/ToastCompat;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "title"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u66f4\u65b0"

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->title:Ljava/lang/String;

    const-string v0, "content"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u66f4\u65b0\u5185\u5bb9"

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->content:Ljava/lang/String;

    const-string v0, "tips"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u6ce8\uff1a\u66f4\u65b0\u540e\u8bf7\u91cd\u542fAPP"

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->tips:Ljava/lang/String;

    const-string v0, "url"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->url:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "\u66f4\u65b0\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 77
    invoke-direct {p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->showToastShort(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "md5"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->md5:Ljava/lang/String;

    const-string v0, "versionCode"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->versionCode:I

    const-string v0, "isCheckMd5"

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->isCheckMd5:Z

    const-string v0, "isForceUpdate"

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->isForceUpdate:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 90
    sget p3, Lcom/ayma/appupdater/R$layout;->dialog_updater:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->bindEvent(Landroid/view/View;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 201
    invoke-static {}, Lcom/ayma/appupdater/AppUpdater;->getInstance()Lcom/ayma/appupdater/AppUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/appupdater/AppUpdater;->getNetManager()Lcom/ayma/appupdater/net/INetManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/ayma/appupdater/net/INetManager;->cancel(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 206
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
