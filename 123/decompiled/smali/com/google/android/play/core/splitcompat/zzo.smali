.class final Lcom/google/android/play/core/splitcompat/zzo;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zzo;->zza:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzo;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/zzx;->zzc(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/zzx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/zzc;->zzg(Z)V

    return-void
.end method
