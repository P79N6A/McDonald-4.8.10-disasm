.class public Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LitePolicyUpdatesFragment.java"


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mContinueWithoutAccepting:Landroid/widget/TextView;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mOnCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickContinue:Landroid/view/View$OnClickListener;

.field private mOnClickContinueWithoutAccepting:Landroid/view/View$OnClickListener;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private toggle:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 173
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickContinue:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickContinueWithoutAccepting:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LitePolicyUpdatesFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->clickedTermsAndConditions()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LitePolicyUpdatesFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->clickedPrivacyPolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LitePolicyUpdatesFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mContinueButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LitePolicyUpdatesFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method private clickedPrivacyPolicy()V
    .locals 4

    .prologue
    const-string v2, "clickedPrivacyPolicy"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Privacy Policy"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "privacy"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "privacyURL":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "analytics_title"

    const v3, 0x7f09089e

    .line 252
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-class v2, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {p0, v2, v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 258
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v2, "No Privacy Policy URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clickedTermsAndConditions()V
    .locals 5

    .prologue
    const-string v2, "clickedTermsAndConditions"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Terms & Conditions"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "registerTOC"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "link":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "analytics_title"

    const v3, 0x7f09089f

    .line 229
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/web/WebActivity;

    const-string v4, "web"

    invoke-virtual {v2, v3, v4, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v2, "No Privacy Policy URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configurePolicyUpdatesString(Landroid/widget/TextView;)V
    .locals 12
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "configurePolicyUpdatesString"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.termsAndConditions.minimumRequiredAge"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "minAge":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, ""

    .line 114
    .local v1, "minDrivingAge":Ljava/lang/String;
    :goto_0
    const v7, 0x7f0904b8

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "template":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    const v7, 0x7f090486

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v5, "terms":Landroid/text/SpannableString;
    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    .line 123
    .local v6, "termsClick":Landroid/text/style/ClickableSpan;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    new-instance v2, Landroid/text/SpannableString;

    const v7, 0x7f09047f

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v2, "privacyPolicy":Landroid/text/SpannableString;
    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V

    .line 132
    .local v3, "privacyPolicyClick":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v2, v3, v9, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v9

    aput-object v2, v7, v10

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v4, v7}, Lcom/mcdonalds/app/util/StringUtils;->formatWithSpans(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    return-void

    .end local v1    # "minDrivingAge":Ljava/lang/String;
    .end local v2    # "privacyPolicy":Landroid/text/SpannableString;
    .end local v3    # "privacyPolicyClick":Landroid/text/style/ClickableSpan;
    .end local v4    # "template":Ljava/lang/String;
    .end local v5    # "terms":Landroid/text/SpannableString;
    .end local v6    # "termsClick":Landroid/text/style/ClickableSpan;
    :cond_0
    move-object v1, v0

    .line 112
    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const v0, 0x7f090898

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const v0, 0x7f0904f2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0904f2

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->setHasOptionsMenu(Z)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v3, 0x7f0400cc

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1102c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->toggle:Landroid/widget/CheckBox;

    .line 88
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->toggle:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    const v3, 0x7f1102c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "mAgreeTextView":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->configurePolicyUpdatesString(Landroid/widget/TextView;)V

    .line 94
    const v3, 0x7f110097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mContinueButton:Landroid/widget/Button;

    .line 95
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickContinue:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f1102c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mContinueWithoutAccepting:Landroid/widget/TextView;

    .line 98
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mContinueWithoutAccepting:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickContinueWithoutAccepting:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v3, 0x7f1102be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object v2
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 68
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 69
    return-void
.end method
