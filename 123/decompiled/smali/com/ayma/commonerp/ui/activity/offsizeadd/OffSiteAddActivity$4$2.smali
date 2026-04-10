.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;I)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 379
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 380
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->val$position:I

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$302(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;I)I

    .line 381
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    iget v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->val$position:I

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$402(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->clearAllData()V

    return-void
.end method
