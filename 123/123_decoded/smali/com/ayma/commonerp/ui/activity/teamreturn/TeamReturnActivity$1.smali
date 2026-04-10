.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 151
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showToast(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->access$002(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Z)Z

    const/4 p1, 0x0

    return p1
.end method
