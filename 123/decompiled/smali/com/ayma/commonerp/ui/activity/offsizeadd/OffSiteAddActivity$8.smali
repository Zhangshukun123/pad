.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$8;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->onBtnDeleteAllClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 581
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 582
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->clearAllData()V

    return-void
.end method
