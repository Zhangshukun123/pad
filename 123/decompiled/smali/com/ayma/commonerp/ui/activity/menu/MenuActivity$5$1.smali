.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;

.field final synthetic val$dateText:Ljava/lang/CharSequence;

.field final synthetic val$trainText:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->val$trainText:Landroid/text/Editable;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->val$dateText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 464
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->hideSoftKeyboard()V

    .line 465
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->val$trainText:Landroid/text/Editable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;->val$dateText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryTrainForQuickHandover(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
