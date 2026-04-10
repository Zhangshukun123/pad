.class Lcom/unitech/api/app/AppManagementCtrl$5;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl;->installStreamedApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/app/AppManagementCtrl;

.field final synthetic val$execResult:[Landroid/os/Bundle;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$readSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Landroid/os/Bundle;)V
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
            "val$readSide",
            "val$pkgName",
            "val$execResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    iput-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$execResult:[Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 569
    :try_start_0
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$100()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object v2

    iget-object v3, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$pkgName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->streamApk(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    const-string v4, "Streamed apk to %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 570
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$100()Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;

    move-result-object v3

    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$pkgName:Ljava/lang/String;

    new-instance v5, Lcom/unitech/api/app/AppManagementCtrl$5$1;

    invoke-direct {v5, p0}, Lcom/unitech/api/app/AppManagementCtrl$5$1;-><init>(Lcom/unitech/api/app/AppManagementCtrl$5;)V

    invoke-interface {v3, v2, v4, v5}, Lcom/unitech/appctrlapi/aidl/IAppCtrlAidl;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 589
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    iget-object v3, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$execResult:[Landroid/os/Bundle;

    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    const-string v5, "install %s failed: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->val$pkgName:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/unitech/api/app/AppManagementCtrl;->access$900(Lcom/unitech/api/app/AppManagementCtrl;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v3, v1

    .line 591
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    monitor-enter v0

    .line 592
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$5;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 593
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
