.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->sortList(Z)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->sortList(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080078
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
