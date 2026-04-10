.class Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;
.super Ljava/lang/Object;
.source "UnitechDeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;Ljava/lang/Exception;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;->this$0:Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;

    iput-object p2, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;->this$0:Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;

    iget-object v0, v0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$callback:Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;

    iget-object v1, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;->fail(Ljava/lang/Throwable;)V

    return-void
.end method
