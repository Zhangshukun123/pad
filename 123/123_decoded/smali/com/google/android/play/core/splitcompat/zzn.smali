.class final Lcom/google/android/play/core/splitcompat/zzn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/zzq;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/splitcompat/SplitCompat;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/SplitCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zzn;->zza:Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzn;->zza:Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->zzb(Lcom/google/android/play/core/splitcompat/SplitCompat;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
