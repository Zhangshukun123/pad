.class Lcom/ayma/commonerp/base/BaseModel$2;
.super Landroid/os/Handler;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Landroid/os/Looper;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$2;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4ce

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4cf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$2;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseModel;->access$000(Lcom/ayma/commonerp/base/BaseModel;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$2;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseModel;->access$000(Lcom/ayma/commonerp/base/BaseModel;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$2;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseModel;->access$000(Lcom/ayma/commonerp/base/BaseModel;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$2;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseModel;->access$000(Lcom/ayma/commonerp/base/BaseModel;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    .line 156
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
