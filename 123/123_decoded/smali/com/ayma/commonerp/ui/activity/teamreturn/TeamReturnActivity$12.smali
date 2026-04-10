.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->onBtnCommitClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 713
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "goodsIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSelectDateDialog(Landroid/widget/TextView;Z)V

    return-void
.end method
