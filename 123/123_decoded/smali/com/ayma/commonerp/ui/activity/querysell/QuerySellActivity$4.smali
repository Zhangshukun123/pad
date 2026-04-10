.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$4;
.super Ljava/lang/Object;
.source "QuerySellActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->initSpinners(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 230
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->access$302(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
