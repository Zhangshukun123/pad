.class Lcom/ayma/commonerp/base/BaseModel$7$7;
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

    .line 597
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$7$7;->this$1:Lcom/ayma/commonerp/base/BaseModel$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/behavior/ComparatorBehavior;Lcom/ayma/commonerp/behavior/ComparatorBehavior;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 600
    invoke-interface {p1}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorOrderType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/ayma/commonerp/behavior/ComparatorBehavior;->getComparatorOrderType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 601
    iget-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$7$7;->this$1:Lcom/ayma/commonerp/base/BaseModel$7;

    iget-boolean p2, p2, Lcom/ayma/commonerp/base/BaseModel$7;->val$isReverse:Z

    if-eqz p2, :cond_0

    neg-int p1, p1

    :cond_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 597
    check-cast p1, Lcom/ayma/commonerp/behavior/ComparatorBehavior;

    check-cast p2, Lcom/ayma/commonerp/behavior/ComparatorBehavior;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/base/BaseModel$7$7;->compare(Lcom/ayma/commonerp/behavior/ComparatorBehavior;Lcom/ayma/commonerp/behavior/ComparatorBehavior;)I

    move-result p1

    return p1
.end method
