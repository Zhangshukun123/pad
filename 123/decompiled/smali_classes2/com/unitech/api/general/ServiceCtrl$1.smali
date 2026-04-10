.class Lcom/unitech/api/general/ServiceCtrl$1;
.super Ljava/lang/Object;
.source "ServiceCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/general/ServiceCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/general/ServiceCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/general/ServiceCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "iBinder"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    iget-object v0, v0, Lcom/unitech/api/general/ServiceCtrl;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Service %s is connected"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    iput-object p2, p1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    iget-object v0, v0, Lcom/unitech/api/general/ServiceCtrl;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Service %s is disconnected"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/unitech/api/general/ServiceCtrl$1;->this$0:Lcom/unitech/api/general/ServiceCtrl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/unitech/api/general/ServiceCtrl;->mBinder:Landroid/os/IBinder;

    return-void
.end method
