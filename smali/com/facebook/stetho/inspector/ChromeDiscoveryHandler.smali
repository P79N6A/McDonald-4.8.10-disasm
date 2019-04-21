.class public Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;
.super Lcom/facebook/stetho/server/SecureHttpRequestHandler;
.source "ChromeDiscoveryHandler.java"


# static fields
.field private static final PAGE_ID:Ljava/lang/String; = "1"

.field private static final PATH_ACTIVATE:Ljava/lang/String; = "/json/activate/1"

.field private static final PATH_PAGE_LIST:Ljava/lang/String; = "/json"

.field private static final PATH_VERSION:Ljava/lang/String; = "/json/version"

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "1.1"

.field private static final USER_AGENT:Ljava/lang/String; = "Stetho"

.field private static final WEBKIT_REV:Ljava/lang/String; = "@188492"

.field private static final WEBKIT_VERSION:Ljava/lang/String; = "537.36 (@188492)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInspectorPath:Ljava/lang/String;

.field private mPageListResponse:Lorg/apache/http/entity/StringEntity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVersionResponse:Lorg/apache/http/entity/StringEntity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inspectorPath"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/stetho/server/SecureHttpRequestHandler;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mInspectorPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private static createStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "responseJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v0, p0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method private getAppLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getAppLabelAndVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 190
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 191
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :try_start_0
    iget-object v4, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 194
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 195
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleActivate(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "text/plain"

    const-string v1, "Target activation ignored"

    invoke-static {v0, v1}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->createStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->setSuccessfulResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V

    .line 170
    return-void
.end method

.method private handlePageList(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v3, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mPageListResponse:Lorg/apache/http/entity/StringEntity;

    if-nez v3, :cond_0

    .line 127
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v2, "reply":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "page":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    const-string v4, "app"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v3, "title"

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->makeTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v3, "id"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v3, "description"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v3, "webSocketDebuggerUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ws://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mInspectorPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "http"

    .line 136
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "chrome-devtools-frontend.appspot.com"

    .line 137
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "serve_rev"

    .line 138
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "@188492"

    .line 139
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "devtools.html"

    .line 140
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "ws"

    iget-object v5, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mInspectorPath:Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, "chromeFrontendUrl":Landroid/net/Uri;
    const-string v3, "devtoolsFrontendUrl"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    const-string v4, "application/json"

    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "reply":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v4, v3}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->createStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mPageListResponse:Lorg/apache/http/entity/StringEntity;

    .line 148
    .end local v0    # "chromeFrontendUrl":Landroid/net/Uri;
    .end local v1    # "page":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mPageListResponse:Lorg/apache/http/entity/StringEntity;

    invoke-static {p1, v3}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->setSuccessfulResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V

    .line 149
    return-void

    .line 146
    .restart local v0    # "chromeFrontendUrl":Landroid/net/Uri;
    .restart local v1    # "page":Lorg/json/JSONObject;
    .restart local v2    # "reply":Lorg/json/JSONArray;
    :cond_1
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "reply":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private handleVersion(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mVersionResponse:Lorg/apache/http/entity/StringEntity;

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v0, "reply":Lorg/json/JSONObject;
    const-string v1, "WebKit-Version"

    const-string v2, "537.36 (@188492)"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "User-Agent"

    const-string v2, "Stetho"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "Protocol-Version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v1, "Browser"

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->getAppLabelAndVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "Android-Package"

    iget-object v2, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v2, "application/json"

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "reply":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v2, v1}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->createStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mVersionResponse:Lorg/apache/http/entity/StringEntity;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->mVersionResponse:Lorg/apache/http/entity/StringEntity;

    invoke-static {p1, v1}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->setSuccessfulResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V

    .line 122
    return-void

    .line 119
    .restart local v0    # "reply":Lorg/json/JSONObject;
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "reply":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private makeTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    const-string v4, " (powered by Stetho)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Lcom/facebook/stetho/common/ProcessUtil;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "processName":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 159
    .local v1, "colonIndex":I
    if-ltz v1, :cond_0

    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "nonDefaultProcessName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v2    # "nonDefaultProcessName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static setSuccessfulResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 182
    const/16 v0, 0xc8

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 183
    const-string v0, "OK"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 184
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected handleSecured(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    const-string v3, "/json/version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-direct {p0, p2}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->handleVersion(Lorg/apache/http/HttpResponse;)V

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v3, "/json"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-direct {p0, p2}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->handlePageList(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    const/16 v3, 0x1f4

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 105
    const-string v3, "Internal Server Error"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 106
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v3, "/json/activate/1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-direct {p0, p2}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->handleActivate(Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    .line 99
    :cond_2
    const/16 v3, 0x1f5

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 100
    const-string v3, "Not Implemented"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 101
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public register(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V
    .locals 1
    .param p1, "registry"    # Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    .prologue
    .line 78
    const-string v0, "/json"

    invoke-virtual {p1, v0, p0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 79
    const-string v0, "/json/version"

    invoke-virtual {p1, v0, p0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 80
    const-string v0, "/json/activate/1*"

    invoke-virtual {p1, v0, p0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 81
    return-void
.end method
