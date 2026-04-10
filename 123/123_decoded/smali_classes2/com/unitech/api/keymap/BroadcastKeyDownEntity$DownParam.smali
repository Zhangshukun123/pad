.class public Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;
.super Ljava/lang/Object;
.source "BroadcastKeyDownEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/api/keymap/BroadcastKeyDownEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownParam"
.end annotation


# instance fields
.field public downKey:Ljava/lang/String;

.field public downValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;


# direct methods
.method public constructor <init>(Lcom/unitech/api/keymap/BroadcastKeyDownEntity;)V
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
    iput-object p1, p0, Lcom/unitech/api/keymap/BroadcastKeyDownEntity$DownParam;->this$0:Lcom/unitech/api/keymap/BroadcastKeyDownEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
