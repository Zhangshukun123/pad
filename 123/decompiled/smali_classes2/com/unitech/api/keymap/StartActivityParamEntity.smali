.class public Lcom/unitech/api/keymap/StartActivityParamEntity;
.super Ljava/lang/Object;
.source "StartActivityParamEntity.java"


# instance fields
.field private startActivityKey:Ljava/lang/String;

.field private startActivityValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityKey:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStartActivityKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStartActivityValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityValue:Ljava/lang/String;

    return-object v0
.end method

.method public setStartActivityKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityKey"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityKey:Ljava/lang/String;

    return-void
.end method

.method public setStartActivityValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityValue"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/api/keymap/StartActivityParamEntity;->startActivityValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
