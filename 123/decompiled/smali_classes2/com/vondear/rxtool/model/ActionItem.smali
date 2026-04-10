.class public Lcom/vondear/rxtool/model/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"


# instance fields
.field public mResourcesId:I

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vondear/rxtool/model/ActionItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p2, p0, Lcom/vondear/rxtool/model/ActionItem;->mResourcesId:I

    .line 17
    iput-object p1, p0, Lcom/vondear/rxtool/model/ActionItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
