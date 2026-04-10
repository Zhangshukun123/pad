.class public Lcom/ayma/commonerp/bean/BaseDataBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "BaseDataBean.java"


# instance fields
.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private typeCode2:Ljava/lang/String;

.field private typeName2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->item:Ljava/util/List;

    return-object v0
.end method

.method public getTypeCode2()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->typeCode2:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName2()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->typeName2:Ljava/lang/String;

    return-object v0
.end method

.method public setItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BaseDataItem;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->item:Ljava/util/List;

    return-void
.end method

.method public setTypeCode2(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->typeCode2:Ljava/lang/String;

    return-void
.end method

.method public setTypeName2(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataBean;->typeName2:Ljava/lang/String;

    return-void
.end method
