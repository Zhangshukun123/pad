.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;
.super Ljava/lang/Object;
.source "QueryOrderActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 107
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->sortList(Z)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->sortList(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080124
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
