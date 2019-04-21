.class public Lcom/alipay/sdk/auth/AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "DefaultLocale"
    }
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/auth/AuthActivity$a;,
        Lcom/alipay/sdk/auth/AuthActivity$b;,
        Lcom/alipay/sdk/auth/AuthActivity$c;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/sdk/widget/a;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string/jumbo v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/authjs/a;)V

    return-void
.end method

.method private a(Lcom/alipay/sdk/authjs/a;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/sdk/authjs/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    .line 343
    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/alipay/sdk/auth/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/auth/c;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "msp"

    invoke-static {v1, v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alipay/sdk/auth/AuthActivity;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const-string v0, "SDKLite://h5quit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/sdk/auth/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 393
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Lcom/alipay/sdk/widget/a;

    .line 394
    return-void
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    new-instance v0, Lcom/alipay/sdk/authjs/d;

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/sdk/auth/b;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/authjs/d;-><init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V

    .line 329
    invoke-virtual {v0, p1}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alipay/sdk/auth/AuthActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/sdk/auth/AuthActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/sdk/auth/AuthActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-boolean v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->h:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v0, "AuthActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "AuthActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 78
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 167
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "AuthActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 74
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 82
    :cond_0
    :try_start_3
    const-string v1, "redirectUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    .line 83
    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/alipay/sdk/util/m;->f(Ljava/lang/String;)Z

    move-result v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 91
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 84
    :catch_2
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 86
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 94
    :cond_1
    invoke-super {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->f:Landroid/os/Handler;

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    invoke-virtual {p0, v1, v2}, Lcom/alipay/sdk/auth/AuthActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 104
    iget-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/util/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 109
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 110
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 111
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 113
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 114
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 117
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 118
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 119
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 120
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 121
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$c;

    invoke-direct {v2, p0, v6}, Lcom/alipay/sdk/auth/AuthActivity$c;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/auth/a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$b;

    invoke-direct {v2, p0, v6}, Lcom/alipay/sdk/auth/AuthActivity$b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/auth/a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 123
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/a;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/a;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 138
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 142
    :try_start_4
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 150
    :cond_2
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    :cond_3
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 167
    :cond_4
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 153
    :catch_3
    move-exception v0

    .line 155
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_3

    .line 157
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 161
    :catch_4
    move-exception v0

    goto :goto_3

    .line 146
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 404
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    .line 413
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
