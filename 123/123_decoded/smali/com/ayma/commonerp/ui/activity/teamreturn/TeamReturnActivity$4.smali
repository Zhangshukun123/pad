.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

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

    .line 302
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$602(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Z)Z

    return-void

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->filterGoodsByStoreType(Ljava/lang/String;)V

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
