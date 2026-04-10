.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 694
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->skipHandover()V

    .line 695
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$400(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
