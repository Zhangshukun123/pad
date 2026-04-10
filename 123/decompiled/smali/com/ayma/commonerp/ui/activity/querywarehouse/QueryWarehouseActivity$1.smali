.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;
.super Ljava/lang/Object;
.source "QueryWarehouseActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 101
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-static {p3}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->queryWarehouse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
