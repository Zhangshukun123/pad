.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;->val$bean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;->val$bean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V

    return-void
.end method
