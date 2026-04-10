.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;
.super Ljava/lang/Object;
.source "StockOutFragmentDirections.java"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionStockOutFragmentToStockOutEditFragment"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "position"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;-><init>(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;

    .line 96
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getPosition()I

    move-result v3

    if-eq v2, v3, :cond_6

    return v1

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getActionId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getActionId()I

    move-result p1

    if-eq v2, p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getActionId()I
    .locals 1

    const v0, 0x7f080042

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 5

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    .line 56
    const-class v3, Landroid/os/Parcelable;

    const-class v4, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    const-class v3, Ljava/io/Serializable;

    const-class v4, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    :goto_0
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getPosition()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getActionId()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->arguments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionStockOutFragmentToStockOutEditFragment(actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getData()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
