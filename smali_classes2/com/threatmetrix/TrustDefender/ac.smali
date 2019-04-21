.class Lcom/threatmetrix/TrustDefender/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threatmetrix/TrustDefender/aq;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field private c:Lcom/threatmetrix/TrustDefender/e;

.field private d:Ljava/util/Map;
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

.field private e:Lcom/squareup/okhttp/Request;

.field private f:Lcom/threatmetrix/TrustDefender/ab;

.field private g:Lcom/squareup/okhttp/OkHttpClient;

.field private h:Lcom/squareup/okhttp/Response;

.field private i:Lcom/squareup/okhttp/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/threatmetrix/TrustDefender/ac;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/threatmetrix/TrustDefender/ab;Lcom/threatmetrix/TrustDefender/e;)V
    .locals 2
    .param p1, "client"    # Lcom/threatmetrix/TrustDefender/ab;
    .param p2, "state"    # Lcom/threatmetrix/TrustDefender/e;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->d:Ljava/util/Map;

    .line 16
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    .line 17
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ac;->f:Lcom/threatmetrix/TrustDefender/ab;

    .line 18
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ac;->g:Lcom/squareup/okhttp/OkHttpClient;

    .line 19
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    .line 20
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ac;->i:Lcom/squareup/okhttp/Call;

    .line 24
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 25
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/ac;->c:Lcom/threatmetrix/TrustDefender/e;

    .line 26
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ac;->f:Lcom/threatmetrix/TrustDefender/ab;

    .line 27
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ab;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->g:Lcom/squareup/okhttp/OkHttpClient;

    .line 28
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/threatmetrix/TrustDefender/n;

    .prologue
    const/4 v11, 0x0

    .line 77
    new-instance v8, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v8}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v8, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 79
    .local v1, "builder":Lcom/squareup/okhttp/Request$Builder;
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->d:Ljava/util/Map;

    const-string v9, "User-Agent"

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/ac;->f:Lcom/threatmetrix/TrustDefender/ab;

    invoke-virtual {v10}, Lcom/threatmetrix/TrustDefender/ab;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->d:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 85
    sget-object v9, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "null value for "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 94
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz p2, :cond_6

    .line 96
    new-instance v0, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 97
    .local v0, "bodyBuilder":Lcom/squareup/okhttp/FormEncodingBuilder;
    invoke-virtual {p2}, Lcom/threatmetrix/TrustDefender/n;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/threatmetrix/TrustDefender/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 100
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    invoke-virtual {p2, v5}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 103
    .local v6, "length":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 105
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 107
    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p2}, Lcom/threatmetrix/TrustDefender/n;->a()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Lcom/threatmetrix/TrustDefender/n;->a()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 109
    invoke-virtual {p2}, Lcom/threatmetrix/TrustDefender/n;->a()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 111
    :cond_4
    invoke-virtual {v0, v5, v7}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_1

    .line 115
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "length":Ljava/lang/Integer;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 118
    .end local v0    # "bodyBuilder":Lcom/squareup/okhttp/FormEncodingBuilder;
    :cond_6
    monitor-enter p0

    .line 120
    :try_start_0
    instance-of v8, v1, Lcom/squareup/okhttp/Request$Builder;

    if-nez v8, :cond_7

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v8

    .end local v1    # "builder":Lcom/squareup/okhttp/Request$Builder;
    :goto_2
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->g:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v9, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    instance-of v10, v8, Lcom/squareup/okhttp/OkHttpClient;

    if-nez v10, :cond_8

    invoke-virtual {v8, v9}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v8

    :goto_3
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->i:Lcom/squareup/okhttp/Call;

    .line 126
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->i:Lcom/squareup/okhttp/Call;

    invoke-virtual {v8}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    .line 127
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_4
    return-void

    .line 120
    .restart local v1    # "builder":Lcom/squareup/okhttp/Request$Builder;
    :cond_7
    :try_start_2
    check-cast v1, Lcom/squareup/okhttp/Request$Builder;

    .end local v1    # "builder":Lcom/squareup/okhttp/Request$Builder;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 121
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 125
    :cond_8
    :try_start_3
    check-cast v8, Lcom/squareup/okhttp/OkHttpClient;

    invoke-static {v8, v9}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    goto :goto_3

    .line 129
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/security/cert/CertificateException;

    if-eqz v8, :cond_a

    .line 133
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 154
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->c:Lcom/threatmetrix/TrustDefender/e;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->c:Lcom/threatmetrix/TrustDefender/e;

    invoke-interface {v8}, Lcom/threatmetrix/TrustDefender/e;->a()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 156
    sget-object v8, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    const-string v9, "Connection interrupted due to cancel!"

    invoke-static {v8, v9}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/ac;->c()V

    goto :goto_4

    .line 135
    :cond_a
    instance-of v8, v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v8, :cond_b

    .line 137
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_5

    .line 139
    :cond_b
    instance-of v8, v2, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_c

    .line 141
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_5

    .line 143
    :cond_c
    instance-of v8, v2, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_d

    .line 145
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_5

    .line 149
    :cond_d
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    sget-object v9, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v8, v9, :cond_9

    .line 151
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_5

    .line 161
    :cond_e
    sget-object v8, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    const-string v9, "Failed to retrieve URI"

    invoke-static {v8, v9, v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    const-string v9, "Caught runtime exception:"

    invoke-static {v8, v9, v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    sget-object v8, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefender/ac;->b(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;)V

    .line 58
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-eq v0, v1, :cond_1

    .line 59
    :cond_0
    const-wide/16 v0, -0x1

    .line 61
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/threatmetrix/TrustDefender/n;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/threatmetrix/TrustDefender/ac;->b(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;)V

    .line 69
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-eq v0, v1, :cond_1

    .line 70
    :cond_0
    const-wide/16 v0, -0x1

    .line 72
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->e:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->i:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->i:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 194
    :cond_0
    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    sget-object v0, Lcom/threatmetrix/TrustDefender/ac;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ac;->h:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
