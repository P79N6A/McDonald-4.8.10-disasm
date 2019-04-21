.class Lcom/threatmetrix/TrustDefender/t;
.super Lcom/threatmetrix/TrustDefender/at;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/String;

.field private static final m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Lcom/threatmetrix/TrustDefender/u;

.field private j:Z

.field private k:Landroid/webkit/WebSettings;

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    const-class v0, Lcom/threatmetrix/TrustDefender/t;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    .line 188
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "evaluateJavascript"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v1, "Failed to find expected function: evaluateJavascript"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "getDefaultUserAgent"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    if-lt v0, v7, :cond_1

    .line 198
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v1, "Failed to find expected function: getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setPluginState"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/webkit/WebSettings$PluginState;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_3

    .line 206
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v1, "Failed to find expected function: setPluginState"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_3
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "removeJavascriptInterface"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 213
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v1, "Failed to find expected function: removeJavascriptInterface"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_4
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "addJavascriptInterface"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    sget v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    if-lt v0, v7, :cond_5

    .line 220
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v1, "Failed to find expected function: addJavascriptInterface"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 225
    sput-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.13"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v1, Lcom/threatmetrix/TrustDefender/g$b$b;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefender/u;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsInterface"    # Lcom/threatmetrix/TrustDefender/u;
    .param p3, "needWebView"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 325
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/at;-><init>()V

    .line 167
    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    .line 168
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    .line 169
    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    .line 178
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    .line 330
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    .line 331
    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "JSExecutor() Build: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-eqz v2, :cond_1

    const-string v2, " busted js interface "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " has async interface "

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    .line 337
    iput-boolean p3, p0, Lcom/threatmetrix/TrustDefender/t;->l:Z

    .line 338
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 407
    :cond_0
    :goto_2
    return-void

    .line 331
    :cond_1
    const-string v2, " normal js interface "

    goto :goto_0

    :cond_2
    const-string v2, " has no async interface "

    goto :goto_1

    .line 343
    :cond_3
    if-eqz p3, :cond_0

    .line 350
    invoke-static {}, Lcom/threatmetrix/TrustDefender/ag;->a()Z

    move-result v0

    .line 351
    .local v0, "hasWebView":Z
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    .line 353
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ag;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    .line 354
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 361
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    if-nez v2, :cond_4

    .line 363
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "WebView re-used from previous instance. Using a short-lived TrustDefender object is not recommended. Better profiling performance will be achieved by re-using a long-lived TrustDefender instance"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_4
    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Webview "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    if-eqz v2, :cond_8

    const-string v2, "init\'d"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    if-nez v2, :cond_5

    .line 369
    new-instance v2, Lcom/threatmetrix/TrustDefender/u;

    invoke-direct {v2, v5}, Lcom/threatmetrix/TrustDefender/u;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    .line 370
    :cond_5
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 372
    .local v1, "m_webViewClient":Landroid/webkit/WebViewClient;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->k:Landroid/webkit/WebSettings;

    .line 373
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 376
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->k:Landroid/webkit/WebSettings;

    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->f:Ljava/lang/reflect/Method;

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 380
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v2, :cond_6

    .line 382
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->g:Ljava/lang/reflect/Method;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "androidJSInterface"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_6
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 388
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 391
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_7

    .line 392
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "alternate JS interface but no global latch"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_7
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "JSExecutor() alternate JS interface detected"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 366
    .end local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :cond_8
    const-string v2, "un-init\'d"

    goto :goto_3

    .line 395
    .restart local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :cond_9
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v2, :cond_a

    .line 397
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->h:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    aput-object v5, v4, v6

    const-string v5, "androidJSInterface"

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 401
    :cond_a
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_b

    .line 402
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "broken JS interface but no global latch"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_b
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "JSExecutor() Broken JS interface detected, using workaround"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/threatmetrix/TrustDefender/as;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    invoke-direct {v3, v4}, Lcom/threatmetrix/TrustDefender/as;-><init>(Lcom/threatmetrix/TrustDefender/u;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/threatmetrix/TrustDefender/t;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 261
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v4, "Generating a browser string"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    .local v2, "webkitVersion":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mozilla/5.0 (Linux; U; Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefender/g$b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Build/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefender/g$b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AppleWebKit/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (KHTML, like Gecko) Version/4.0 Mobile Safari/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefender/ar;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 308
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "webkitVersion":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/threatmetrix/TrustDefender/t;->m:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "webkitVersion":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    const/4 v1, 0x0

    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->e:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    .end local v0    # "userAgent":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 281
    .restart local v0    # "userAgent":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/t;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/t;->k:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/t;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    .end local v0    # "userAgent":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "js"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 483
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    if-nez v5, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v4

    .line 485
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, ""

    goto :goto_0

    .line 487
    :cond_2
    const/4 v3, 0x0

    .line 488
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v5

    if-nez v5, :cond_3

    .line 494
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v3, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 495
    .restart local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    invoke-virtual {v5, v3}, Lcom/threatmetrix/TrustDefender/u;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 498
    :cond_3
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:(function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "fullJS":Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getJSResult() attempting to execute: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iput-object v4, v5, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    .line 509
    const/4 v2, 0x0

    .line 510
    .local v2, "invokeFailed":Z
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 514
    :try_start_0
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->d:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 553
    :goto_2
    if-eqz v2, :cond_7

    .line 556
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_0

    .line 558
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getJSResult countdown for latch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v7, v7, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v7, v7, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefender/u;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 500
    .end local v1    # "fullJS":Ljava/lang/String;
    .end local v2    # "invokeFailed":Z
    :cond_4
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v5, :cond_5

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:window.androidJSInterface.getString((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 503
    .end local v1    # "fullJS":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:alert((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 516
    .restart local v2    # "invokeFailed":Z
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    const/4 v2, 0x1

    .line 535
    goto :goto_2

    .line 521
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    const/4 v2, 0x1

    .line 535
    goto/16 :goto_2

    .line 526
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    const/4 v2, 0x1

    .line 535
    goto/16 :goto_2

    .line 531
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    const/4 v2, 0x1

    .line 535
    goto/16 :goto_2

    .line 541
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_2

    .line 543
    :catch_4
    move-exception v0

    .line 549
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 563
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 566
    if-eqz v3, :cond_9

    .line 568
    sget-object v4, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult waiting for latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 571
    sget-object v4, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult timeout waiting for latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 581
    sget-object v4, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v5, "getJSResult() After latch: got null"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_4
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 576
    :cond_9
    sget-object v4, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v5, "latch == null"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 585
    :cond_a
    sget-object v4, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult() After latch: got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v6, v6, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final a(Z)Z
    .locals 1
    .param p1, "needWebview"    # Z

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/t;->l:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 413
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init() - init\'d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    if-nez v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    if-nez v2, :cond_2

    .line 424
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "init() - No web view, nothing needs to be done"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    goto :goto_0

    .line 428
    :cond_2
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "init() loading bogus page"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    .line 435
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 437
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 438
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "<html><head></head><body onLoad=\'javascript:window.androidJSInterface.getString(1)\'></body></html>"

    .line 440
    .local v0, "html":Ljava/lang/String;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    invoke-virtual {v2, v1}, Lcom/threatmetrix/TrustDefender/u;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 441
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iput-object v7, v2, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    .line 447
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->a:Landroid/webkit/WebView;

    const-string v3, "text/html"

    invoke-virtual {v2, v0, v3, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/t;->j:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v2

    if-nez v2, :cond_6

    .line 454
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waiting for latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 457
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "timed out waiting for javascript"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    .end local v0    # "html":Ljava/lang/String;
    :cond_3
    const-string v0, "<html><head></head><body></body></html>"

    .restart local v0    # "html":Ljava/lang/String;
    goto :goto_1

    .line 461
    :cond_4
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    .line 462
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in init() count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 466
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    const-string v3, "init() After latch: got null"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_5
    sget-object v2, Lcom/threatmetrix/TrustDefender/t;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init() After latch: got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/t;->c:Lcom/threatmetrix/TrustDefender/u;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefender/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_6
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/t;->b:Z

    goto/16 :goto_0
.end method
