.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 573
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$300(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$outDate:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$storeMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v4, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$storeTypeName:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v5, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$storeTypeCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v6, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$typeMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v7, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$typeList:Ljava/util/List;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v8, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$addReceipt:Ljava/util/List;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v9, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$data:Ljava/util/List;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    iget-object v10, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;->val$tempList:Ljava/util/List;

    invoke-virtual/range {v0 .. v10}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->commitAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
