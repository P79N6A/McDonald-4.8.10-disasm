.class public Lcom/mcdonalds/app/web/WebFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "WebFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;,
        Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;
    }
.end annotation


# instance fields
.field private mAnalyticsTitle:Ljava/lang/String;

.field private mClient:Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullScreenVisible:Z

.field private mLink:Ljava/lang/String;

.field private mListener:Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;

.field private mTargetView:Landroid/widget/FrameLayout;

.field private mTitle:Ljava/lang/String;

.field private mViewTitle:I

.field private mWebView:Landroid/webkit/WebView;

.field private final mWebviewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mTitle"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mFullScreenVisible:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/mcdonalds/app/web/WebFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/web/WebFragment$1;-><init>(Lcom/mcdonalds/app/web/WebFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebviewClient:Landroid/webkit/WebViewClient;

    .line 59
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/web/WebFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/web/WebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/web/WebFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mViewTitle:I

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/web/WebFragment;)Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mListener:Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/web/WebFragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/web/WebFragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/web/WebFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/web/WebFragment;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mTargetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/web/WebFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/web/WebFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.web.WebFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-boolean p1, p0, Lcom/mcdonalds/app/web/WebFragment;->mFullScreenVisible:Z

    return p1
.end method

.method public static newEmailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "cc"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.web.WebFragment"

    const-string v3, "newEmailIntent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    new-array v2, v7, [Ljava/lang/String;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    const-string v0, "canGoBack"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mAnalyticsTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataLayerPage()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "getDataLayerPage"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 72
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 73
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getDataLayerPage()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 74
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "registerTOC"

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v1, "Terms"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "privacy"

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const-string v1, "Privacy"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "faq"

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const-string v1, "FAQ"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "interface.aboutMcDonald.careers"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    const-string v1, "Career"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "interface.aboutMcDonald.contactUs"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    const-string v1, "ContactUs"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "interface.aboutMcDonald.charity"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    const-string v1, "RMHC"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "interface.nutritionalInfo.legalDisclaimer"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    const-string v1, "NutritionInfo"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v1    # "result":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    const-string v3, "eula"

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    const-string v1, "EULA"

    .restart local v1    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 90
    .end local v1    # "result":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    const-string v3, "Customer Support"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 91
    const-string v1, "CustomerSupport"

    .restart local v1    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 93
    .end local v1    # "result":Ljava/lang/String;
    :cond_9
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getDataLayerPage()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    const-string v0, "goBack"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mFullScreenVisible:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mClient:Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;

    invoke-virtual {v0}, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->onHideCustomView()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    const v2, 0x7f04012c

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "mainView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/web/WebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string v2, "view_title"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mViewTitle:I

    .line 115
    const-string v2, "link"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    .line 116
    const-string v2, "analytics_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 119
    :cond_0
    const v2, 0x7f11035f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    .line 120
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 126
    :cond_1
    new-instance v2, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;-><init>(Lcom/mcdonalds/app/web/WebFragment;Lcom/mcdonalds/app/web/WebFragment$1;)V

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mClient:Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;

    .line 127
    const v2, 0x7f110422

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mContentView:Landroid/widget/FrameLayout;

    .line 128
    const v2, 0x7f110423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mTargetView:Landroid/widget/FrameLayout;

    .line 130
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 135
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 136
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 137
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 138
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 139
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 140
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 141
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment;->mClient:Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 145
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebviewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment;->mLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    :cond_3
    return-object v1
.end method
