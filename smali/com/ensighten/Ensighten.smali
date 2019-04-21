.class public Lcom/ensighten/Ensighten;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ensighten/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/Ensighten$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ensighten/f;

.field private c:Lcom/ensighten/k;

.field private d:Lcom/ensighten/l;

.field private e:Lcom/ensighten/exception/ExceptionManager;

.field private f:Lcom/ensighten/h;

.field private g:Lcom/ensighten/E;

.field private h:Lcom/ensighten/M;

.field private i:Lcom/ensighten/N;

.field private j:Lcom/ensighten/W;

.field private k:Lcom/ensighten/X;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->n:Z

    .line 120
    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->o:Z

    .line 126
    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->p:Z

    .line 140
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ensighten/Ensighten;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ensighten/Ensighten;->n:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Attempting to start Ensighten when it is already running."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ensighten/i$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/ensighten/Ensighten;->l:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/ensighten/Ensighten;->m:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/ensighten/f;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->b:Lcom/ensighten/f;

    .line 2029
    sget-object v0, Lcom/ensighten/c$a;->a:Lcom/ensighten/c;

    .line 212
    invoke-virtual {v0}, Lcom/ensighten/c;->a()Lcom/ensighten/E;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/Ensighten;->g:Lcom/ensighten/E;

    .line 213
    new-instance v0, Lcom/ensighten/k;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->c:Lcom/ensighten/k;

    .line 214
    new-instance v0, Lcom/ensighten/l;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->d:Lcom/ensighten/l;

    .line 215
    new-instance v0, Lcom/ensighten/exception/ExceptionManager;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/exception/ExceptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->e:Lcom/ensighten/exception/ExceptionManager;

    .line 216
    new-instance v0, Lcom/ensighten/h;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->f:Lcom/ensighten/h;

    .line 217
    new-instance v0, Lcom/ensighten/N;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/N;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->i:Lcom/ensighten/N;

    .line 218
    new-instance v0, Lcom/ensighten/W;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/W;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->j:Lcom/ensighten/W;

    .line 219
    new-instance v0, Lcom/ensighten/X;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/X;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->k:Lcom/ensighten/X;

    .line 222
    iget-object v0, p0, Lcom/ensighten/Ensighten;->b:Lcom/ensighten/f;

    .line 2042
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ensighten/X;->a(Lcom/ensighten/X$c;)V

    .line 2043
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ensighten/X;->a(Lcom/ensighten/X$b;)V

    .line 2044
    invoke-virtual {v0}, Lcom/ensighten/f;->a()V

    .line 223
    iget-object v0, p0, Lcom/ensighten/Ensighten;->f:Lcom/ensighten/h;

    .line 2121
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ensighten/X;->a(Lcom/ensighten/X$c;)V

    .line 224
    iget-object v0, p0, Lcom/ensighten/Ensighten;->d:Lcom/ensighten/l;

    .line 2141
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ensighten/f;->a(Lcom/ensighten/f$a;)V

    .line 2142
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ensighten/h;->a(Lcom/ensighten/h$a;)V

    .line 225
    iget-object v9, p0, Lcom/ensighten/Ensighten;->k:Lcom/ensighten/X;

    .line 2160
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    .line 2161
    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 2162
    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v2

    .line 2473
    iget-object v2, v2, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 3070
    iget-object v2, v2, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 2163
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v3

    .line 3181
    iget-object v3, v3, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 3399
    iget-object v3, v3, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 2163
    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/ensighten/Utils;->buildConfigURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/ensighten/X;->h:Ljava/lang/String;

    .line 2170
    new-instance v2, Lcom/ensighten/A;

    invoke-static {}, Lcom/ensighten/Ensighten;->getInstructionProcessor()Lcom/ensighten/E;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ensighten/A;-><init>(Lcom/ensighten/E;)V

    iput-object v2, v9, Lcom/ensighten/X;->c:Landroid/webkit/WebChromeClient;

    .line 2171
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, v9, Lcom/ensighten/X;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v9, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    .line 2172
    iget-object v2, v9, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2173
    iget-object v2, v9, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 2174
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2175
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 2176
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2178
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2179
    new-instance v2, Lcom/ensighten/B;

    invoke-direct {v2}, Lcom/ensighten/B;-><init>()V

    iput-object v2, v9, Lcom/ensighten/X;->d:Lcom/ensighten/B;

    .line 2180
    iget-object v2, v9, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    iget-object v3, v9, Lcom/ensighten/X;->d:Lcom/ensighten/B;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2181
    iget-object v2, v9, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    iget-object v3, v9, Lcom/ensighten/X;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2183
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 4181
    iget-object v2, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 4403
    iget-object v2, v2, Lcom/ensighten/e;->d:Ljava/lang/String;

    .line 2183
    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/ensighten/Utils;->buildTagContainerURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/ensighten/X;->i:Ljava/lang/String;

    .line 2190
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2191
    const-string v0, "The url of the tag container is %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/ensighten/X;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 2193
    :cond_3
    iget-object v0, v9, Lcom/ensighten/X;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2194
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2195
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v7

    .line 2196
    :goto_1
    if-eqz v0, :cond_4

    .line 2197
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/ensighten/X;->j:Z

    .line 2198
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/ensighten/X;->g:Z

    .line 2199
    invoke-virtual {v9}, Lcom/ensighten/X;->c()V

    .line 2200
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/ensighten/X;->a(Z)V

    .line 2203
    :cond_4
    iget-object v0, v9, Lcom/ensighten/X;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 2204
    invoke-virtual {v9}, Lcom/ensighten/X;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2208
    :cond_5
    :try_start_3
    iget-object v0, v9, Lcom/ensighten/X;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ensighten.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2209
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2210
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v1}, Lcom/ensighten/Utils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 2211
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2212
    const-string v0, "Parsed embedded config with content %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 2213
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2214
    sget v1, Lcom/ensighten/g;->b:I

    invoke-virtual {v9, v0, v1}, Lcom/ensighten/X;->a(Lorg/json/JSONObject;I)V

    .line 2215
    invoke-virtual {v9}, Lcom/ensighten/X;->a()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :cond_7
    :goto_2
    :try_start_4
    new-instance v0, Lcom/ensighten/M;

    iget-object v1, p0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ensighten/Ensighten;->i:Lcom/ensighten/N;

    .line 4465
    iget-object v2, v2, Lcom/ensighten/N;->c:Landroid/content/res/Configuration;

    .line 227
    invoke-direct {v0, v1, v2}, Lcom/ensighten/M;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/ensighten/Ensighten;->h:Lcom/ensighten/M;

    .line 229
    invoke-virtual {p0}, Lcom/ensighten/Ensighten;->a()V

    .line 231
    if-eqz p4, :cond_8

    .line 232
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/exception/ExceptionManager;->b()V

    .line 235
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->n:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    :try_start_5
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    move v0, v8

    .line 2195
    goto/16 :goto_1

    .line 2217
    :catch_1
    move-exception v0

    .line 2218
    :try_start_6
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2219
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 2220
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/ensighten/Ensighten;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ensighten/Ensighten;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static addCustomDumpPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 24049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 491
    if-nez v0, :cond_1

    .line 24207
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 24206
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 24210
    iget-object v0, v0, Lcom/ensighten/k;->g:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addPersistentCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cookieName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;

    .prologue
    .line 1025
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50167
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1026
    if-nez v0, :cond_1

    .line 50174
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50168
    if-eqz p0, :cond_0

    .line 50171
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v1

    .line 50181
    iget-object v1, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 50182
    iget-boolean v1, v1, Lcom/ensighten/e;->n:Z

    .line 50172
    if-eqz v1, :cond_2

    .line 50173
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50174
    const-string v0, "Cookie %s was not stored because privacy mode is enabled."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50176
    :cond_2
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v1, p0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50177
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 50178
    iget-object v0, v0, Lcom/ensighten/X;->m:Lcom/ensighten/t;

    invoke-virtual {v0, v1}, Lcom/ensighten/t;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method

