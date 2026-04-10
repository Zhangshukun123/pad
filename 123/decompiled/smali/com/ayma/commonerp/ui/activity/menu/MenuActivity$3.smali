.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$000(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$000(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 429
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$002(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
