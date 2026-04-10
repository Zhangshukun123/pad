.class public Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "ResponseConverterFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->gson:Lcom/google/gson/Gson;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create()Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;
    .locals 1

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;
    .locals 1

    .line 19
    new-instance v0, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance p2, Lcom/ayma/commonerp/net/converter/GsonResponseBodyConverter;

    iget-object p3, p0, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lcom/ayma/commonerp/net/converter/GsonResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 31
    new-instance p2, Lcom/ayma/commonerp/net/converter/GsonResponseBodyConverter;

    iget-object p3, p0, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lcom/ayma/commonerp/net/converter/GsonResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
