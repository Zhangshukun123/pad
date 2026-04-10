.class Lcom/ayma/commonerp/util/DownloadUtil$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$downloadListener:Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/util/DownloadUtil$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/ayma/commonerp/util/DownloadUtil$1;->val$downloadListener:Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/ayma/commonerp/util/DownloadUtil$1;->val$downloadListener:Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;

    const-string p2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/ayma/commonerp/util/DownloadUtil$1;->val$path:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/util/DownloadUtil$1;->val$downloadListener:Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;

    invoke-static {p1, p2, v0}, Lcom/ayma/commonerp/util/DownloadUtil;->access$000(Ljava/lang/String;Lretrofit2/Response;Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;)V

    return-void
.end method
