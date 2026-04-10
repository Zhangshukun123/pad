.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;
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

    .line 1141
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;->val$tvTakeOffDate:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1144
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;->val$tvTakeOffDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showSelectDateDialog(Landroid/widget/TextView;)V

    return-void
.end method
