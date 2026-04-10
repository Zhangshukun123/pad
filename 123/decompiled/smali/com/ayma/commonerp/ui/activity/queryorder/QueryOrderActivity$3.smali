.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$3;
.super Ljava/lang/Object;
.source "QueryOrderActivity.java"

# interfaces
.implements Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->onTvStartTimeClick(Landroid/view/View;)V
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

    .line 158
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(J)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvStartTime:Landroid/widget/TextView;

    const-string v1, "yyyy-MM-dd\nHH:mm"

    invoke-static {p1, p2, v1}, Lcom/ayma/base/util/DateTimeUtils;->parseDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
