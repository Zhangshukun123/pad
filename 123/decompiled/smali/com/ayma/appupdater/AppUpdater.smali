.class public Lcom/ayma/appupdater/AppUpdater;
.super Ljava/lang/Object;
.source "AppUpdater.java"


# static fields
.field private static instance:Lcom/ayma/appupdater/AppUpdater;


# instance fields
.field private netManager:Lcom/ayma/appupdater/net/INetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/ayma/appupdater/AppUpdater;

    invoke-direct {v0}, Lcom/ayma/appupdater/AppUpdater;-><init>()V

    sput-object v0, Lcom/ayma/appupdater/AppUpdater;->instance:Lcom/ayma/appupdater/AppUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/ayma/appupdater/net/OkHttpNetManager;

    invoke-direct {v0}, Lcom/ayma/appupdater/net/OkHttpNetManager;-><init>()V

    iput-object v0, p0, Lcom/ayma/appupdater/AppUpdater;->netManager:Lcom/ayma/appupdater/net/INetManager;

    return-void
.end method

.method public static getInstance()Lcom/ayma/appupdater/AppUpdater;
    .locals 1

    .line 30
    sget-object v0, Lcom/ayma/appupdater/AppUpdater;->instance:Lcom/ayma/appupdater/AppUpdater;

    return-object v0
.end method


# virtual methods
.method public getNetManager()Lcom/ayma/appupdater/net/INetManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/appupdater/AppUpdater;->netManager:Lcom/ayma/appupdater/net/INetManager;

    return-object v0
.end method

.method public setNetManager(Lcom/ayma/appupdater/net/INetManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/appupdater/AppUpdater;->netManager:Lcom/ayma/appupdater/net/INetManager;

    return-void
.end method
