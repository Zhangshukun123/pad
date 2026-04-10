.class public Lcom/unitech/api/keymap/BroadcastKeyUpEntity$UpParam;
.super Ljava/lang/Object;
.source "BroadcastKeyUpEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/keymap/BroadcastKeyUpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpParam"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

.field public upKey:Ljava/lang/String;

.field public upValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unitech/api/keymap/BroadcastKeyUpEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/unitech/api/keymap/BroadcastKeyUpEntity$UpParam;->this$0:Lcom/unitech/api/keymap/BroadcastKeyUpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
