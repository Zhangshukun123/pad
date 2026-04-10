.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;
.super Ljava/lang/Object;
.source "QueryBillActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

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

    .line 188
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->access$002(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->access$000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->getSmallType(Ljava/lang/String;)V

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
