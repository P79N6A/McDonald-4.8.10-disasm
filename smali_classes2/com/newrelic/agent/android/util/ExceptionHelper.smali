.class public Lcom/newrelic/agent/android/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/type/HarvestErrorCodes;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionToErrorCode(Ljava/lang/Exception;)I
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 32
    const/4 v0, -0x1

    .line 34
    .local v0, "errorCode":I
    sget-object v1, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExceptionHelper: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to error code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 36
    instance-of v1, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_1

    .line 37
    const/16 v0, -0x3f3

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    .line 39
    const/16 v0, -0x3ee

    goto :goto_0

    .line 40
    :cond_2
    instance-of v1, p0, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_3

    .line 41
    const/16 v0, -0x3eb

    goto :goto_0

    .line 42
    :cond_3
    instance-of v1, p0, Ljava/net/PortUnreachableException;

    if-eqz v1, :cond_4

    .line 43
    const/16 v0, -0x3eb

    goto :goto_0

    .line 44
    :cond_4
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_5

    .line 45
    const/16 v0, -0x3e9

    goto :goto_0

    .line 46
    :cond_5
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_6

    .line 47
    const/16 v0, -0x3e9

    goto :goto_0

    .line 48
    :cond_6
    instance-of v1, p0, Ljava/net/ConnectException;

    if-eqz v1, :cond_7

    .line 50
    const/16 v0, -0x3ec

    goto :goto_0

    .line 51
    :cond_7
    instance-of v1, p0, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_8

    .line 52
    const/16 v0, -0x3e8

    goto :goto_0

    .line 53
    :cond_8
    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_9

    .line 54
    const/16 v0, -0x4b0

    goto :goto_0

    .line 55
    :cond_9
    instance-of v1, p0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_a

    .line 56
    const/16 v0, -0x44c

    goto :goto_0

    .line 57
    :cond_a
    instance-of v1, p0, Ljava/io/EOFException;

    if-eqz v1, :cond_b

    .line 58
    const/16 v0, -0x3fd

    goto :goto_0

    .line 59
    :cond_b
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_c

    .line 60
    const-string v1, "IOException"

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_c
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "RuntimeException"

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 7
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "baseExceptionKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 68
    new-instance v0, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/Exception;)V

    .line 71
    .local v0, "agentHealthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v6

    .line 72
    .local v1, "topTraceElement":Ljava/lang/StackTraceElement;
    sget-object v2, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "ExceptionHelper: %s:%s(%s:%s) %s[%s] %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceClass()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 74
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p1, v4, v5

    const/4 v5, 0x5

    .line 75
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getExceptionClass()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 76
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 77
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;Ljava/lang/String;)V

    .line 78
    return-void
.end method
