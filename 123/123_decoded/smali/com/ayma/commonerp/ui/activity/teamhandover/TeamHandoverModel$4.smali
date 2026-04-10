.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$4;
.super Ljava/lang/Object;
.source "TeamHandoverModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->selectReverse(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)I
    .locals 0

    .line 472
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 469
    check-cast p1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    check-cast p2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel$4;->compare(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)I

    move-result p1

    return p1
.end method
