.class Lcom/unitech/api/app/AppManagementCtrl$6;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl;->installStorageApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/app/AppManagementCtrl;

.field final synthetic val$apkFilePath:Ljava/lang/String;

.field final synthetic val$execResult:[Landroid/os/Bundle;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unitech/api/app/AppManagementCtrl;Ljava/lang/String;Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$apkFilePath",
            "val$pkgName",
            "val$execResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    iput-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$apkFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$execResult:[Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 658
    :try_start_0
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$100()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object v0

    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$apkFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$pkgName:Ljava/lang/String;

    new-instance v3, Lcom/unitech/api/app/AppManagementCtrl$6$1;

    invoke-direct {v3, p0}, Lcom/unitech/api/app/AppManagementCtrl$6$1;-><init>(Lcom/unitech/api/app/AppManagementCtrl$6;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$execResult:[Landroid/os/Bundle;

    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v3, "install %s failed: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->val$pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/unitech/api/app/AppManagementCtrl;->access$900(Lcom/unitech/api/app/AppManagementCtrl;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v1, v6

    .line 674
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    monitor-enter v0

    .line 675
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$6;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 676
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
