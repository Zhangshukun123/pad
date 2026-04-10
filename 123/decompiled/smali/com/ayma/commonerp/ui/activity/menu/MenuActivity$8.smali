.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->editQuickHandoverHandoverData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
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

    .line 682
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 685
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;)V

    const-string v1, ""

    const-string v2, "\u5373\u5c06\u8df3\u8fc7\u4ea4\u63a5\u5355\u751f\u6210\u64cd\u4f5c\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u7ee7\u7eed"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
