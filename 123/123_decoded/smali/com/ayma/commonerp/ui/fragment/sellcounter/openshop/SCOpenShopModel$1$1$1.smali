.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1$1;
.super Ljava/lang/Object;
.source "SCOpenShopModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1$1;->this$2:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
