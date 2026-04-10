.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;
.super Ljava/lang/Object;
.source "InvoicingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->filterList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

.field final synthetic val$endFilterDate:Ljava/lang/String;

.field final synthetic val$startFilterDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->val$startFilterDate:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->val$endFilterDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;->access$4200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->val$startFilterDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;->val$endFilterDate:Ljava/lang/String;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5$1;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingModel;->filterData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
