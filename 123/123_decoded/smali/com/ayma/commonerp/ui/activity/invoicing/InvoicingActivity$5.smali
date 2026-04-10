.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->onTvEndTimeClick(Landroid/view/View;)V
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

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(J)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\nHH:mm"

    invoke-static {v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->parseToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v2}, Lcom/ayma/base/util/DateTimeUtils;->compareDate4(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    const-string p2, "\u7ed3\u675f\u65f6\u95f4\u4e0d\u80fd\u5c0f\u4e8e\u5f00\u59cb\u65f6\u95f4"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvEndTime:Landroid/widget/TextView;

    invoke-static {p1, p2, v1}, Lcom/ayma/base/util/DateTimeUtils;->parseDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {p1, p2, v2}, Lcom/ayma/base/util/DateTimeUtils;->parseDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->filterList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
