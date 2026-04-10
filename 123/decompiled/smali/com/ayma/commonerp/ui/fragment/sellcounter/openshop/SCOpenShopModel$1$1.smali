.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;
.super Ljava/lang/Object;
.source "SCOpenShopModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    new-instance v0, Lcom/ayma/commonerp/bean/OpenShopBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/OpenShopBean;-><init>()V

    .line 57
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setOperateDate(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$trainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setOpenShopTrainName(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$trainId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setOpenShopTrainId(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setUserCode(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setOutDay(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/OpenShopBean;->setTrainName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OpenShopBean;->save()Z

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
