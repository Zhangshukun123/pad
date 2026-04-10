.class Lcom/ayma/commonerp/litepal/LitepalUse$4;
.super Ljava/lang/Object;
.source "LitepalUse.java"

# interfaces
.implements Lorg/litepal/crud/callback/UpdateOrDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/litepal/LitepalUse;->clearData(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$4;->this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

    iput-object p2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$4;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 0

    .line 1607
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$4;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