.method public static addTestToClassAndEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "testJSONString"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50036
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 823
    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ensighten/M;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static bootstrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ensighten/Ensighten;->bootstrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public static bootstrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "enableCrashReporting"    # Z

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "Bootstrap..."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 170
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ensighten/Ensighten;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 173
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    .line 174
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 175
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    new-instance v0, Lcom/ensighten/Ensighten$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/Ensighten$1;-><init>(Ljava/util/concurrent/locks/Lock;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/locks/Condition;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    const-wide/16 v2, 0x3e8

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static callJSErrorHandler(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "errorInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 735
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50027
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 736
    if-nez v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ensighten/h;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static clearConfiguration()V
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50035
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 815
    if-nez v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/M;->b()V

    goto :goto_0
.end method

.method public static enableCrashReporting()V
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 45049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 687
    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/exception/ExceptionManager;->b()V

    goto :goto_0
.end method

.method public static evaluateEvent(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "declaringType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 31049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 562
    if-nez v0, :cond_0

    .line 31433
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 31432
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 31433
    invoke-virtual {v0, p1, p2, p3}, Lcom/ensighten/l;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 31435
    :cond_1
    invoke-virtual {v0, p0, p2, p3}, Lcom/ensighten/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "declaringClassName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 577
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 32049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 578
    if-nez v0, :cond_0

    .line 32457
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v1

    .line 32448
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 32449
    const/4 v0, 0x0

    .line 32451
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32456
    :cond_1
    :goto_1
    invoke-virtual {v1, v0, p2, p3}, Lcom/ensighten/l;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 32453
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32454
    const-string v2, "Unable to load class with name %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 32458
    :cond_2
    invoke-virtual {v1, p0, p2, p3}, Lcom/ensighten/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 545
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 30049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 546
    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ensighten/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static evaluateJS(Ljava/lang/String;)V
    .locals 1
    .param p0, "js"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 48049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 714
    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static evaluateNotification(Lcom/ensighten/H;)V
    .locals 3
    .param p0, "notification"    # Lcom/ensighten/H;

    .prologue
    .line 606
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 34049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 607
    if-nez v0, :cond_1

    .line 34480
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 34469
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v1

    .line 35181
    iget-object v1, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 34470
    invoke-virtual {v1}, Lcom/ensighten/e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35442
    iget-boolean v2, v1, Lcom/ensighten/e;->v:Z

    .line 34470
    if-eqz v2, :cond_0

    .line 35450
    iget-boolean v2, v1, Lcom/ensighten/e;->n:Z

    .line 34470
    if-nez v2, :cond_0

    .line 34471
    instance-of v2, p0, Lcom/ensighten/G;

    if-eqz v2, :cond_2

    .line 34472
    invoke-virtual {v0, p0}, Lcom/ensighten/l;->a(Lcom/ensighten/H;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34477
    :catch_0
    move-exception v0

    .line 34478
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34479
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 35482
    :cond_2
    :try_start_1
    iget-boolean v1, v1, Lcom/ensighten/e;->x:Z

    .line 34473
    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/ensighten/y;

    if-eqz v1, :cond_0

    .line 34474
    invoke-virtual {v0, p0}, Lcom/ensighten/l;->b(Lcom/ensighten/H;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static evaluateSyncJS(Ljava/lang/String;)V
    .locals 7
    .param p0, "js"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 724
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 49049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 725
    if-nez v0, :cond_0

    .line 49387
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v0

    .line 49380
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v1

    .line 49381
    new-instance v2, Lcom/ensighten/I;

    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v3

    .line 49915
    iget-object v3, v3, Lcom/ensighten/l;->c:Ljava/lang/String;

    .line 49381
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Lcom/ensighten/N;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/ensighten/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 50026
    iget-object v1, v2, Lcom/ensighten/I;->a:Ljava/lang/String;

    .line 49382
    invoke-virtual {v0, v1}, Lcom/ensighten/h;->d(Ljava/lang/String;)V

    .line 49383
    invoke-virtual {v2}, Lcom/ensighten/I;->a()Ljava/lang/String;

    move-result-object v1

    .line 49384
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49385
    const-string v2, "The gateway wrapper is %s."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 49386
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 49387
    const-string v0, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 49389
    :cond_2
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 49390
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    .line 49391
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49392
    new-instance v4, Landroid/os/Handler;

    iget-object v5, v0, Lcom/ensighten/h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49393
    new-instance v5, Lcom/ensighten/h$2;

    invoke-direct {v5, v0, v2, v1, v3}, Lcom/ensighten/h$2;-><init>(Lcom/ensighten/h;Ljava/util/concurrent/locks/Lock;Ljava/lang/String;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49403
    const-wide/16 v0, 0x3e8

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v0, v1, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49406
    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static evaluateVideoEvent(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "videoName"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "duration"    # I

    .prologue
    .line 593
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 33049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 594
    if-nez v0, :cond_1

    .line 33679
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    .line 33667
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 33669
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/N;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 33670
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33671
    const-string/jumbo v2, "videoName"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33672
    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33673
    const-string v2, "position"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33674
    const-string v2, "duration"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33675
    const-string/jumbo v2, "videoEvent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33676
    :catch_0
    move-exception v0

    .line 33677
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33678
    const-string v1, "Unable to create a video event in JSON."

    invoke-static {v1, v0}, Lcom/ensighten/i;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static getBatteryWatchThreshold()I
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 19049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 455
    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 19181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 19526
    iget v1, v0, Lcom/ensighten/e;->A:I

    iget v0, v0, Lcom/ensighten/e;->B:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getChildViewReturnValue(Landroid/view/View;II)V
    .locals 1
    .param p0, "getChildViewResult"    # Landroid/view/View;
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 754
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50028
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 755
    if-nez v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 759
    iput-object p0, v0, Lcom/ensighten/M;->b:Landroid/view/View;

    .line 760
    iput p2, v0, Lcom/ensighten/M;->c:I

    .line 761
    iput p1, v0, Lcom/ensighten/M;->e:I

    goto :goto_0
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 10049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 383
    if-nez v0, :cond_0

    .line 384
    const-string v0, ""

    .line 386
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 10181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 10403
    iget-object v0, v0, Lcom/ensighten/e;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getConfigurationManager()Lcom/ensighten/f;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->b:Lcom/ensighten/f;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 28049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 523
    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 29049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 531
    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 29978
    iget-object v0, v0, Lcom/ensighten/W;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDumpManager()Lcom/ensighten/k;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->c:Lcom/ensighten/k;

    return-object v0
.end method

.method public static getEventManager()Lcom/ensighten/l;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->d:Lcom/ensighten/l;

    return-object v0
.end method

.method public static getExceptionManager()Lcom/ensighten/exception/ExceptionManager;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->e:Lcom/ensighten/exception/ExceptionManager;

    return-object v0
.end method

.method public static getGroupViewReturnValue(Landroid/view/View;I)V
    .locals 1
    .param p0, "getGroupViewResult"    # Landroid/view/View;
    .param p1, "groupPosition"    # I

    .prologue
    .line 771
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50029
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 772
    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 776
    iput-object p0, v0, Lcom/ensighten/M;->d:Landroid/view/View;

    .line 777
    iput p1, v0, Lcom/ensighten/M;->e:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/ensighten/Ensighten;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/ensighten/Ensighten$a;->a:Lcom/ensighten/Ensighten;

    return-object v0
.end method

.method public static getInstructionProcessor()Lcom/ensighten/E;
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->g:Lcom/ensighten/E;

    return-object v0
.end method

.method public static getJavascriptProcessor()Lcom/ensighten/h;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->f:Lcom/ensighten/h;

    return-object v0
.end method

.method public static getOptimizationManager()Lcom/ensighten/M;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->h:Lcom/ensighten/M;

    return-object v0
.end method

.method public static getPersistentCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "videoName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1033
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50183
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1034
    if-nez v0, :cond_1

    move-object v0, v1

    .line 50198
    :cond_0
    :goto_0
    return-object v0

    .line 1037
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50184
    if-eqz p0, :cond_2

    .line 50187
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 50205
    iget-object v2, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 50206
    iget-boolean v2, v2, Lcom/ensighten/e;->n:Z

    .line 50188
    if-eqz v2, :cond_3

    .line 50189
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50190
    const-string v0, "Cookie %s was not fetched because privacy mode is enabled."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 1037
    goto :goto_0

    .line 50192
    :cond_3
    iget-object v0, v0, Lcom/ensighten/X;->m:Lcom/ensighten/t;

    invoke-virtual {v0}, Lcom/ensighten/t;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 50193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 50194
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50195
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 50196
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50197
    const-string v1, "Cookie %s was found with value %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50201
    :cond_5
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50202
    const-string v0, "Cookie %s was not found."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getPersistentStoreEnabled()Z
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 9049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 375
    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 9181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 9438
    iget-boolean v0, v0, Lcom/ensighten/e;->s:Z

    goto :goto_0
.end method

.method public static getPrivacyDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 12049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 399
    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 12181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 12434
    iget-object v0, v0, Lcom/ensighten/e;->p:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static getPrivacyStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 14049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 415
    if-nez v0, :cond_0

    .line 416
    const-string v0, ""

    .line 418
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 14181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 14454
    iget-object v0, v0, Lcom/ensighten/e;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStorageManager()Lcom/ensighten/N;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->i:Lcom/ensighten/N;

    return-object v0
.end method

.method public static getStringFromSharedPrefsForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50105
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 887
    if-nez v0, :cond_0

    .line 888
    const-string v0, ""

    .line 890
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ensighten/N;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTagContainerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50157
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 994
    if-nez v0, :cond_0

    .line 995
    const-string v0, ""

    .line 997
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50158
    iget-object v0, v0, Lcom/ensighten/X;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50099
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 851
    if-nez v0, :cond_0

    .line 852
    const-string v0, ""

    .line 854
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    .line 50100
    iget-object v0, v0, Lcom/ensighten/N;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50101
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 859
    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    .line 50102
    iget-object v0, v0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 50103
    iget-object v0, v0, Lcom/ensighten/z;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVideoHeartbeatAdBreaks()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 41049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 655
    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 41903
    iget-object v0, v0, Lcom/ensighten/l;->a:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public static getVideoHeartbeatChapters()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 43049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 671
    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 43911
    iget-object v0, v0, Lcom/ensighten/l;->b:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public static getVideoKeyframes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "videoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/R;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 44049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 679
    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    invoke-static {p0}, Lcom/ensighten/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getViewManager()Lcom/ensighten/W;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->j:Lcom/ensighten/W;

    return-object v0
.end method

.method public static getViewReturnValue(Landroid/view/View;I)V
    .locals 1
    .param p0, "getViewResult"    # Landroid/view/View;
    .param p1, "position"    # I

    .prologue
    .line 900
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50106
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 901
    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 50107
    iput-object p0, v0, Lcom/ensighten/W;->e:Landroid/view/View;

    .line 50109
    iput p1, v0, Lcom/ensighten/W;->k:I

    goto :goto_0
.end method

.method public static getWaitingForWebview()Z
    .locals 1

    .prologue
    .line 985
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50155
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 986
    if-nez v0, :cond_0

    .line 987
    const/4 v0, 0x0

    .line 989
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50156
    iget-boolean v0, v0, Lcom/ensighten/X;->e:Z

    goto :goto_0
.end method

.method public static getWebManager()Lcom/ensighten/X;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v0, v0, Lcom/ensighten/Ensighten;->k:Lcom/ensighten/X;

    return-object v0
.end method

.method public static getXPathAndClassNameForGeneratedResId(ILandroid/view/View;)[Ljava/lang/String;
    .locals 4
    .param p0, "resId"    # I
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 942
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50135
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 943
    if-nez v0, :cond_0

    move-object v0, v2

    .line 50142
    :goto_0
    return-object v0

    .line 946
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v1

    .line 50136
    const v0, -0x21524542

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50137
    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/ensighten/W;->i:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50138
    iget-object v1, v1, Lcom/ensighten/W;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 50139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50141
    if-eqz v1, :cond_1

    .line 50142
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 946
    goto :goto_0
.end method

.method public static getXPathForGeneratedFragmentResId(I)Ljava/lang/String;
    .locals 1
    .param p0, "fragmentResId"    # I

    .prologue
    .line 950
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50147
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 951
    if-nez v0, :cond_0

    .line 952
    const-string v0, ""

    .line 954
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 50148
    iget-object v0, v0, Lcom/ensighten/W;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isAdminMode()Z
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->o:Z

    return v0
.end method

.method public static isBatteryKillEnabled()Z
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 17049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 439
    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 17181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 17494
    iget-boolean v0, v0, Lcom/ensighten/e;->y:Z

    goto :goto_0
.end method

.method public static isBatteryWatchEnabled()Z
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 18049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 447
    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 18181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 18498
    iget-boolean v0, v0, Lcom/ensighten/e;->z:Z

    goto :goto_0
.end method

.method public static isConnectionStatus()Z
    .locals 1

    .prologue
    .line 1001
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50159
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1002
    if-nez v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50160
    iget-boolean v0, v0, Lcom/ensighten/X;->j:Z

    goto :goto_0
.end method

.method public static isCrashReportingEnabled()V
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 46049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 695
    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    goto :goto_0
.end method

.method public static isOptimizationEnabled()Z
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50030
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 798
    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 801
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 50031
    iget-boolean v0, v0, Lcom/ensighten/M;->i:Z

    goto :goto_0
.end method

.method public static isOptimizationLifecycle(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lifecycleMethod"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onActivityCreated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    :cond_0
    const/4 v0, 0x1

    .line 793
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivacyMode()Z
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 15049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 423
    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 15181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 15450
    iget-boolean v0, v0, Lcom/ensighten/e;->n:Z

    goto :goto_0
.end method

.method public static isTestMode()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->p:Z

    return v0
.end method

.method public static isVideoHeartbeatEnabled()Z
    .locals 1

    .prologue
    .line 638
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 39049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 639
    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 39895
    iget-boolean v0, v0, Lcom/ensighten/l;->d:Z

    goto :goto_0
.end method

.method public static loadNetworkResources()V
    .locals 1

    .prologue
    .line 969
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50151
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 970
    if-nez v0, :cond_0

    .line 974
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/X;->c()V

    goto :goto_0
.end method

.method public static onFrameReceived(I)V
    .locals 1
    .param p0, "frameId"    # I

    .prologue
    .line 466
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 20049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 467
    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 20381
    if-ltz p0, :cond_0

    .line 20382
    iput p0, v0, Lcom/ensighten/k;->h:I

    goto :goto_0
.end method

.method public static parseConfig(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 406
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 13049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 407
    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ensighten/f;->a(Lorg/json/JSONObject;I)V

    goto :goto_0
.end method

.method public static processBatteryLevel()V
    .locals 1

    .prologue
    .line 622
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 37049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 623
    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/l;->c()V

    goto :goto_0
.end method

.method public static processView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50111
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 918
    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 922
    invoke-virtual {v0, p0, p1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 933
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50112
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 934
    if-nez v0, :cond_1

    .line 50129
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 50113
    invoke-static {}, Lcom/ensighten/W;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50114
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50115
    const-string v0, "View processing is disabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50119
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v1

    .line 50120
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50121
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50122
    :cond_3
    iget-object v1, v0, Lcom/ensighten/W;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/ensighten/W;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50123
    iget-object v1, v0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    if-eqz v1, :cond_4

    .line 50124
    iget-object v1, v0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50126
    :cond_4
    iget-object v1, v0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50128
    :cond_5
    iget-object v1, v0, Lcom/ensighten/W;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/ensighten/W;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50129
    iget-object v1, v0, Lcom/ensighten/W;->c:Landroid/widget/Adapter;

    invoke-virtual {v0, v1, p1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50131
    :cond_6
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50132
    const-string v0, "Class %s was not found for view processing."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removePersistentCookie(Ljava/lang/String;)V
    .locals 4
    .param p0, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 1041
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50207
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1042
    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50208
    if-eqz p0, :cond_0

    .line 50211
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50212
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 50213
    const-string v3, ""

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 50214
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 50215
    iget-object v2, v0, Lcom/ensighten/X;->m:Lcom/ensighten/t;

    invoke-virtual {v2, v1}, Lcom/ensighten/t;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 50216
    iget-object v0, v0, Lcom/ensighten/X;->a:Landroid/content/Context;

    const-string v1, "CookiePrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cookie_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static removeTest(Ljava/lang/String;)V
    .locals 13
    .param p0, "testName"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50037
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 831
    if-nez v0, :cond_1

    .line 50083
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v4

    .line 50038
    const-string v5, "removeTest"

    .line 50040
    if-eqz p0, :cond_2

    iget-object v0, v4, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 50041
    :cond_2
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50042
    const-string v0, "The test was not removed due to one or more arguments being null."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50046
    :cond_3
    invoke-static {}, Lcom/ensighten/Ensighten;->isPrivacyMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ensighten/Ensighten;->isBatteryKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50047
    :cond_4
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50048
    const-string v0, "The test was not removed due to privacy mode or battery kill enabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50053
    :cond_5
    :try_start_0
    iget-object v0, v4, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 50054
    iget-object v1, v4, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_1
    if-lez v3, :cond_0

    .line 50055
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50057
    iget-object v0, v4, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 50058
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 50060
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    move v2, v0

    :goto_2
    if-lez v2, :cond_9

    .line 50061
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 50063
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tests"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 50064
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 50066
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    move v1, v0

    :goto_3
    if-lez v1, :cond_8

    .line 50067
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50069
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50070
    invoke-virtual {v11, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 50071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50072
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50073
    const-string v0, "Removed test %s from the optimization configuration."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 50074
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " test "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ensighten/M;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 50080
    :catch_0
    move-exception v0

    .line 50081
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50082
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 50066
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 50060
    :cond_8
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    .line 50054
    :cond_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_1
.end method

.method public static restartActivity()V
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50150
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 959
    if-nez v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->a()V

    goto :goto_0
.end method

.method public static saveStringToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50104
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 873
    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ensighten/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendClassFullDumpObjectToSocket()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v4, 0x0

    .line 474
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 21049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 475
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 22003
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22005
    :try_start_0
    new-instance v2, Ldalvik/system/DexFile;

    iget-object v0, v0, Lcom/ensighten/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 22006
    invoke-virtual {v2}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 22007
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22008
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22009
    const-string v2, "android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.ensighten."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "org.acra."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".BuildConfig"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".*\\.R\\$?.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22010
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 22011
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 22013
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 22014
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 22015
    array-length v9, v8

    move v3, v4

    :goto_2
    if-ge v3, v9, :cond_5

    aget-object v2, v8, v3

    .line 22016
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 22017
    const-string v11, "access$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isBridge()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v11

    if-nez v11, :cond_4

    .line 22019
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22020
    const-string v2, " throws "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 22021
    if-eq v2, v13, :cond_2

    .line 22022
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v2, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 22025
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 22026
    if-eq v2, v13, :cond_3

    .line 22027
    const/4 v10, 0x0

    invoke-virtual {v11, v10, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 22030
    :cond_3
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 22015
    :cond_4
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 22031
    :catch_0
    move-exception v2

    .line 22032
    :try_start_3
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 22033
    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 22037
    :catch_1
    move-exception v2

    .line 22038
    :try_start_4
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22039
    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    .line 22053
    :cond_5
    :goto_4
    const-string v2, "methods"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22054
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 22057
    :catch_2
    move-exception v0

    .line 22058
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22059
    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    .line 22065
    :cond_6
    :goto_5
    instance-of v0, v1, Lorg/json/JSONObject;

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22066
    :goto_6
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v1

    const-string v2, "socket.sendMessage(\'class.fullDump.receipt\',%s);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ensighten/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 22040
    :catch_3
    move-exception v2

    .line 22041
    :try_start_5
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22042
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 22060
    :catch_4
    move-exception v0

    .line 22061
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22062
    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    goto :goto_5

    .line 22043
    :catch_5
    move-exception v2

    .line 22044
    :try_start_6
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22045
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 22046
    :catch_6
    move-exception v2

    .line 22047
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22048
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 22049
    :catch_7
    move-exception v2

    .line 22050
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22051
    invoke-virtual {v2}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 22065
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static sendTracerObjectToSocket()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 23049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 483
    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v3

    .line 23219
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstructionProcessor()Lcom/ensighten/E;

    move-result-object v0

    .line 23885
    iget-object v1, v0, Lcom/ensighten/E;->e:Ljava/lang/Object;

    .line 23221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 23893
    iget-object v5, v0, Lcom/ensighten/E;->f:Ljava/lang/String;

    .line 23223
    invoke-virtual {v0}, Lcom/ensighten/E;->a()[Ljava/lang/Object;

    move-result-object v6

    .line 23225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23228
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 23229
    invoke-virtual {v3, v1}, Lcom/ensighten/k;->a(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23230
    const-string v1, "class"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23231
    const-string v1, "method"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23232
    if-eqz v6, :cond_1

    move v1, v2

    .line 23233
    :goto_1
    array-length v4, v6

    if-ge v1, v4, :cond_1

    .line 23234
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 23235
    aget-object v5, v6, v1

    .line 23236
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 23237
    invoke-virtual {v3, v5}, Lcom/ensighten/k;->a(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23238
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23241
    :catch_0
    move-exception v1

    .line 23242
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23243
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 23245
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v1

    const-string v3, "socket.sendMessage(\'tracer.receipt\',%s);"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ensighten/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static setBatteryKillEnabled(Z)V
    .locals 1
    .param p0, "batteryKillEnabled"    # Z

    .prologue
    .line 430
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 16049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 431
    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 16181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 16490
    iput-boolean p0, v0, Lcom/ensighten/e;->y:Z

    goto :goto_0
.end method

.method public static setConnectionStatus(Z)V
    .locals 1
    .param p0, "connectionStatus"    # Z

    .prologue
    .line 1009
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50161
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1010
    if-nez v0, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50162
    iput-boolean p0, v0, Lcom/ensighten/X;->j:Z

    goto :goto_0
.end method

.method public static setDebugEnabled(Z)V
    .locals 0
    .param p0, "enableLogging"    # Z

    .prologue
    .line 462
    invoke-static {p0}, Lcom/ensighten/i;->a(Z)V

    .line 463
    return-void
.end method

.method public static setImagesInDumpEnabled(Z)V
    .locals 1
    .param p0, "enableImagesInDump"    # Z

    .prologue
    .line 506
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 26049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 507
    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 26411
    iput-boolean p0, v0, Lcom/ensighten/k;->e:Z

    goto :goto_0
.end method

.method public static setInstrumentationEnabled(Z)V
    .locals 0
    .param p0, "enableInstrumentation"    # Z

    .prologue
    .line 743
    invoke-static {p0}, Lcom/ensighten/j;->a(Z)V

    .line 744
    return-void
.end method

.method public static setOptimizationDumpMode(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50085
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 839
    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 50086
    iput-boolean p0, v0, Lcom/ensighten/k;->c:Z

    .line 50087
    iget-boolean v1, v0, Lcom/ensighten/k;->c:Z

    if-eqz v1, :cond_2

    .line 50090
    iput v2, v0, Lcom/ensighten/k;->i:I

    .line 50091
    iput v2, v0, Lcom/ensighten/k;->h:I

    .line 50092
    iget-object v1, v0, Lcom/ensighten/k;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50093
    iput-boolean v2, v0, Lcom/ensighten/k;->l:Z

    .line 843
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 50095
    if-eqz p0, :cond_3

    .line 50096
    invoke-virtual {v0}, Lcom/ensighten/M;->b()V

    .line 844
    :cond_3
    if-eqz p0, :cond_0

    .line 845
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->a()V

    goto :goto_0
.end method

.method public static setPrivacyDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p0, "privacyDialog"    # Landroid/app/Dialog;

    .prologue
    .line 390
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 11049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 391
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 11181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 11430
    iput-object p0, v0, Lcom/ensighten/e;->p:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static setRealtimeDumpEnabled(Z)V
    .locals 1
    .param p0, "enableRealtimeDump"    # Z

    .prologue
    .line 514
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 27049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 515
    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 27419
    iput-boolean p0, v0, Lcom/ensighten/k;->f:Z

    goto :goto_0
.end method

.method public static setReferrerInfo(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "referrerInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 614
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 36049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 615
    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 36787
    iput-object p0, v0, Lcom/ensighten/l;->g:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static setVideoHeartbeatAdBreaks(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "videoHeartbeatAdBreaks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/ensighten/U;>;>;"
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 40049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 647
    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 40899
    iput-object p0, v0, Lcom/ensighten/l;->a:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public static setVideoHeartbeatChapters(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "videoHeartbeatChapters":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/ensighten/U;>;>;"
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 42049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 663
    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 42907
    iput-object p0, v0, Lcom/ensighten/l;->b:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public static setVideoHeartbeatEnabled(Z)V
    .locals 1
    .param p0, "videoHeartbeatEnabled"    # Z

    .prologue
    .line 630
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 38049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 631
    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 38891
    iput-boolean p0, v0, Lcom/ensighten/l;->d:Z

    goto :goto_0
.end method

.method public static setViewHierarchyInDumpEnabled(Z)V
    .locals 1
    .param p0, "enableViewHierarchyInDump"    # Z

    .prologue
    .line 498
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 25049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 499
    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 25407
    iput-boolean p0, v0, Lcom/ensighten/k;->d:Z

    goto :goto_0
.end method

.method public static setWaitingForWebview(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 977
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50152
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 978
    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 981
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50153
    iput-boolean p0, v0, Lcom/ensighten/X;->e:Z

    goto :goto_0
.end method

.method public static showCrashDialog()V
    .locals 4

    .prologue
    .line 702
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 47049
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 703
    if-nez v0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v0

    .line 47085
    iget-boolean v1, v0, Lcom/ensighten/exception/ExceptionManager;->b:Z

    if-nez v1, :cond_0

    .line 47086
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/ensighten/exception/ExceptionManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Preview Crash"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Would you like to crash this app?"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 47087
    iget-object v2, v0, Lcom/ensighten/exception/ExceptionManager;->a:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ensighten/exception/ExceptionManager$1;

    invoke-direct {v3, v0}, Lcom/ensighten/exception/ExceptionManager$1;-><init>(Lcom/ensighten/exception/ExceptionManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 47093
    iget-object v2, v0, Lcom/ensighten/exception/ExceptionManager;->a:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 47094
    new-instance v2, Lcom/ensighten/exception/ExceptionManager$2;

    invoke-direct {v2, v0}, Lcom/ensighten/exception/ExceptionManager$2;-><init>(Lcom/ensighten/exception/ExceptionManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 47100
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 47101
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ensighten/exception/ExceptionManager;->b:Z

    goto :goto_0
.end method

.method public static toggleOptimization(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 805
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50032
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 806
    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 50033
    iput-boolean p0, v0, Lcom/ensighten/M;->i:Z

    goto :goto_0
.end method

.method public static webviewLoaded()V
    .locals 2

    .prologue
    .line 1017
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 50164
    iget-boolean v0, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 1018
    if-nez v0, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1021
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 50165
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ensighten/X;->l:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 252
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v3, "Launch URI is %s."

    new-array v4, v6, [Ljava/lang/Object;

    if-nez v2, :cond_4

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 254
    :cond_0
    if-eqz v2, :cond_2

    const-string v0, "ensighten"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    :try_start_0
    const-string v0, "adminMode"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->o:Z

    .line 257
    const-string v0, "testMode"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ensighten/Ensighten;->p:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    iget-boolean v0, p0, Lcom/ensighten/Ensighten;->o:Z

    if-eqz v0, :cond_2

    .line 262
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "Administrator mode enabled."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 264
    :cond_1
    invoke-static {v1}, Lcom/ensighten/Utils;->showAdminNotification(Landroid/app/Activity;)V

    .line 269
    :cond_2
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "Ensighten AdminMode: %b TestMode: %b."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 271
    :cond_3
    return-void

    .line 253
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/ensighten/e;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    .line 7049
    iget-boolean v1, v0, Lcom/ensighten/Ensighten;->n:Z

    .line 305
    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 8029
    :cond_0
    sget-object v1, Lcom/ensighten/c$a;->a:Lcom/ensighten/c;

    .line 8057
    iput-object p1, v1, Lcom/ensighten/c;->b:Ljava/lang/Class;

    .line 9029
    sget-object v1, Lcom/ensighten/c$a;->a:Lcom/ensighten/c;

    .line 309
    invoke-virtual {v1}, Lcom/ensighten/c;->a()Lcom/ensighten/E;

    move-result-object v1

    iput-object v1, v0, Lcom/ensighten/Ensighten;->g:Lcom/ensighten/E;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 275
    .line 5049
    iget-boolean v0, p0, Lcom/ensighten/Ensighten;->n:Z

    .line 275
    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Ljava/lang/String;

    .line 281
    const-string v1, "com.ensighten.privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/ensighten/Ensighten;->b:Lcom/ensighten/f;

    .line 5181
    iget-object v1, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 5462
    iput-boolean v2, v1, Lcom/ensighten/e;->o:Z

    .line 283
    const-string v1, "com.ensighten.privacy.dialog.btn.yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/ensighten/Ensighten;->b:Lcom/ensighten/f;

    .line 6181
    iget-object v1, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 6446
    iput-boolean v0, v1, Lcom/ensighten/e;->n:Z

    .line 285
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const-string v1, "Set privacy mode to %b."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 287
    :cond_2
    invoke-static {}, Lcom/ensighten/Utils;->hidePrivacyDialog()V

    goto :goto_0
.end method
