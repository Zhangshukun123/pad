.class public Lcom/ayma/commonerp/bean/ListItemOptionBean;
.super Ljava/lang/Object;
.source "ListItemOptionBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isEmptyListBefore:Z

.field private isNewItem:Z

.field private message:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->position:I

    return v0
.end method

.method public isEmptyListBefore()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->isEmptyListBefore:Z

    return v0
.end method

.method public isNewItem()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->isNewItem:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public setEmptyListBefore(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->isEmptyListBefore:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setNewItem(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->isNewItem:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/ayma/commonerp/bean/ListItemOptionBean;->position:I

    return-void
.end method
