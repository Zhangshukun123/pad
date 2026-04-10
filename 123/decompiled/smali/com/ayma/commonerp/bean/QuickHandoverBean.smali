.class public Lcom/ayma/commonerp/bean/QuickHandoverBean;
.super Ljava/lang/Object;
.source "QuickHandoverBean.java"


# static fields
.field public static final QUICK_HANDOVER_CONTINUE:I = 0x4

.field public static final QUICK_HANDOVER_ERROR:I = 0x2

.field public static final QUICK_HANDOVER_OK:I = 0x0

.field public static final QUICK_HANDOVER_UNKNOWN:I = 0x3

.field public static final QUICK_HANDOVER_WARNING:I = 0x1


# instance fields
.field private message:Ljava/lang/String;

.field private statue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QuickHandoverBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/ayma/commonerp/bean/QuickHandoverBean;->statue:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QuickHandoverBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatue(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/ayma/commonerp/bean/QuickHandoverBean;->statue:I

    return-void
.end method
