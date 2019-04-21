.class public Lcom/mcdonalds/app/ordering/ThirdPartActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ThirdPartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 144
    new-instance v0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$3;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 158
    new-instance v0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ThirdPartActivity"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->parseResultsHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Landroid/net/Uri;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ThirdPartActivity"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->loadResultsURI(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ThirdPartActivity"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->processHiddenJsonData(Ljava/lang/String;)V

    return-void
.end method

.method private loadResultsURI(Landroid/net/Uri;)V
    .locals 6
    .param p1, "resultsUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const-string v2, "loadResultsURI"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 77
    .local v0, "queue":Lcom/android/volley/RequestQueue;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V

    new-instance v4, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$2;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 107
    .local v1, "request":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 108
    return-void
.end method

.method private parseResultsHtml(Ljava/lang/String;)V
    .locals 7
    .param p1, "resultsHtml"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const-string v3, "parseResultsHtml"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v3, "<input type=\"hidden\" name=\"hiddenResult\" id=\"hiddenResult\" value=\"(.*)\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 114
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 116
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "resultsJson":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->processHiddenJsonData(Ljava/lang/String;)V

    .line 121
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "resultsJson":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private processHiddenJsonData(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const-string v4, "processHiddenJsonData"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/mcdonalds/app/model/PaymentResultResponse;

    instance-of v6, v4, Lcom/google/gson/Gson;

    if-nez v6, :cond_1

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/mcdonalds/app/model/PaymentResultResponse;

    .line 129
    .local v3, "response":Lcom/mcdonalds/app/model/PaymentResultResponse;
    invoke-virtual {v3}, Lcom/mcdonalds/app/model/PaymentResultResponse;->getData()Lcom/mcdonalds/app/model/PaymentResult;

    move-result-object v2

    .line 131
    .local v2, "paymentResult":Lcom/mcdonalds/app/model/PaymentResult;
    if-eqz v2, :cond_0

    .line 133
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    .line 134
    .local v1, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {v2}, Lcom/mcdonalds/app/model/PaymentResult;->getOrderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lcom/mcdonalds/app/model/PaymentResult;->getPaymentDataId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentDataId(I)V

    .line 136
    invoke-virtual {v2}, Lcom/mcdonalds/app/model/PaymentResult;->getCutomerPaymentMethodId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setCustomerPaymentMethodId(I)V

    .line 138
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->finish()V

    .line 142
    .end local v1    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .end local v2    # "paymentResult":Lcom/mcdonalds/app/model/PaymentResult;
    .end local v3    # "response":Lcom/mcdonalds/app/model/PaymentResultResponse;
    :cond_0
    return-void

    .line 128
    :cond_1
    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v0, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 54
    const-string v3, "payment_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 57
    const v3, 0x7f040126

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->setContentView(I)V

    .line 59
    const v3, 0x7f110413

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 60
    .local v2, "webView":Landroid/webkit/WebView;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 65
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 66
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    :cond_0
    new-instance v3, Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$PaymentInterface;-><init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;)V

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :cond_1
    return-void
.end method
