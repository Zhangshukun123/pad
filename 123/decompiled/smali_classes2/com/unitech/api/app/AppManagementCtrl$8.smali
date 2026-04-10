.class Lcom/unitech/api/app/AppManagementCtrl$8;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl;->getApkVersionInfo(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/app/AppManagementCtrl;

.field final synthetic val$apkversionCode:[I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$readSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[I)V
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
            "val$apkversionCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1821
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    iput-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$apkversionCode:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$readSide:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unitech/api/app/AppManagementCtrl;->access$1000(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1827
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->val$apkversionCode:[I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    aput v0, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1831
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1833
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    monitor-enter v0

    .line 1834
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/app/AppManagementCtrl$8;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1835
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
