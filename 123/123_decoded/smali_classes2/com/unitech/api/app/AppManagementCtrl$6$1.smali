.class Lcom/unitech/api/app/AppManagementCtrl$6$1;
.super Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback$Stub;
.source "AppManagementCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unitech/api/app/AppManagementCtrl$6;


# direct methods
.method constructor <init>(Lcom/unitech/api/app/AppManagementCtrl$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    invoke-direct {p0}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public installAppCallback(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "result"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 662
    iget-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object p2, p2, Lcom/unitech/api/app/AppManagementCtrl$6;->val$execResult:[Landroid/os/Bundle;

    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object v1, v1, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v2, "install %s successful"

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object v3, v3, Lcom/unitech/api/app/AppManagementCtrl$6;->val$pkgName:Ljava/lang/String;

    aput-object v3, p1, v0

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/unitech/api/app/AppManagementCtrl;->access$900(Lcom/unitech/api/app/AppManagementCtrl;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    aput-object p1, p2, v0

    goto :goto_0

    .line 664
    :cond_0
    iget-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object p2, p2, Lcom/unitech/api/app/AppManagementCtrl$6;->val$execResult:[Landroid/os/Bundle;

    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object v1, v1, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v2, "install %s failed"

    new-array v3, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object v4, v4, Lcom/unitech/api/app/AppManagementCtrl$6;->val$pkgName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/unitech/api/app/AppManagementCtrl;->access$900(Lcom/unitech/api/app/AppManagementCtrl;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    aput-object p1, p2, v0

    .line 666
    :goto_0
    iget-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object p1, p1, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    monitor-enter p1

    .line 667
    :try_start_0
    iget-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$6$1;->this$1:Lcom/unitech/api/app/AppManagementCtrl$6;

    iget-object p2, p2, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 668
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
