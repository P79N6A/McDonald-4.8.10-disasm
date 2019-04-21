.class public final Lcom/mcdonalds/sdk/services/network/GsonRequest;
.super Lcom/android/volley/Request;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEBUG_ERROR_FORMAT:Ljava/lang/String; = "Network Error:\nStatus Code: %s\nCause: %s"

.field private static final ERROR_INVALID_TOKEN:I = -0x40d

.field private static final ERROR_LANGUAGE_NOT_SUPPORTED:I = -0x406

.field private static final ERROR_WECHAT_TOKEN_EXPIRE:I = -0x839

.field public static final HEADER_PARAM_TOKEN:Ljava/lang/String; = "Token"

.field private static final LANGUAGE_NAME_FORMAT:Ljava/lang/String; = "\"languageName\":\"%s\""

.field private static final LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final PROTOCOL_CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGson:Lcom/google/gson/Gson;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TV;TE;>;"
        }
    .end annotation
.end field

.field private mSkipListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "\"languageName\":\".*?\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TV;TE;>;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    .local p3, "provider":Lcom/mcdonalds/sdk/services/network/RequestProvider;, "Lcom/mcdonalds/sdk/services/network/RequestProvider<TV;TE;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<TV;>;"
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 83
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 85
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 87
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 88
    .local v2, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getCustomTypeAdapters()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "customTypeAdapters":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;>;"
    if-eqz v1, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    .line 92
    .local v0, "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 94
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 95
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v5

    .line 94
    invoke-virtual {v2, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 98
    :cond_1
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 101
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v5

    .line 100
    invoke-virtual {v2, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    goto :goto_0

    .line 106
    .end local v0    # "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mGson:Lcom/google/gson/Gson;

    .line 107
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getResponseClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mClazz:Ljava/lang/Class;

    .line 108
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    :goto_1
    iput-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mHeaders:Ljava/util/Map;

    .line 114
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    if-ne v3, v4, :cond_3

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mHeaders:Ljava/util/Map;

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_3
    return-void

    .line 110
    :cond_4
    invoke-interface {p3}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/GsonRequest;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    return-object v0
.end method

.method private checkForErrors(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->getResultCode(Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "resultCode":I
    const/16 v1, -0x406

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->retryWithDefaultLanguage()V

    .line 245
    :cond_0
    return-void
.end method

.method private fromProvider(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TV;TE;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    new-instance v0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;-><init>(Lcom/mcdonalds/sdk/services/network/GsonRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    const-string v1, "not specified"

    .line 195
    .local v1, "status":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 196
    .local v0, "response":Lcom/android/volley/NetworkResponse;
    if-eqz v0, :cond_0

    .line 197
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 198
    iget v2, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 201
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

.method private static getResultCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "response"    # Ljava/lang/Object;

    .prologue
    .line 249
    instance-of v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    if-eqz v0, :cond_0

    .line 250
    check-cast p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .end local p0    # "response":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v0

    .line 253
    :goto_0
    return v0

    .restart local p0    # "response":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isLogEnabled()Z
    .locals 2

    .prologue
    .line 235
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "log.logsToConsole"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "log.network"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    const/4 v5, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "exception":Lcom/mcdonalds/sdk/AsyncException;
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 161
    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v3, v3, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_0

    .line 162
    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v2

    .line 164
    .local v2, "parsed":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TV;>;"
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    invoke-static {v3, v5}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->exceptionFromResults(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->reportAPIInvalidError(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 169
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v3, v5, v5, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 176
    .end local v2    # "parsed":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TV;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 177
    const-string v3, ""

    const-string v4, "DEV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->getDebugMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "message":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v4, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v5, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 189
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void

    .line 179
    :cond_2
    instance-of v3, p1, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mContext:Landroid/content/Context;

    sget v4, Lcom/mcdonalds/sdk/R$string;->error_no_network_connection:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mContext:Landroid/content/Context;

    sget v4, Lcom/mcdonalds/sdk/R$string;->offline_warning:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private retryWithDefaultLanguage()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    const/4 v6, 0x1

    .line 258
    iput-boolean v6, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mSkipListener:Z

    .line 260
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-interface {v5}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "originalBody":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalization()Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    move-result-object v5

    .line 262
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "languageName":Ljava/lang/String;
    sget-object v5, Lcom/mcdonalds/sdk/services/network/GsonRequest;->LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 265
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const-string v5, "\"languageName\":\"%s\""

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "newLanguageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "newBody":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->fromProvider(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 269
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 206
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 208
    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    .local p1, "response":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mSkipListener:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 215
    :cond_0
    return-void
.end method

.method public getBody()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    const/4 v1, 0x0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-interface {v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 225
    :goto_0
    return-object v1

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 222
    invoke-interface {v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    const-string v0, "application/json"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mHeaders:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TV;TE;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->isLogEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    new-instance v3, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 132
    invoke-static {v8}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 134
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 138
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v6, "reader":Ljava/io/InputStreamReader;
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mGson:Lcom/google/gson/Gson;

    iget-object v8, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest;->mClazz:Ljava/lang/Class;

    instance-of v9, v7, Lcom/google/gson/Gson;

    if-nez v9, :cond_1

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "data":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v7

    .line 141
    invoke-static {v1, v7}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v5

    .line 144
    .local v5, "parsed":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TV;>;"
    iget-object v7, v5, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->checkForErrors(Ljava/lang/Object;)V

    .line 152
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":Ljava/lang/Object;, "TV;"
    .end local v5    # "parsed":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TV;>;"
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    return-object v5

    .line 139
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    check-cast v7, Lcom/google/gson/Gson;

    invoke-static {v7, v6, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 147
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v5

    goto :goto_1

    .line 149
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v5

    goto :goto_1

    .line 151
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v4

    .line 152
    .local v4, "npe":Ljava/lang/NullPointerException;
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7, v4}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v5

    goto :goto_1
.end method
