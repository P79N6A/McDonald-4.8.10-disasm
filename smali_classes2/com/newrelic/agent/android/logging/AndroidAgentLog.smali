.class public Lcom/newrelic/agent/android/logging/AndroidAgentLog;
.super Ljava/lang/Object;
.source "AndroidAgentLog.java"

# interfaces
.implements Lcom/newrelic/agent/android/logging/AgentLog;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.newrelic.android"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    return-void
.end method


# virtual methods
.method public audit(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 14
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 19
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 39
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 44
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 29
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 52
    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 53
    iput p1, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Log level is not between ERROR and AUDIT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 24
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 34
    const-string v0, "com.newrelic.android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method
