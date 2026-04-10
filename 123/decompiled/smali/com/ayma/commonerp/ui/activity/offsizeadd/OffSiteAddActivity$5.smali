.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showStationList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 425
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->hideSoftKeyboard()V

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$102(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Z)Z

    .line 427
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 429
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
