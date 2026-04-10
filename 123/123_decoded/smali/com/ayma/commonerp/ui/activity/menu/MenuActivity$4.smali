.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;
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

    .line 432
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$100(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showSelectDateDialog(Landroid/widget/TextView;)V

    return-void
.end method
