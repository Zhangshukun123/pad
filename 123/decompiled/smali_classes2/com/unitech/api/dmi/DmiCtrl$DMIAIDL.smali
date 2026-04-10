.class Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;
.super Ljava/lang/Object;
.source "DmiCtrl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/dmi/DmiCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DMIAIDL"
.end annotation


# instance fields
.field DisableModule:Ljava/lang/reflect/Method;

.field EnableModule:Ljava/lang/reflect/Method;

.field GetModuleStatus:Ljava/lang/reflect/Method;

.field dmiInterface:Landroid/os/IInterface;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method varargs DisableModule([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->DisableModule:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->DisableModule:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs EnableModule([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->EnableModule:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->EnableModule:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs GetModuleStatus([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->GetModuleStatus:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->GetModuleStatus:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
