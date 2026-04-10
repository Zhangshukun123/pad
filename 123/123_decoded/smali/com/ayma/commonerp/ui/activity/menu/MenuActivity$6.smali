.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->editQuickHandoverAddData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

.field final synthetic val$addReceipt:Ljava/util/List;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$storeMap:Ljava/util/Map;

.field final synthetic val$storeTypeCode:Ljava/lang/String;

.field final synthetic val$storeTypeName:Ljava/lang/String;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$typeMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/lang/String;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$storeTypeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$outDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$storeMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$storeTypeCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$typeMap:Ljava/util/Map;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$typeList:Ljava/util/List;

    iput-object p9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$addReceipt:Ljava/util/List;

    iput-object p10, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 547
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;->val$storeTypeName:Ljava/lang/String;

    aput-object v2, p1, v1

    const-string v1, "\u5373\u5c06\u8df3\u8fc7%s\u8981\u6599\u5355\u751f\u6210\u64cd\u4f5c\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    .line 551
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;)V

    const-string v1, ""

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u7ee7\u7eed"

    .line 550
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
