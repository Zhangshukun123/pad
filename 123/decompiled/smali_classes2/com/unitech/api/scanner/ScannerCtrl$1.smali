.class Lcom/unitech/api/scanner/ScannerCtrl$1;
.super Ljava/lang/Object;
.source "ScannerCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/scanner/ScannerCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/scanner/ScannerCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/scanner/ScannerCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/unitech/api/scanner/ScannerCtrl$1;->this$0:Lcom/unitech/api/scanner/ScannerCtrl;

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

    const/4 p1, 0x0

    .line 123
    invoke-static {p1}, Lcom/unitech/api/scanner/ScannerCtrl;->access$002(Lcom/unitech/dmservice/IScannerCtrlAidl;)Lcom/unitech/dmservice/IScannerCtrlAidl;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ScannerCtrl, Service %s is connected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p2}, Lcom/unitech/dmservice/IScannerCtrlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IScannerCtrlAidl;

    move-result-object p1

    invoke-static {p1}, Lcom/unitech/api/scanner/ScannerCtrl;->access$002(Lcom/unitech/dmservice/IScannerCtrlAidl;)Lcom/unitech/dmservice/IScannerCtrlAidl;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ScannerCtrl, Service %s is disconnected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Lcom/unitech/api/scanner/ScannerCtrl;->access$002(Lcom/unitech/dmservice/IScannerCtrlAidl;)Lcom/unitech/dmservice/IScannerCtrlAidl;

    return-void
.end method
