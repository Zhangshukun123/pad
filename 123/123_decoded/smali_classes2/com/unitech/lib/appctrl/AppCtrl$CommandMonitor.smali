.class Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;
.super Ljava/lang/Thread;
.source "AppCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/lib/appctrl/AppCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandMonitor"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field errorReader:Ljava/io/BufferedReader;

.field private exitValue:Ljava/lang/Integer;

.field private feedback:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field private process:Ljava/lang/Process;

.field reader:Ljava/io/BufferedReader;

.field sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/unitech/lib/appctrl/AppCtrl;


# direct methods
.method public constructor <init>(Lcom/unitech/lib/appctrl/AppCtrl;Ljava/lang/Process;Ljava/lang/String;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->this$0:Lcom/unitech/lib/appctrl/AppCtrl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 1068
    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    .line 1069
    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->feedback:Ljava/lang/String;

    .line 1070
    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->exitValue:Ljava/lang/Integer;

    .line 1072
    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    .line 1073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    .line 1076
    iput-object p2, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->process:Ljava/lang/Process;

    .line 1077
    iput-object p3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    .line 1078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    return-void
.end method

.method private closeStream()V
    .locals 1

    .line 1091
    :try_start_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->errorReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->errorReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1099
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private shellExecute()V
    .locals 4

    const-string v0, "appctrl"

    const-string v1, "shell execute"

    .line 1104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->reader:Ljava/io/BufferedReader;

    .line 1108
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->errorReader:Ljava/io/BufferedReader;

    .line 1109
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    .line 1110
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->command:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1112
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const-string v1, "Send Command"

    .line 1113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    const-string v2, "exit\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1116
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const-string v1, "after exit"

    .line 1117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_0
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "\n"

    if-eqz v1, :cond_1

    .line 1119
    :try_start_1
    iget-object v3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedback of reader = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_1
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->errorReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1124
    iget-object v3, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget-object v1, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1127
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feedback of errorReader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->exitValue:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1135
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1137
    :goto_2
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->closeStream()V

    .line 1139
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->feedback:Ljava/lang/String;

    return-void

    .line 1137
    :goto_3
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->closeStream()V

    throw v0
.end method


# virtual methods
.method public getExitValue()Ljava/lang/Integer;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->exitValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFeedBack()Ljava/lang/String;
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->feedback:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    .line 1145
    invoke-direct {p0}, Lcom/unitech/lib/appctrl/AppCtrl$CommandMonitor;->shellExecute()V

    return-void
.end method
