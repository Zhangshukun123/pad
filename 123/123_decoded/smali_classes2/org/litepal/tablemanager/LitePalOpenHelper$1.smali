.class Lorg/litepal/tablemanager/LitePalOpenHelper$1;
.super Ljava/lang/Object;
.source "LitePalOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/tablemanager/LitePalOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/tablemanager/LitePalOpenHelper;

.field final synthetic val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;


# direct methods
.method constructor <init>(Lorg/litepal/tablemanager/LitePalOpenHelper;Lorg/litepal/tablemanager/callback/DatabaseListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$1;->this$0:Lorg/litepal/tablemanager/LitePalOpenHelper;

    iput-object p2, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$1;->val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/litepal/tablemanager/LitePalOpenHelper$1;->val$listener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    invoke-interface {v0}, Lorg/litepal/tablemanager/callback/DatabaseListener;->onCreate()V

    return-void
.end method
