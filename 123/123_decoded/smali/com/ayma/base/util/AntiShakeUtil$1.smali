.class Lcom/ayma/base/util/AntiShakeUtil$1;
.super Ljava/lang/Object;
.source "AntiShakeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/base/util/AntiShakeUtil;->antiShakeAutoRemove(Ljava/lang/Object;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/base/util/AntiShakeUtil;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ayma/base/util/AntiShakeUtil;Ljava/lang/Object;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ayma/base/util/AntiShakeUtil$1;->this$0:Lcom/ayma/base/util/AntiShakeUtil;

    iput-object p2, p0, Lcom/ayma/base/util/AntiShakeUtil$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/ayma/base/util/AntiShakeUtil$1;->this$0:Lcom/ayma/base/util/AntiShakeUtil;

    invoke-static {v0}, Lcom/ayma/base/util/AntiShakeUtil;->access$000(Lcom/ayma/base/util/AntiShakeUtil;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/base/util/AntiShakeUtil$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
