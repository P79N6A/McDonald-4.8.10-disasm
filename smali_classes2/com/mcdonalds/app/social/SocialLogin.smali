.class public Lcom/mcdonalds/app/social/SocialLogin;
.super Ljava/lang/Object;
.source "SocialLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;,
        Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;
    }
.end annotation


# static fields
.field private static googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# instance fields
.field private final mClientCallback:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;

.field private final mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private final mFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

.field private mListener:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

.field private mSocialNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewHolder:Lcom/mcdonalds/app/social/SocialLoginViewHolder;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;Lcom/mcdonalds/app/social/SocialLoginViewHolder;Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;)V
    .locals 1
    .param p1, "navFragment"    # Lcom/mcdonalds/app/ui/URLNavigationFragment;
    .param p2, "viewHolder"    # Lcom/mcdonalds/app/social/SocialLoginViewHolder;
    .param p3, "clientCallback"    # Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLogin;->mFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    .line 71
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLogin;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 72
    iput-object p2, p0, Lcom/mcdonalds/app/social/SocialLogin;->mViewHolder:Lcom/mcdonalds/app/social/SocialLoginViewHolder;

    .line 73
    iput-object p3, p0, Lcom/mcdonalds/app/social/SocialLogin;->mClientCallback:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/social/SocialLogin;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLogin;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLogin"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/social/SocialLogin;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLogin;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLogin"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/social/SocialLogin;)Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLogin;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLogin"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLogin;->mListener:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/social/SocialLogin;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLogin;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLogin"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLogin;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/social/SocialLogin;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLogin;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLogin"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/social/SocialLogin;->onSocialNetworkClicked(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.social.SocialLogin"

    const-string v1, "access$400"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/mcdonalds/app/social/SocialLogin;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public static clearSocialLogins(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.social.SocialLogin"

    const-string v3, "clearSocialLogins"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 207
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.disableFacebookAndGoogle"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 208
    .local v0, "disableFacebookAndGoogle":Z
    if-nez v0, :cond_1

    .line 209
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mcdonalds/app/social/SocialLogin$5;

    invoke-direct {v2}, Lcom/mcdonalds/app/social/SocialLogin$5;-><init>()V

    .line 210
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/social/SocialLogin$4;

    invoke-direct {v2}, Lcom/mcdonalds/app/social/SocialLogin$4;-><init>()V

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    .line 232
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    .line 233
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/app/social/SocialLogin;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 236
    sget-object v1, Lcom/mcdonalds/app/social/SocialLogin;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 238
    :cond_1
    return-void
.end method

.method private onSocialNetworkClicked(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 3
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const-string v0, "onSocialNetworkClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLogin;->mListener:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLogin;->mListener:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 200
    :cond_0
    return-void
.end method

.method private refreshViews()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x0

    const-string v9, "refreshViews"

    invoke-static {p0, v9, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-array v1, v11, [I

    fill-array-data v1, :array_0

    .line 146
    .local v1, "buttonIds":[I
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 148
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mViewHolder:Lcom/mcdonalds/app/social/SocialLoginViewHolder;

    invoke-virtual {v9}, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->getItemsContainer()Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/lit8 v6, v9, 0x3

    .line 153
    .local v6, "numRows":I
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v6, v9

    .line 155
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 158
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .local v8, "rowCounter":I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 159
    const v9, 0x7f040194

    invoke-virtual {v3, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 162
    .local v7, "rowContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    if-ge v2, v11, :cond_2

    .line 164
    mul-int/lit8 v9, v8, 0x3

    add-int v4, v9, v2

    .line 165
    .local v4, "itemIndex":I
    aget v9, v1, v2

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, "button":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 170
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .line 172
    .local v5, "network":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getImageResource()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    new-instance v9, Lcom/mcdonalds/app/social/SocialLogin$3;

    invoke-direct {v9, p0, v5}, Lcom/mcdonalds/app/social/SocialLogin$3;-><init>(Lcom/mcdonalds/app/social/SocialLogin;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .end local v5    # "network":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v2    # "index":I
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "itemIndex":I
    .end local v7    # "rowContainer":Landroid/widget/LinearLayout;
    .end local v8    # "rowCounter":I
    :cond_1
    move v9, v10

    .line 153
    goto :goto_0

    .line 191
    .restart local v2    # "index":I
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v7    # "rowContainer":Landroid/widget/LinearLayout;
    .restart local v8    # "rowCounter":I
    :cond_2
    iget-object v9, p0, Lcom/mcdonalds/app/social/SocialLogin;->mViewHolder:Lcom/mcdonalds/app/social/SocialLoginViewHolder;

    invoke-virtual {v9}, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->getItemsContainer()Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 194
    .end local v2    # "index":I
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "numRows":I
    .end local v7    # "rowContainer":Landroid/widget/LinearLayout;
    .end local v8    # "rowCounter":I
    :cond_3
    return-void

    .line 144
    nop

    :array_0
    .array-data 4
        0x7f110520
        0x7f110521
        0x7f110522
    .end array-data
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin;->mSocialNetworks:Ljava/util/List;

    if-nez v1, :cond_1

    .line 85
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getSharedInstance()Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v1

    const-string v2, "mwcustomersecurity"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnectorImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 87
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v1, Lcom/mcdonalds/app/social/SocialLogin$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/social/SocialLogin$1;-><init>(Lcom/mcdonalds/app/social/SocialLogin;)V

    invoke-interface {v0, v1}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 140
    .end local v0    # "connector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v2, Lcom/mcdonalds/app/social/SocialLogin$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/social/SocialLogin$2;-><init>(Lcom/mcdonalds/app/social/SocialLogin;)V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialLoginCatalog(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLogin;->refreshViews()V

    goto :goto_0
.end method

.method public setListener(Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLogin;->mListener:Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    .line 78
    return-void
.end method
