.class public Lcom/mcdonalds/app/ordering/PaymentProviderFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "PaymentProviderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mOneTimePayment:Z

.field private mPaymentID:I

.field private mPreferredCardDialogShown:Z

.field private mRegisterReturnURL:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mOneTimePayment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.PaymentProviderFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mRegisterReturnURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)Landroid/webkit/WebView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.PaymentProviderFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.PaymentProviderFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mOneTimePayment:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.PaymentProviderFragment"

    const-string v2, "access$400"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->updatePayment(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;)V

    return-void
.end method

.method private updatePayment(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;)V
    .locals 4
    .param p1, "customerModule"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p2, "jsonCardInfo"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "updatePayment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09040c

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 187
    new-instance v0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V

    invoke-virtual {p1, p2, v3, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayment(Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 220
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const v0, 0x7f09086f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mOneTimePayment:Z

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mPaymentID:I

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mURL:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_REGISTER_RETURN_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mRegisterReturnURL:Ljava/lang/String;

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mPreferredCardDialogShown:Z

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    const v1, 0x7f0400f5

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f11035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    .line 75
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 78
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$2;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 126
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;)V

    const-string v3, "paymentBridge"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mURL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f09040c

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 132
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget v2, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mPaymentID:I

    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->mOneTimePayment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method
