.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$2;
.super Ljava/lang/Object;
.source "QueryBillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->init()V
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

    .line 157
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
