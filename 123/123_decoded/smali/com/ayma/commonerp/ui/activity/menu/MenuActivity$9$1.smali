.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 712
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$500(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$outDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$warehouseData:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->generateHandoverReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
