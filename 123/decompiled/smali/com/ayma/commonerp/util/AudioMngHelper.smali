.class public Lcom/ayma/commonerp/util/AudioMngHelper;
.super Ljava/lang/Object;
.source "AudioMngHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/util/AudioMngHelper$FLAG;,
        Lcom/ayma/commonerp/util/AudioMngHelper$TYPE;
    }
.end annotation


# static fields
.field public static final FLAG_NOTHING:I = 0x0

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_MUSIC:I = 0x3

.field public static final TYPE_RING:I = 0x2


# instance fields
.field private NOW_AUDIO_TYPE:I

.field private NOW_FLAG:I

.field private final OpenLog:Z

.field private final TAG:Ljava/lang/String;

.field private VOICE_STEP_100:I

.field private audioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioMngHelper"

    .line 12
    iput-object v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->OpenLog:Z

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->VOICE_STEP_100:I

    const-string v0, "audio"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public addVoice100()I
    .locals 4

    .line 123
    iget v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->VOICE_STEP_100:I

    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->get100CurrentVolume()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemMaxVolume()I

    move-result v1

    mul-int v0, v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    iget v3, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 127
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->get100CurrentVolume()I

    move-result v0

    return v0
.end method

.method public addVoiceSystem()Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    iget v2, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-object p0
.end method

.method public get100CurrentVolume()I
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemCurrentVolume()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemMaxVolume()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getSystemCurrentVolume()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getSystemMaxVolume()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public setAudioType(I)Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 0

    .line 80
    iput p1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    return-object p0
.end method

.method public setFlag(I)Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 0

    .line 90
    iput p1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    return-object p0
.end method

.method public setVoice100(I)I
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemMaxVolume()I

    move-result v0

    mul-int p1, p1, v0

    int-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x0

    .line 111
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x64

    .line 112
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 113
    iget-object v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 114
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->get100CurrentVolume()I

    move-result p1

    return p1
.end method

.method public setVoiceStep100(I)Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 0

    .line 70
    iput p1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->VOICE_STEP_100:I

    return-object p0
.end method

.method public subVoice100()I
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->get100CurrentVolume()I

    move-result v0

    iget v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->VOICE_STEP_100:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->getSystemMaxVolume()I

    move-result v1

    mul-int v0, v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    iget v3, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {p0}, Lcom/ayma/commonerp/util/AudioMngHelper;->get100CurrentVolume()I

    move-result v0

    return v0
.end method

.method public subVoiceSystem()Lcom/ayma/commonerp/util/AudioMngHelper;
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_AUDIO_TYPE:I

    iget v2, p0, Lcom/ayma/commonerp/util/AudioMngHelper;->NOW_FLAG:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-object p0
.end method
