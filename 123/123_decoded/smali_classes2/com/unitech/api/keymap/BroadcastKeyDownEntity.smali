.class public Lcom/unitech/api/keymap/BroadcastKeyDownEntity;
.super Ljava/lang/Object;
.source "BroadcastKeyDownEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;
    }
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private downParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->actionName:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDownParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "DownKey",
            "DownValue"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;

    invoke-direct {v0, p0}, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;-><init>(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;)V

    .line 31
    iput-object p1, v0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;->downKey:Ljava/lang/String;

    .line 32
    iput-object p2, v0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;->downValue:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionName"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->actionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"BroadcastKeyDownAction\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ",\"Params\":["

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;

    iget-object v4, v4, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;->downKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity;->downParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;

    iget-object v4, v4, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;->downValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
