.class Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;
.super Ljava/lang/Object;
.source "KeymappingCtrl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/keymap/KeymappingCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgrammableKeyAIDL"
.end annotation


# instance fields
.field enableKeymapping:Ljava/lang/reflect/Method;

.field exportSettings:Ljava/lang/reflect/Method;

.field getKeymapping:Ljava/lang/reflect/Method;

.field getKeymappingEnabled:Ljava/lang/reflect/Method;

.field importSettings:Ljava/lang/reflect/Method;

.field programmableInterface:Landroid/os/IInterface;

.field resetKeymapping:Ljava/lang/reflect/Method;

.field resetSettings:Ljava/lang/reflect/Method;

.field setKeymapping:Ljava/lang/reflect/Method;

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

    .line 611
    iput-object p1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->this$0:Lcom/unitech/api/keymap/KeymappingCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method varargs enableKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->enableKeymapping:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->enableKeymapping:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 671
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs exportSettings([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->exportSettings:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->exportSettings:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 644
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs getKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymapping:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymapping:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 635
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs getKeymappingEnabled([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymappingEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->getKeymappingEnabled:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 680
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs importSettings([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->importSettings:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->importSettings:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 653
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs resetKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetKeymapping:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetKeymapping:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 662
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs resetSettings([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetSettings:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->resetSettings:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs setKeymapping([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->setKeymapping:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->setKeymapping:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/unitech/api/keymap/KeymappingCtrl$ProgrammableKeyAIDL;->programmableInterface:Landroid/os/IInterface;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 626
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
