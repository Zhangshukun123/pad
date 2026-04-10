.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->init()V
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

    .line 139
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$102(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Z)Z

    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->queryStation(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
