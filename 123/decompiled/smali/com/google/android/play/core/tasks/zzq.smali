.class final Lcom/google/android/play/core/tasks/zzq;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/tasks/zzp;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/play/core/tasks/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/zzm<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(ILcom/google/android/play/core/tasks/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/play/core/tasks/zzm<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzq;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/play/core/tasks/zzq;->zzb:I

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzq;->zzc:Lcom/google/android/play/core/tasks/zzm;

    return-void
.end method

.method private final zza()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzd:I

    iget v1, p0, Lcom/google/android/play/core/tasks/zzq;->zze:I

    iget v2, p0, Lcom/google/android/play/core/tasks/zzq;->zzb:I

    add-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzf:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzc:Lcom/google/android/play/core/tasks/zzm;

    new-instance v3, Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " underlying tasks failed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/tasks/zzq;->zzf:Ljava/lang/Exception;

    invoke-direct {v3, v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v3}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzc:Lcom/google/android/play/core/tasks/zzm;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzm;->zzb(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/play/core/tasks/zzq;->zze:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/play/core/tasks/zzq;->zze:I

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzq;->zzf:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzq;->zza()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzq;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/tasks/zzq;->zzd:I

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzq;->zza()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
