.class Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;
.super Ljava/lang/Object;
.source "UpdateVersionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/ui/UpdateVersionDialog;->bindEvent(Landroid/view/View;)V
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

    .line 125
    iput-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    iput-object p2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvUpdate:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvClose:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvTip:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    iget-object v0, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvUpdate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvClose:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$2;->val$tvTip:Landroid/widget/TextView;

    invoke-static {p1, v0, v1, v2}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->access$000(Lcom/ayma/appupdater/ui/UpdateVersionDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method
