.class Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;
.super Ljava/lang/Thread;
.source "AppManagementCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/app/AppManagementCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindServiceMonitor"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/unitech/api/app/AppManagementCtrl;


# direct methods
.method public constructor <init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "ctx"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method execute()V
    .locals 0

    .line 367
    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$800()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/unitech/api/app/AppManagementCtrl$BindServiceMonitor;->execute()V

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
