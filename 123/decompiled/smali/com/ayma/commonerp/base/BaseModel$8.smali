.class Lcom/ayma/commonerp/base/BaseModel$8;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$8;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseModel$8;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$8;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
