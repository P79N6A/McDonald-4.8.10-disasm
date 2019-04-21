.class public Lcom/mcdonalds/sdk/services/network/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/network/RequestManager$MySSLSocketFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_RETRY_COUNT:I = 0x2

.field public static final DEFAULT_TIMEOUT_SECS:I = 0x1e

.field private static final RETRY_KEY:Ljava/lang/String; = "SDKParameters.network.retryCount"

.field private static final TIMEOUT_KEY:Ljava/lang/String; = "SDKParameters.network.timeoutSecs"

.field private static mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private static sInstance:Lcom/mcdonalds/sdk/services/network/RequestManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->createAndStartRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 68
    return-void
.end method

.method private createAndStartRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 5

    .prologue
    .line 218
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 224
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "forceTLS12forAPI22orBelow"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 227
    :try_start_0
    const-string v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 228
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 230
    new-instance v2, Lcom/mcdonalds/sdk/services/network/RequestManager$MySSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManager$MySSLSocketFactory;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManager;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/mcdonalds/sdk/services/network/OkHttpStack;

    invoke-direct {v3, v0}, Lcom/mcdonalds/sdk/services/network/OkHttpStack;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    return-object v2

    .line 231
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->sInstance:Lcom/mcdonalds/sdk/services/network/RequestManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManager;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->sInstance:Lcom/mcdonalds/sdk/services/network/RequestManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->sInstance:Lcom/mcdonalds/sdk/services/network/RequestManager;

    return-object v0
.end method

.method public static register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManager;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 81
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    return-object v0
.end method

.method public static unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 92
    return-void
.end method


# virtual methods
.method public clearRequestQueue()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/mcdonalds/sdk/services/network/RequestManager$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/network/RequestManager$1;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManager;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 247
    return-void
.end method

.method processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p2, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TT;TE;>;",
            "Lcom/mcdonalds/sdk/AsyncListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "provider":Lcom/mcdonalds/sdk/services/network/RequestProvider;, "Lcom/mcdonalds/sdk/services/network/RequestProvider<TT;TE;>;"
    const/16 v3, 0x1e

    const/4 v4, 0x2

    .line 105
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 108
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v5, "SDKParameters.network.timeoutSecs"

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SDKParameters.network.timeoutSecs"

    .line 109
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "timeout":I
    :goto_0
    const-string v5, "SDKParameters.network.retryCount"

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SDKParameters.network.retryCount"

    .line 112
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "retryCount":I
    :goto_1
    instance-of v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInAndAuthenticateRequest;

    if-nez v5, :cond_0

    instance-of v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialSignInRequest;

    if-eqz v5, :cond_3

    .line 116
    :cond_0
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;II)V

    .line 124
    :goto_2
    return-void

    .end local v1    # "retryCount":I
    .end local v2    # "timeout":I
    :cond_1
    move v2, v3

    .line 109
    goto :goto_0

    .restart local v2    # "timeout":I
    :cond_2
    move v1, v4

    .line 112
    goto :goto_1

    .line 117
    .restart local v1    # "retryCount":I
    :cond_3
    instance-of v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCheckinRequest;

    if-nez v5, :cond_4

    instance-of v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;

    if-eqz v5, :cond_5

    .line 120
    :cond_4
    const/16 v3, 0x23

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;II)V

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;II)V

    goto :goto_2
.end method

