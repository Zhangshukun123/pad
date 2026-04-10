.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$8;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->saveSimCardInfoToDatabase(Lcom/ayma/commonerp/bean/SimCardInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$info:Lcom/ayma/commonerp/bean/SimCardInfo;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/commonerp/bean/SimCardInfo;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$8;->val$info:Lcom/ayma/commonerp/bean/SimCardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$8;->val$info:Lcom/ayma/commonerp/bean/SimCardInfo;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SimCardInfo;->save()Z

    return-void
.end method
