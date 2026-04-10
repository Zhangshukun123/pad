.class public Lcom/vondear/rxtool/model/ModelSpider;
.super Ljava/lang/Object;
.source "ModelSpider.java"


# instance fields
.field private spiderLevel:F

.field private spiderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderName:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderLevel:F

    return-void
.end method


# virtual methods
.method public getSpiderLevel()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderLevel:F

    return v0
.end method

.method public getSpiderName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderName:Ljava/lang/String;

    return-object v0
.end method

.method public setSpiderLevel(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderLevel:F

    return-void
.end method

.method public setSpiderName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/vondear/rxtool/model/ModelSpider;->spiderName:Ljava/lang/String;

    return-void
.end method
