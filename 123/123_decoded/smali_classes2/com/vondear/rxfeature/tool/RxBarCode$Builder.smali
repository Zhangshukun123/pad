.class public Lcom/vondear/rxfeature/tool/RxBarCode$Builder;
.super Ljava/lang/Object;
.source "RxBarCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/tool/RxBarCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:I

.field private codeColor:I

.field private codeHeight:I

.field private codeWidth:I

.field private content:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->backgroundColor:I

    const/high16 v0, -0x1000000

    .line 34
    iput v0, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeColor:I

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeWidth:I

    const/16 v0, 0x12c

    .line 38
    iput v0, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeHeight:I

    .line 63
    iput-object p1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->content:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backColor(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;
    .locals 0

    .line 43
    iput p1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->backgroundColor:I

    return-object p0
.end method

.method public codeColor(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;
    .locals 0

    .line 48
    iput p1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeColor:I

    return-object p0
.end method

.method public codeHeight(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;
    .locals 0

    .line 58
    iput p1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeHeight:I

    return-object p0
.end method

.method public codeWidth(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;
    .locals 0

    .line 53
    iput p1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeWidth:I

    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->content:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeWidth:I

    iget v2, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeHeight:I

    iget v3, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->backgroundColor:I

    iget v4, p0, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeColor:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vondear/rxfeature/tool/RxBarCode;->createBarCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method
