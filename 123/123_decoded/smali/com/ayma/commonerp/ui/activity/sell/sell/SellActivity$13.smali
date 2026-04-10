.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showInputPayCodeDialog(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1357
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 1358
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 1359
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 1360
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 1361
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 1362
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 1363
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1364
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const/16 v1, 0x3e7

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
