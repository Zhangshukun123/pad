.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;
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

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

.field final synthetic val$warehouseData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$outDate:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->val$warehouseData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 703
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;)V

    const-string v1, ""

    const-string v2, "\u5373\u5c06\u63d0\u4ea4\u5f53\u524d\u4ea4\u63a5\u6570\u636e\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u7ee7\u7eed"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
