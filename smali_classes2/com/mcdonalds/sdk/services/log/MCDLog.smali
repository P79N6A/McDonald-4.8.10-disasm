.class public Lcom/mcdonalds/sdk/services/log/MCDLog;
.super Ljava/lang/Object;
.source "MCDLog.java"


# static fields
.field private static final LOG_CONFIG_PREFIX:Ljava/lang/String; = "log"

.field private static final LOG_TAG_DEBUG:Ljava/lang/String; = "debug"

.field private static final LOG_TAG_ERROR:Ljava/lang/String; = "error"

.field private static final LOG_TAG_FATAL:Ljava/lang/String; = "FATAL"

.field private static final LOG_TAG_FORCE:Ljava/lang/String; = "LOG"

.field private static final LOG_TAG_INFO:Ljava/lang/String; = "info"

.field private static final LOG_TAG_TEMP:Ljava/lang/String; = "TEMP"

.field private static final LOG_TAG_WARNING:Ljava/lang/String; = "warning"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static custom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x3

    const-string v1, "debug"

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public static fatal(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x6

    const-string v1, "FATAL"

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static force(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x3

    const-string v1, "LOG"

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x4

    const-string v1, "info"

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 109
    .local v0, "displayTag":Z
    if-nez v0, :cond_0

    const-string v1, "LOG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FATAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    if-eqz p2, :cond_1

    .line 112
    invoke-static {p0, p1, p2}, Lcom/mcdonalds/sdk/services/log/SafeLog;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method

.method public static temp(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "TEMP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x5

    const-string v1, "warning"

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
