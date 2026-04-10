.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;
.super Ljava/lang/Object;
.source "UnuploadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->deleteOrderByNo(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$orderNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "orderNo=?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$orderNo:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    const-string v3, "\u5220\u9664\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->access$000(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-static {v1, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->access$100(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
