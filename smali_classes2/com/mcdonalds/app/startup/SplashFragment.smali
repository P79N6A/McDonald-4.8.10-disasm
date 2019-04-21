.class public Lcom/mcdonalds/app/startup/SplashFragment;
.super Lcom/mcdonalds/app/social/SocialLoginFragment;
.source "SplashFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mSocialLoginInProgress:Z

.field private mSocialServiceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/mcdonalds/app/startup/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/startup/SplashFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getAnalyticsTitle"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-object v1
.end method

.method protected getLayoutResourceId()I
    .locals 2

    .prologue
    const-string v0, "getLayoutResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const v0, 0x7f040114

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x106000b

    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 36
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 37
    .local v5, "startColor":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 39
    .local v2, "endColor":I
    const-string v7, "backgroundColor"

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v3, v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 41
    .local v0, "colorFade":Landroid/animation/ObjectAnimator;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.splashscreen.speed"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v4

    .line 42
    .local v4, "speed":I
    const/16 v7, 0xbb8

    if-nez v4, :cond_0

    move v4, v6

    .end local v4    # "speed":I
    :cond_0
    div-int v1, v7, v4

    .line 44
    .local v1, "duration":I
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    return-object v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/startup/SplashActivity;

    .line 55
    .local v1, "splashActivity":Lcom/mcdonalds/app/startup/SplashActivity;
    invoke-virtual {v1}, Lcom/mcdonalds/app/startup/SplashActivity;->getSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v0

    .line 56
    .local v0, "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/startup/SplashFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 6
    .param p1, "results"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "onSocialNetworkAuthenticationComplete"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 88
    .local v0, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 90
    iget v2, p0, Lcom/mcdonalds/app/startup/SplashFragment;->mSocialServiceID:I

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 91
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/startup/SplashActivity;

    .line 95
    .local v1, "splashActivity":Lcom/mcdonalds/app/startup/SplashActivity;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 97
    iput-boolean v4, p0, Lcom/mcdonalds/app/startup/SplashFragment;->mSocialLoginInProgress:Z

    .line 98
    return-void
.end method

.method public onSocialNetworkAvailable()V
    .locals 2

    .prologue
    const-string v0, "onSocialNetworkAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 4
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onSocialNetworkSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-boolean v0, p0, Lcom/mcdonalds/app/startup/SplashFragment;->mSocialLoginInProgress:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 81
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/startup/SplashFragment;->mSocialServiceID:I

    .line 82
    iput-boolean v3, p0, Lcom/mcdonalds/app/startup/SplashFragment;->mSocialLoginInProgress:Z

    goto :goto_0
.end method
