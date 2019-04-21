.class public Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;
.super Ljava/lang/Object;
.source "ResponseErrorListenerWrapper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field private static final DEBUG_ERROR_FORMAT:Ljava/lang/String; = "Network Error:\nStatus Code: %s\nCause: %s"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 34
    return-void
.end method

.method private getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    const-string v1, "not specified"

    .line 58
    .local v1, "status":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 59
    .local v0, "response":Lcom/android/volley/NetworkResponse;
    if-eqz v0, :cond_0

    .line 60
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 61
    iget v2, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    const-string v2, "Network Error:\nStatus Code: %s\nCause: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private trimMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 71
    .local v2, "trimmedString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    .local v1, "obj":Lorg/json/JSONObject;
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 78
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 41
    const-string v1, ""

    const-string v2, "DEV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v2, v0}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v3, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 52
    :cond_0
    return-void

    .line 43
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mContext:Landroid/content/Context;

    sget v2, Lcom/mcdonalds/sdk/R$string;->error_no_network_connection:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/ResponseErrorListenerWrapper;->mContext:Landroid/content/Context;

    sget v2, Lcom/mcdonalds/sdk/R$string;->offline_warning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method
