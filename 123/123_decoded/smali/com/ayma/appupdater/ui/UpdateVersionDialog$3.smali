.class Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;
.super Ljava/lang/Object;
.source "UpdateVersionDialog.java"

# interfaces
.implements Lcom/ayma/appupdater/net/INetDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/ui/UpdateVersionDialog;->download(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

.field final synthetic val$tvClose:Landroid/widget/TextView;

.field final synthetic val$tvTip:Landroid/widget/TextView;

.field final synthetic val$tvUpdate:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    iput-object p2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvUpdate:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvTip:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvClose:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Throwable;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvUpdate:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvUpdate:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvTip:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\u66f4\u65b0\u5305\u4e0b\u8f7d\u5931\u8d25\uff1a%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvClose:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public progress(I)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvUpdate:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d%%"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public success(Ljava/io/File;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvUpdate:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->val$tvTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-virtual {v0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->dismiss()V

    .line 171
    invoke-static {p1}, Lcom/ayma/appupdater/utils/UpdateUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-static {v1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->access$100(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-static {v1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->access$200(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    const-string v0, "MD5\u68c0\u6d4b\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->access$300(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$3;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-virtual {v0}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ayma/appupdater/utils/UpdateUtil;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method
