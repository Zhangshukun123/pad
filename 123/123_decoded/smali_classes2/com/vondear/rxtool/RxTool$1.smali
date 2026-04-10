.class final Lcom/vondear/rxtool/RxTool$1;
.super Ljava/lang/Object;
.source "RxTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxTool;->delayToDo(JLcom/vondear/rxtool/interfaces/OnSimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onSimpleListener:Lcom/vondear/rxtool/interfaces/OnSimpleListener;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/interfaces/OnSimpleListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/vondear/rxtool/RxTool$1;->val$onSimpleListener:Lcom/vondear/rxtool/interfaces/OnSimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/vondear/rxtool/RxTool$1;->val$onSimpleListener:Lcom/vondear/rxtool/interfaces/OnSimpleListener;

    invoke-interface {v0}, Lcom/vondear/rxtool/interfaces/OnSimpleListener;->doSomething()V

    return-void
.end method
