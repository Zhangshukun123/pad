.class Lcom/unitech/api/uapps/LoggerCtrl$1;
.super Ljava/lang/Object;
.source "LoggerCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/uapps/LoggerCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/uapps/LoggerCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/uapps/LoggerCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/unitech/api/uapps/LoggerCtrl$1;->this$0:Lcom/unitech/api/uapps/LoggerCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

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
            "service"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl$1;->this$0:Lcom/unitech/api/uapps/LoggerCtrl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "LoggerCtrl, Service %s is connected"

    invoke-static {v0, p1, v1}, Lcom/unitech/api/uapps/LoggerCtrl;->access$000(Lcom/unitech/api/uapps/LoggerCtrl;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/unitech/api/uapps/LoggerCtrl$1;->this$0:Lcom/unitech/api/uapps/LoggerCtrl;

    invoke-static {p2}, Lcom/unitech/logger/ILoggerAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/logger/ILoggerAPI;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unitech/api/uapps/LoggerCtrl;->access$102(Lcom/unitech/api/uapps/LoggerCtrl;Lcom/unitech/logger/ILoggerAPI;)Lcom/unitech/logger/ILoggerAPI;

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

    .line 130
    iget-object v0, p0, Lcom/unitech/api/uapps/LoggerCtrl$1;->this$0:Lcom/unitech/api/uapps/LoggerCtrl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "LoggerCtrl, Service %s is disconnected"

    invoke-static {v0, p1, v1}, Lcom/unitech/api/uapps/LoggerCtrl;->access$000(Lcom/unitech/api/uapps/LoggerCtrl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
