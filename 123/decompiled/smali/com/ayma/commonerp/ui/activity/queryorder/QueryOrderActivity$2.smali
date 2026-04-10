.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;
.super Ljava/lang/Object;
.source "QueryOrderActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object p3, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->hideSoftKeyboard(Landroid/view/View;)V

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->btnRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
