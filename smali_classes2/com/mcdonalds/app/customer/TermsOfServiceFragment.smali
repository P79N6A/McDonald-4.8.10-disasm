.class public Lcom/mcdonalds/app/customer/TermsOfServiceFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "TermsOfServiceFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAgeVerification:Ljava/lang/String;

.field private mAgreeButton:Landroid/widget/Button;

.field private mAgreeCheckBox:Landroid/widget/CheckBox;

.field private mDrivingWarningCheckBox:Landroid/widget/CheckBox;

.field private mLink:Ljava/lang/String;

.field private mShowDrivingWarning:Z

.field private mTitle:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.TermsOfServiceFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgeVerification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.TermsOfServiceFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.TermsOfServiceFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mShowDrivingWarning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.TermsOfServiceFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    const v0, 0x7f09089f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "onCheckedChanged"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mDrivingWarningCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mDrivingWarningCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 212
    .local v1, "isDrivingChecked":Z
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v0, v3

    .line 213
    .local v0, "isAgreeChecked":Z
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    return-void

    .end local v0    # "isAgreeChecked":Z
    .end local v1    # "isDrivingChecked":Z
    :cond_2
    move v1, v2

    .line 211
    goto :goto_0

    .restart local v1    # "isDrivingChecked":Z
    :cond_3
    move v0, v2

    .line 212
    goto :goto_1

    .restart local v0    # "isAgreeChecked":Z
    :cond_4
    move v3, v2

    .line 213
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 64
    const v4, 0x7f040125

    invoke-virtual {p1, v4, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "mainView":Landroid/view/View;
    const v4, 0x7f110412

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeButton:Landroid/widget/Button;

    .line 67
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeButton:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;-><init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "minimunRequiredAge"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgeVerification:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgeVerification:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    const v4, 0x7f11040f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900aa

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgeVerification:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "checkBoxText":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    .end local v1    # "checkBoxText":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "showDrivingWarning"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mShowDrivingWarning:Z

    .line 91
    iget-boolean v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mShowDrivingWarning:Z

    if-eqz v4, :cond_2

    .line 92
    const v4, 0x7f110411

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mDrivingWarningCheckBox:Landroid/widget/CheckBox;

    .line 93
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mDrivingWarningCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mDrivingWarningCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    :goto_1
    const v4, 0x7f0907d4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mTitle:Ljava/lang/String;

    .line 103
    const-string v4, "registerTOC"

    invoke-static {v4}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "tocURL":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v4, "link"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object v3, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mLink:Ljava/lang/String;

    .line 112
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_2
    const v4, 0x7f11035f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    .line 114
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 116
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 117
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 118
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 119
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 120
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$2;-><init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;-><init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->mLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-object v2

    .line 86
    .end local v3    # "tocURL":Ljava/lang/String;
    :cond_1
    const v4, 0x7f11040e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 96
    :cond_2
    const v4, 0x7f110410

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 109
    .restart local v3    # "tocURL":Ljava/lang/String;
    :cond_3
    const-string v4, "No terms URL Defined"

    invoke-static {v4}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
