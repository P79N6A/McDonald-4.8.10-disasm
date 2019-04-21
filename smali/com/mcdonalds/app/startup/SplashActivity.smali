.class public Lcom/mcdonalds/app/startup/SplashActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "SplashActivity.java"


# static fields
.field private static final CHECK_FOR_ROOTED:Ljava/lang/String; = "interface.checkForRooted"

.field private static final DIRECT_BIN_DL:Ljava/lang/String; = "forceUpdate.directBinaryDownload"

.field private static final REQUEST_PERMISSION_STARTUP:I = 0x1

.field private static final REQUEST_PERMISSION_STORAGE_ACCESS:I = 0x2

.field public static final SOCIAL_LOGIN_LOGIN_FAIL:I = -0x839


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mPushIntent:Landroid/content/Intent;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mSocialNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

.field private mUpgradeRequired:Z

.field private mVersionName:Ljava/lang/String;

.field private permissionRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 90
    const-string v0, "-1"

    iput-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mVersionName:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mSocialNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->dropSplashScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/startup/SplashActivity;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$1100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->continueLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/startup/SplashActivity;->requestPermission(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    return-void
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/startup/SplashActivity;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iput-boolean p1, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mUpgradeRequired:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->proceedToNextScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->handleVersionUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->showUpgradeRequiredDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/startup/SplashActivity;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$800"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/startup/SplashActivity;->compareVersions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/startup/SplashActivity;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/startup/SplashActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.startup.SplashActivity"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method private authenticateCustomer(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const-string v0, "authenticateCustomer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v1, Lcom/mcdonalds/app/startup/SplashActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity$2;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 386
    return-void
.end method

.method private checkForRooted()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f0906b9

    const/4 v6, 0x1

    const-string v4, "checkForRooted"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 949
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const/16 v4, 0x9

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "/system/app/Superuser.apk"

    aput-object v4, v2, v3

    const-string v4, "/sbin/su"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "/system/bin/su"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "/system/xbin/su"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/xbin/su"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "/data/local/bin/su"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "/system/sd/xbin/su"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "/system/bin/failsafe/su"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "/data/local/su"

    aput-object v5, v2, v4

    .line 957
    .local v2, "paths":[Ljava/lang/String;
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 958
    .local v1, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 959
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 957
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 965
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "/system/etc/security/otacerts.zip"

    .line 966
    .local v0, "otaCertPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 967
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private checkIfForceUpdate()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v3, "checkIfForceUpdate"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "forceUpdate.baseUrl"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 488
    .local v2, "versionsURL":Ljava/lang/Object;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "forceUpdate.headerArgs.apiKey"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 490
    .local v1, "versionsAPIKey":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 492
    new-instance v0, Lcom/mcdonalds/app/startup/SplashActivity$5;

    invoke-direct {v0, p0, v2, v1}, Lcom/mcdonalds/app/startup/SplashActivity$5;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    .local v0, "promoRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    new-instance v4, Lcom/mcdonalds/app/startup/SplashActivity$6;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/startup/SplashActivity$6;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;)V

    invoke-virtual {v3, v0, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 609
    .end local v0    # "promoRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->proceedToNextScreen()V

    goto :goto_0
.end method

.method private compareVersions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "versionNow"    # Ljava/lang/String;
    .param p2, "referenceVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "compareVersions"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    aput-object p2, v9, v7

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "versionNowComponents":[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "referenceVersionComponents":[Ljava/lang/String;
    array-length v8, v5

    array-length v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 621
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 622
    array-length v8, v5

    if-ge v0, v8, :cond_0

    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 623
    .local v2, "nowDigit":I
    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_1

    aget-object v8, v4, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 625
    .local v3, "refDigit":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 632
    .end local v2    # "nowDigit":I
    .end local v3    # "refDigit":I
    :goto_3
    return v6

    :cond_0
    move v2, v6

    .line 622
    goto :goto_1

    .restart local v2    # "nowDigit":I
    :cond_1
    move v3, v6

    .line 623
    goto :goto_2

    .line 627
    .restart local v3    # "refDigit":I
    :cond_2
    if-le v2, v3, :cond_3

    move v6, v7

    .line 628
    goto :goto_3

    .line 621
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "nowDigit":I
    .end local v3    # "refDigit":I
    :cond_4
    move v6, v7

    .line 632
    goto :goto_3
.end method

.method private continueLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const-string v0, "continueLogin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->authenticateCustomer(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startGuestMode()V

    goto :goto_0
.end method

.method private didChangeDeviceLanguage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "didChangeDeviceLanguage"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->isClear()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    invoke-static {v1}, Lcom/mcdonalds/app/util/LanguageUtil;->setClear(Z)V

    .line 919
    const/4 v1, 0x1

    .line 921
    :cond_0
    return v1
.end method

.method private directBinaryDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "directDlLink"    # Ljava/lang/String;

    .prologue
    const-string v0, "directBinaryDownload"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x2

    const v2, 0x7f090625

    new-instance v3, Lcom/mcdonalds/app/startup/SplashActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity$10;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/startup/SplashActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 897
    return-void
.end method

.method private dispatchPushNotification()V
    .locals 7

    .prologue
    const-string v3, "dispatchPushNotification"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 717
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ed"

    .line 718
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/mcdonalds/app/customer/push/ExtendedData;

    .line 717
    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_0

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/mcdonalds/app/customer/push/ExtendedData;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .local v0, "extendedData":Lcom/mcdonalds/app/customer/push/ExtendedData;
    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getDeepLinkingID()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 733
    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getDeepLinkingID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 734
    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getDeepLinkingID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->values()[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 735
    invoke-static {}, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->values()[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getDeepLinkingID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v3, v4

    .line 742
    .local v2, "type":Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    :goto_1
    sget-object v3, Lcom/mcdonalds/app/startup/SplashActivity$12;->$SwitchMap$com$mcdonalds$app$customer$push$ExtendedData$DeepLinkingType:[I

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 776
    .end local v0    # "extendedData":Lcom/mcdonalds/app/customer/push/ExtendedData;
    .end local v2    # "type":Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    :goto_2
    return-void

    .line 717
    :cond_0
    :try_start_1
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v1

    .line 722
    .local v1, "jse":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExtendedData not valid json"

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity()V

    goto :goto_2

    .line 737
    .end local v1    # "jse":Lcom/google/gson/JsonSyntaxException;
    .restart local v0    # "extendedData":Lcom/mcdonalds/app/customer/push/ExtendedData;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Deep Linking ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getDeepLinkingID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v2, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->Dashboard:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    .restart local v2    # "type":Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    goto :goto_1

    .line 745
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity()V

    .line 746
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->finish()V

    goto :goto_2

    .line 751
    :pswitch_1
    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/ExtendedData;->getOfferID()Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/startup/SplashActivity$8;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/startup/SplashActivity$8;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;)V

    invoke-direct {p0, v3, v4}, Lcom/mcdonalds/app/startup/SplashActivity;->getOfferDetails(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_2

    .line 773
    .end local v0    # "extendedData":Lcom/mcdonalds/app/customer/push/ExtendedData;
    .end local v2    # "type":Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Extended Data missing from Push Notification"

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity()V

    goto :goto_2

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dropSplashScreen()V
    .locals 2

    .prologue
    const-string v0, "dropSplashScreen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/ServiceUtils;->fetchFavoriteLocations()V

    .line 432
    :cond_0
    const-string v0, "4.8.10"

    iput-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mVersionName:Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "forceUpdate.baseUrl"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->performForceUpdateCheck()V

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->checkIfForceUpdate()V

    goto :goto_0
.end method

.method private getOfferDetails(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 11
    .param p1, "offerId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const/4 v5, 0x0

    const-string v0, "getOfferDetails"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    if-nez p1, :cond_0

    .line 780
    invoke-interface {p2, v5, v5, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 844
    :goto_0
    return-void

    .line 785
    :cond_0
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 786
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v0, "offers"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 789
    .local v8, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-interface {p2, v5, v5, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 795
    :cond_1
    const/4 v7, 0x0

    .line 798
    .local v7, "lastLocation":Landroid/location/Location;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 803
    :goto_1
    const/4 v3, 0x0

    .line 804
    .local v3, "latitude":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 805
    .local v4, "longitude":Ljava/lang/Double;
    if-eqz v7, :cond_2

    .line 806
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 807
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 810
    :cond_2
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v9

    .line 811
    .local v9, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v10

    .line 812
    .local v10, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v10, :cond_3

    .line 813
    invoke-interface {p2, v5, v5, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 816
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/app/startup/SplashActivity$9;

    invoke-direct {v5, p0, p1, p2}, Lcom/mcdonalds/app/startup/SplashActivity$9;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 799
    .end local v3    # "latitude":Ljava/lang/Double;
    .end local v4    # "longitude":Ljava/lang/Double;
    .end local v9    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v10    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handlePushIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v5, "handlePushIntent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    .line 148
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    if-nez v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 152
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v5, "notification_clicked"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "_mId"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .local v3, "messageId":I
    const-string v5, "_dId"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "deliveryId":Ljava/lang/String;
    if-ne v3, v7, :cond_2

    .line 157
    const-string v5, "mId"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 160
    :cond_2
    if-ne v3, v7, :cond_3

    .line 161
    const-string v5, "_mId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    .local v4, "messageIdString":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    .end local v4    # "messageIdString":Ljava/lang/String;
    :cond_3
    if-eq v3, v7, :cond_0

    .line 168
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 169
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->trackNotification(ILjava/lang/String;I)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private handleVersionUpdate()V
    .locals 3

    .prologue
    const-string v1, "handleVersionUpdate"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "forceUpdate.directBinaryDownload"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "directDlLink":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->directBinaryDownload(Ljava/lang/String;)V

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->sendToPlayStore()V

    goto :goto_0
.end method

.method private performForceUpdateCheck()V
    .locals 3

    .prologue
    const-string v0, "performForceUpdateCheck"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    const-string v1, "4.8.10"

    new-instance v2, Lcom/mcdonalds/app/startup/SplashActivity$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/startup/SplashActivity$4;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;)V

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/SDKUtils;->checkForUpdates(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 483
    return-void
.end method

.method private preCacheCurrentStoreCatalogIfNeeded()V
    .locals 3

    .prologue
    const-string v1, "preCacheCurrentStoreCatalogIfNeeded"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "customer"

    .line 850
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 852
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->requestSync()V

    .line 857
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    return-void
.end method

.method private proceedToNextScreen()V
    .locals 6

    .prologue
    const-string v3, "proceedToNextScreen"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->shouldShowTutorial(Lcom/mcdonalds/sdk/services/configuration/Configuration;Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Z

    move-result v2

    .line 657
    .local v2, "shouldShowTutorial":Z
    const/4 v0, 0x0

    .line 659
    .local v0, "delayFinish":Z
    if-nez v2, :cond_3

    .line 661
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mPushIntent:Landroid/content/Intent;

    .line 662
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->dispatchPushNotification()V

    .line 664
    const/4 v0, 0x1

    .line 688
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->preCacheCurrentStoreCatalogIfNeeded()V

    .line 690
    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->finish()V

    .line 693
    :cond_0
    return-void

    .line 669
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.hideMobileVerificatinScreen"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 670
    const-class v3, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v4, "mobile_verify"

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity()V

    goto :goto_0

    .line 677
    :cond_3
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 680
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getAppOpen()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v4

    .line 677
    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 683
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/tutorial/TutorialActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private requestConfig(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const-string v0, "requestConfig"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    new-instance v2, Lcom/mcdonalds/app/startup/SplashActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity$11;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->networkUpdate(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;)V

    .line 912
    return-void
.end method

.method private requestPermission(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const/4 v3, 0x1

    const-string v0, "requestPermission"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    const v0, 0x7f090626

    new-instance v1, Lcom/mcdonalds/app/startup/SplashActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/app/startup/SplashActivity$3;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 424
    return-void
.end method

.method private sendToPlayStore()V
    .locals 4

    .prologue
    const-string v2, "sendToPlayStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    const-string v2, "market://details?id=com.mcdonalds.gma.hongkong"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 901
    .local v1, "googlePlayUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 902
    .local v0, "googlePlayIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 903
    return-void
.end method

.method private showUpgradeRequiredDialog()V
    .locals 3

    .prologue
    const-string v0, "showUpgradeRequiredDialog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090368

    .line 639
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/startup/SplashActivity$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/startup/SplashActivity$7;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;)V

    .line 640
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 650
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Force upgrade"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method private startGuestMode()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v3, "startGuestMode"

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const-string v0, "Guest"

    .line 292
    .local v0, "customerId":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Anonymous"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 298
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.splashscreen.speed"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "speed":I
    const/16 v3, 0x1770

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .end local v2    # "speed":I
    :cond_1
    div-int v1, v3, v2

    .line 300
    .local v1, "duration":I
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/mcdonalds/app/startup/SplashActivity$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/startup/SplashActivity$1;-><init>(Lcom/mcdonalds/app/startup/SplashActivity;)V

    int-to-long v6, v1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method

.method private startMainActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "startMainActivity"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->startMainActivity(Landroid/os/Bundle;)V

    .line 697
    return-void
.end method

.method private startMainActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "startMainActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 706
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 707
    return-void
.end method


# virtual methods
.method public getSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 2

    .prologue
    const-string v0, "getSocialNetwork"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mSocialNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/mcdonalds/app/analytics/ensighten/EnsightenWrapper;->init(Landroid/content/Context;)V

    .line 108
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 110
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v4

    const-class v5, Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/mcdonalds/sdk/McDonalds;->initializeService(Landroid/content/Intent;)V

    .line 113
    :cond_0
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 114
    iget-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    .line 116
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 118
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->getContainerResource()I

    move-result v3

    new-instance v4, Lcom/mcdonalds/app/startup/SplashFragment;

    invoke-direct {v4}, Lcom/mcdonalds/app/startup/SplashFragment;-><init>()V

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/startup/SplashActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 124
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mcdonalds/app/startup/SplashActivity;->permissionRequested:Z

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/NewRelic/NewRelicWrapper;->startNewRelic(Landroid/app/Application;)V

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/startup/SplashActivity;->handlePushIntent(Landroid/content/Intent;)V

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "INIT"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 135
    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/InitializationAction;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/InitializationAction;-><init>()V

    .line 136
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 138
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 140
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.checkForRooted"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->checkForRooted()V

    .line 143
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onDestroy()V

    .line 250
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 251
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->handlePushIntent(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 241
    iget-boolean v0, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mUpgradeRequired:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->showUpgradeRequiredDialog()V

    .line 244
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x1

    .line 176
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onStart()V

    .line 178
    invoke-direct {p0}, Lcom/mcdonalds/app/startup/SplashActivity;->didChangeDeviceLanguage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 185
    .local v1, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "prefSavedLoginPass":Ljava/lang/String;
    const-string v9, "com.mcdonalds.gma.hongkong.account"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "stg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 190
    const/4 v5, -0x1

    .line 195
    .local v5, "prefSavedSocialID":I
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 196
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eq v5, v11, :cond_5

    .line 197
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/app/McDonaldsApplication;->isColdStart()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_2
    move v0, v8

    .line 199
    .local v0, "autoLogin":Z
    :goto_1
    if-eq v5, v11, :cond_3

    move v7, v8

    .line 201
    .local v7, "useSocial":Z
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getPrefRememberLogin()Z

    move-result v6

    .line 202
    .local v6, "rememberLogin":Z
    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    .line 203
    if-eqz v7, :cond_7

    .line 204
    const/4 v9, 0x3

    if-eq v5, v9, :cond_6

    .line 205
    new-instance v8, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-direct {v8, v5, v5}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>(II)V

    iput-object v8, p0, Lcom/mcdonalds/app/startup/SplashActivity;->mSocialNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .line 234
    :goto_2
    const-string v8, "app_open_count"

    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void

    .line 192
    .end local v0    # "autoLogin":Z
    .end local v5    # "prefSavedSocialID":I
    .end local v6    # "rememberLogin":Z
    .end local v7    # "useSocial":Z
    :cond_4
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v5

    .restart local v5    # "prefSavedSocialID":I
    goto :goto_0

    :cond_5
    move v0, v7

    .line 197
    goto :goto_1

    .line 210
    .restart local v0    # "autoLogin":Z
    .restart local v6    # "rememberLogin":Z
    .restart local v7    # "useSocial":Z
    :cond_6
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 211
    .local v2, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v8}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 213
    invoke-virtual {v2, v8}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 214
    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 215
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_2

    .line 221
    .end local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_7
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 223
    .restart local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_2

    .line 231
    .end local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_8
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_2
.end method

.method public performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 6
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "performLogin"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 267
    .local v1, "permission":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    .local v0, "intialRequest":Z
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, v1, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->requestPermission(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 271
    iput-boolean v5, p0, Lcom/mcdonalds/app/startup/SplashActivity;->permissionRequested:Z

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "configUpdate"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->requestConfig(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/startup/SplashActivity;->continueLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_0
.end method
