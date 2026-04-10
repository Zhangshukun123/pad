.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

.field final synthetic val$tvTakeOffDate:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->val$tvTakeOffDate:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->val$tvTakeOffDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const-string v0, "\u8bf7\u9009\u62e9\u9000\u4e58\u65e5\u671f"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 1127
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->val$tvTakeOffDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showSelectDateDialog(Landroid/widget/TextView;)V

    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$600(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryTakeOffPermission(ZLjava/lang/String;)V

    return-void
.end method
