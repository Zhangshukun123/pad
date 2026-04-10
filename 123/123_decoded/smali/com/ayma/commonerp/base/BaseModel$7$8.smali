.class Lcom/ayma/commonerp/base/BaseModel$7$8;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/base/BaseModel$7;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel$7;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$7$8;->this$1:Lcom/ayma/commonerp/base/BaseModel$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/behavior/ComparatorBehavior;Lcom/ayma/commonerp/behavior/ComparatorBehavior;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 609
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorPrice()D

    move-result-wide v0

    invoke-interface {p2}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorPrice()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 612
    :cond_0
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorPrice()D

    move-result-wide v0

    invoke-interface {p2}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorPrice()D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 613
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$7$8;->this$1:Lcom/ayma/commonerp/base/BaseModel$7;

    iget-boolean p2, p2, Lcom/ayma/commonerp/base/BaseModel$7;->val$isReverse:Z

    if-eqz p2, :cond_2

    neg-int p1, p1

    :cond_2
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 606
    check-cast p1, Lcom/ayma/commonerp/behavior/ComparatorBehavior;

    check-cast p2, Lcom/ayma/commonerp/behavior/ComparatorBehavior;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$7$8;->compare(Lcom/ayma/commonerp/behavior/ComparatorBehavior;Lcom/ayma/commonerp/behavior/ComparatorBehavior;)I

    move-result p1

    return p1
.end method
