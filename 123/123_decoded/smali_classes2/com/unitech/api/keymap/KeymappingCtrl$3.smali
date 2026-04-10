.class Lcom/unitech/api/keymap/KeymappingCtrl$3;
.super Ljava/lang/Object;
.source "KeymappingCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/keymap/KeymappingCtrl;->createProgrammableKeyApiAidlServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/keymap/KeymappingCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/keymap/KeymappingCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 776
    iput-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$3;->this$0:Lcom/unitech/api/keymap/KeymappingCtrl;

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

    .line 796
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$3;->this$0:Lcom/unitech/api/keymap/KeymappingCtrl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

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

    .line 780
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "KeymappingCtrl, Service %s is connected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDK.KeymapCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :try_start_0
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$3;->this$0:Lcom/unitech/api/keymap/KeymappingCtrl;

    invoke-virtual {p1, p2}, Lcom/unitech/api/keymap/KeymappingCtrl;->convertToAIDLFunc(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 790
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "KeymappingCtrl, Service %s is disconnected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDK.KeymapCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$3;->this$0:Lcom/unitech/api/keymap/KeymappingCtrl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/unitech/api/keymap/KeymappingCtrl;->programmableKeyAIDL:Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;

    return-void
.end method
