.class Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;
.super Ljava/lang/Object;
.source "SettingModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->access$300(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
