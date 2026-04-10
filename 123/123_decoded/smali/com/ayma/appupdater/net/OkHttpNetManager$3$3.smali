.class Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;
.super Ljava/lang/Object;
.source "OkHttpNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/appupdater/net/OkHttpNetManager$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

.field final synthetic val$finalCurLen:J

.field final synthetic val$totalLen:J


# direct methods
.method constructor <init>(Lcom/ayma/appupdater/net/OkHttpNetManager$3;JJ)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iput-wide p2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->val$finalCurLen:J

    iput-wide p4, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->val$totalLen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->this$1:Lcom/ayma/appupdater/net/OkHttpNetManager$3;

    iget-object v0, v0, Lcom/ayma/appupdater/net/OkHttpNetManager$3;->val$callBck:Lcom/ayma/appupdater/net/INetDownloadCallBack;

    iget-wide v1, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->val$finalCurLen:J

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-wide v2, p0, Lcom/ayma/appupdater/net/OkHttpNetManager$3$3;->val$totalLen:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/ayma/appupdater/net/INetDownloadCallBack;->progress(I)V

    return-void
.end method