.method processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;II)V
    .locals 10
    .param p2, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
    .param p3, "timeoutSecs"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TT;TE;>;",
            "Lcom/mcdonalds/sdk/AsyncListener;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "provider":Lcom/mcdonalds/sdk/services/network/RequestProvider;, "Lcom/mcdonalds/sdk/services/network/RequestProvider<TT;TE;>;"
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 146
    sget-object v4, Lcom/mcdonalds/sdk/services/network/RequestManager$2;->$SwitchMap$com$mcdonalds$sdk$services$network$RequestProvider$MethodType:[I

    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 160
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You must specify an HTTP method"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :pswitch_0
    const/4 v3, 0x0

    .line 165
    .local v3, "method":I
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->applyCurrentToken(Lcom/mcdonalds/sdk/services/network/RequestProvider;)V

    .line 167
    sget-object v4, Lcom/mcdonalds/sdk/services/network/RequestManager$2;->$SwitchMap$com$mcdonalds$sdk$services$network$RequestProvider$RequestType:[I

    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 188
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You must specify a Request Type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    .end local v3    # "method":I
    :pswitch_1
    const/4 v3, 0x1

    .line 152
    .restart local v3    # "method":I
    goto :goto_0

    .line 154
    .end local v3    # "method":I
    :pswitch_2
    const/4 v3, 0x2

    .line 155
    .restart local v3    # "method":I
    goto :goto_0

    .line 157
    .end local v3    # "method":I
    :pswitch_3
    const/4 v3, 0x3

    .line 158
    .restart local v3    # "method":I
    goto :goto_0

    .line 169
    :pswitch_4
    new-instance v0, Lcom/mcdonalds/sdk/services/network/GsonRequest;

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v3, p1, p2}, Lcom/mcdonalds/sdk/services/network/GsonRequest;-><init>(Landroid/content/Context;ILcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 170
    .local v0, "gsonRequest":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TT;TE;>;"
    new-instance v4, Lcom/android/volley/DefaultRetryPolicy;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v4, v5, p4, v9}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 171
    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 172
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v4, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 190
    .end local v0    # "gsonRequest":Lcom/mcdonalds/sdk/services/network/GsonRequest;, "Lcom/mcdonalds/sdk/services/network/GsonRequest<TT;TE;>;"
    :goto_1
    return-void

    .line 176
    :pswitch_5
    new-instance v2, Lcom/mcdonalds/sdk/services/network/MCDImageRequest;

    invoke-direct {v2, p1, p2}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest;-><init>(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 177
    .local v2, "imageRequest":Lcom/mcdonalds/sdk/services/network/MCDImageRequest;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest<TT;TE;>;"
    invoke-virtual {v2, v8}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 178
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 182
    .end local v2    # "imageRequest":Lcom/mcdonalds/sdk/services/network/MCDImageRequest;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest<TT;TE;>;"
    :pswitch_6
    new-instance v1, Lcom/mcdonalds/sdk/services/network/HtmlRequest;

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3, p1, p2}, Lcom/mcdonalds/sdk/services/network/HtmlRequest;-><init>(Landroid/content/Context;ILcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 183
    .local v1, "htmlRequest":Lcom/mcdonalds/sdk/services/network/HtmlRequest;, "Lcom/mcdonalds/sdk/services/network/HtmlRequest<TT;TE;>;"
    new-instance v4, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v5, 0x7530

    invoke-direct {v4, v5, v8, v9}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/services/network/HtmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 184
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v4, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public processUrlIntoNetworkImageView(Ljava/lang/String;Lcom/android/volley/toolbox/NetworkImageView;II)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "networkImageView"    # Lcom/android/volley/toolbox/NetworkImageView;
    .param p3, "defaultImageResId"    # I
    .param p4, "errorImageResId"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-nez v1, :cond_0

    .line 204
    new-instance v0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "mImageCache":Lcom/mcdonalds/sdk/services/network/MCDImageCache;
    new-instance v1, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v1, v2, v0}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 208
    .end local v0    # "mImageCache":Lcom/mcdonalds/sdk/services/network/MCDImageCache;
    :cond_0
    if-nez p3, :cond_1

    const p3, 0x108003f

    .end local p3    # "defaultImageResId":I
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageResId(I)V

    .line 211
    if-nez p4, :cond_2

    const p4, 0x1080078

    .end local p4    # "errorImageResId":I
    :cond_2
    invoke-virtual {p2, p4}, Lcom/android/volley/toolbox/NetworkImageView;->setErrorImageResId(I)V

    .line 214
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {p2, p1, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 215
    return-void
.end method
