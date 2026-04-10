.class public Lcom/unitech/api/keymap/ProgramKeyEntity;
.super Ljava/lang/Object;
.source "ProgramKeyEntity.java"


# instance fields
.field private keyCode:Ljava/lang/String;

.field private keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

.field private keyName:Ljava/lang/String;

.field private keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

.field private startActivityParamEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unitech/api/keymap/StartActivityParamEntity;",
            ">;"
        }
    .end annotation
.end field

.field private wakeUp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->wakeUp:I

    .line 20
    iput-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    .line 21
    iput-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStartActivityParamEntities(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "StartActivityKey",
            "StartActivityValue"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/unitech/api/keymap/StartActivityParamEntity;

    invoke-direct {v0}, Lcom/unitech/api/keymap/StartActivityParamEntity;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/unitech/api/keymap/StartActivityParamEntity;->setStartActivityKey(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/unitech/api/keymap/StartActivityParamEntity;->setStartActivityValue(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKeyCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyDownEntity()Lcom/unitech/api/keymap/BroadcastKeyDownEntity;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUpEntity()Lcom/unitech/api/keymap/BroadcastKeyUpEntity;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    return-object v0
.end method

.method public getStartActivityParamEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unitech/api/keymap/StartActivityParamEntity;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    return-object v0
.end method

.method public getWakeUp()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->wakeUp:I

    return v0
.end method

.method public setKeyCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyCode:Ljava/lang/String;

    return-void
.end method

.method public setKeyDownEntity(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyDownEntity"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyName"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyName:Ljava/lang/String;

    return-void
.end method

.method public setKeyUpEntity(Lcom/unitech/api/keymap/BroadcastKeyUpEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyUpEntity"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    return-void
.end method

.method public setWakeUp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wakeUp"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->wakeUp:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Name\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\"Code\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\"Wakeup\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->wakeUp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyDownEntity:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    invoke-virtual {v3}, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->keyUpEntity:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    invoke-virtual {v3}, Lcom/unitech/api/keymap/BroadcastKeyUpEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ",\"startActivityParams\":["

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-lez v1, :cond_2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/unitech/api/keymap/ProgramKeyEntity;->startActivityParamEntities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unitech/api/keymap/StartActivityParamEntity;

    invoke-virtual {v3}, Lcom/unitech/api/keymap/StartActivityParamEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
