.class Lcom/ayma/appupdater/ui/UpdateVersionDialog$1;
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


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/ui/UpdateVersionDialog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$1;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/ayma/appupdater/ui/UpdateVersionDialog$1;->this$0:Lcom/ayma/appupdater/ui/UpdateVersionDialog;

    invoke-virtual {p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->dismiss()V

    return-void
.end method
