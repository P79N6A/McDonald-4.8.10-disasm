.class public abstract Lcom/mcdonalds/app/social/SocialLoginFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;
.implements Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/social/SocialLoginFragment$GoogleUserInfoAsyncTask;
    }
.end annotation


# static fields
.field public static final JSON:Lcom/squareup/okhttp/MediaType;

.field private static final RC_SIGN_IN:I = 0xa

.field private static final RC_USER_RECOVERABLE_ERROR:I = 0xb

.field private static final RC_WECHAT_SIGN_IN:I = 0xc

.field private static final REQUEST_PERMISSION_ACCOUNT:I = 0xd

.field public static final TAG:Ljava/lang/String; = "SocialLoginFragment"

.field public static code:Ljava/lang/String;

.field private static getUserInfoRequest:Ljava/lang/String;

.field public static mStateToken:Lcom/mcdonalds/sdk/AsyncToken;

.field private static final weChatAppId:Ljava/lang/String;


# instance fields
.field protected acces_token:Ljava/lang/String;

.field private disableFacebookAndGoogle:Z

.field private mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field private mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

.field private mDisableSocialButtons:Z

.field private mFBUserInfoInProgress:Z

.field private mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mIntentInProgress:Z

.field private mSignInClicked:Z

.field private mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

.field private mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field protected nickName:Ljava/lang/String;

.field protected openid:Ljava/lang/String;

.field protected provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v0

    const v1, 0x7f090a8e

    .line 123
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->weChatAppId:Ljava/lang/String;

    .line 128
    const-string v0, "https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID"

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->getUserInfoRequest:Ljava/lang/String;

    .line 130
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->JSON:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mDisableSocialButtons:Z

    .line 503
    new-instance v0, Lcom/mcdonalds/app/social/SocialLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/social/SocialLoginFragment$2;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 749
    iput-boolean v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFBUserInfoInProgress:Z

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/social/SocialLoginFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSignInClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/social/SocialLoginFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireGoogleUserInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/Session;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Lcom/facebook/Session;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireFacebookUserInfo(Lcom/facebook/Session;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v1, "access$500"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->getUserInfoRequest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->doGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onGooglePlusFlowComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/model/GraphUser;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Lcom/facebook/model/GraphUser;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onFacebookFlowComplete(Lcom/facebook/model/GraphUser;)V

    return-void
.end method

.method static synthetic access$902(Lcom/mcdonalds/app/social/SocialLoginFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.SocialLoginFragment"

    const-string v2, "access$902"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFBUserInfoInProgress:Z

    return p1
.end method

.method private acquireFacebookUserInfo(Lcom/facebook/Session;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    const/4 v5, 0x1

    const-string v2, "acquireFacebookUserInfo"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    iget-boolean v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFBUserInfoInProgress:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    iput-boolean v5, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFBUserInfoInProgress:Z

    .line 754
    new-instance v2, Lcom/mcdonalds/app/social/SocialLoginFragment$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/social/SocialLoginFragment$6;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    invoke-static {p1, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .line 767
    .local v1, "request":Lcom/facebook/Request;
    invoke-virtual {v1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 768
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "email,first_name,last_name"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v1, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 771
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 773
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "request":Lcom/facebook/Request;
    :cond_0
    return-void
.end method

.method private acquireGoogleUserInfo()V
    .locals 3

    .prologue
    const-string v0, "acquireGoogleUserInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    new-instance v0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/social/SocialLoginFragment$5;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 744
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 745
    :goto_0
    return-void

    .line 744
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private deauthorizeActiveFacebookAccount()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v0, "deauthorizeActiveFacebookAccount"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 829
    .local v1, "session":Lcom/facebook/Session;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "/me/permissions"

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/mcdonalds/app/social/SocialLoginFragment$7;

    invoke-direct {v5, p0, v1}, Lcom/mcdonalds/app/social/SocialLoginFragment$7;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/Session;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 842
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 843
    return-void
.end method

.method private doGetRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "doGetRequest"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 669
    .local v0, "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    instance-of v4, v3, Lcom/squareup/okhttp/Request$Builder;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 671
    .local v1, "request":Lcom/squareup/okhttp/Request;
    :goto_0
    instance-of v3, v0, Lcom/squareup/okhttp/OkHttpClient;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    .end local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :goto_1
    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 673
    .local v2, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 669
    .end local v1    # "request":Lcom/squareup/okhttp/Request;
    .end local v2    # "response":Lcom/squareup/okhttp/Response;
    .restart local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :cond_0
    check-cast v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v1

    goto :goto_0

    .line 671
    .restart local v1    # "request":Lcom/squareup/okhttp/Request;
    :cond_1
    check-cast v0, Lcom/squareup/okhttp/OkHttpClient;

    .end local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    goto :goto_1
.end method

.method private doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "doPostRequest"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 679
    .local v0, "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    sget-object v4, Lcom/mcdonalds/app/social/SocialLoginFragment;->JSON:Lcom/squareup/okhttp/MediaType;

    invoke-static {v4, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 681
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v4, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    instance-of v5, v4, Lcom/squareup/okhttp/Request$Builder;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 683
    .local v2, "request":Lcom/squareup/okhttp/Request;
    :goto_0
    instance-of v4, v0, Lcom/squareup/okhttp/OkHttpClient;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    .end local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :goto_1
    invoke-virtual {v4}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v3

    .line 684
    .local v3, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 681
    .end local v2    # "request":Lcom/squareup/okhttp/Request;
    .end local v3    # "response":Lcom/squareup/okhttp/Response;
    .restart local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :cond_0
    check-cast v4, Lcom/squareup/okhttp/Request$Builder;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v2

    goto :goto_0

    .line 683
    .restart local v2    # "request":Lcom/squareup/okhttp/Request;
    :cond_1
    check-cast v0, Lcom/squareup/okhttp/OkHttpClient;

    .end local v0    # "HttpClient":Lcom/squareup/okhttp/OkHttpClient;
    invoke-static {v0, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    goto :goto_1
.end method

.method private onFacebookFlowComplete(Lcom/facebook/model/GraphUser;)V
    .locals 5
    .param p1, "user"    # Lcom/facebook/model/GraphUser;

    .prologue
    const-string v2, "onFacebookFlowComplete"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 482
    .local v1, "session":Lcom/facebook/Session;
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .line 483
    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setFirstName(Ljava/lang/String;)V

    .line 485
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setLastName(Ljava/lang/String;)V

    .line 486
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setUserId(Ljava/lang/String;)V

    .line 487
    const-string v2, "email"

    invoke-interface {p1, v2}, Lcom/facebook/model/GraphUser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setEmailAddress(Ljava/lang/String;)V

    .line 488
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getLocation()Lcom/facebook/model/GraphPlace;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getLocation()Lcom/facebook/model/GraphPlace;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/model/GraphPlace;->getLocation()Lcom/facebook/model/GraphLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 489
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getLocation()Lcom/facebook/model/GraphPlace;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/model/GraphPlace;->getLocation()Lcom/facebook/model/GraphLocation;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/model/GraphLocation;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setZipCode(Ljava/lang/String;)V

    .line 491
    :cond_0
    const-string v2, "facebook"

    iput-object v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->provider:Ljava/lang/String;

    .line 493
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    .line 494
    return-void
.end method

.method private onFacebookSelected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "onFacebookSelected"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 417
    .local v1, "session":Lcom/facebook/Session;
    invoke-virtual {v1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 423
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "public_profile"

    aput-object v5, v3, v4

    const-string v4, "email"

    aput-object v4, v3, v6

    .line 425
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 426
    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 432
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "email"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v2, v6, v0, v3}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method private onGooglePlusFlowComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const-string v2, "onGooglePlusFlowComplete"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    invoke-direct {v1, p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    sget-object v2, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    .line 463
    .local v0, "me":Lcom/google/android/gms/plus/model/people/Person;
    if-nez v0, :cond_0

    .line 464
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090376

    .line 465
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 477
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getName()Lcom/google/android/gms/plus/model/people/Person$Name;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 468
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getName()Lcom/google/android/gms/plus/model/people/Person$Name;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person$Name;->getGivenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setFirstName(Ljava/lang/String;)V

    .line 469
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getName()Lcom/google/android/gms/plus/model/people/Person$Name;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setLastName(Ljava/lang/String;)V

    .line 471
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setUserId(Ljava/lang/String;)V

    .line 472
    sget-object v2, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->setEmailAddress(Ljava/lang/String;)V

    .line 474
    const-string v2, "GooglePlus"

    iput-object v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->provider:Ljava/lang/String;

    .line 475
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    goto :goto_0
.end method

.method private onGooglePlusSelected()V
    .locals 5

    .prologue
    const-string v0, "onGooglePlusSelected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "android.permission.GET_ACCOUNTS"

    const/16 v2, 0xd

    const v3, 0x7f090621

    new-instance v4, Lcom/mcdonalds/app/social/SocialLoginFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/social/SocialLoginFragment$1;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 413
    :cond_0
    return-void
.end method

.method private onWeChatFlowComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "AllowSocialLoginWithoutEmail"    # Z

    .prologue
    const-string v1, "onWeChatFlowComplete"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    .local v0, "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    .line 499
    return-void
.end method

.method private onWeChatSelected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "onWeChatSelected"

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 443
    .local v0, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 444
    sget-object v1, Lcom/mcdonalds/app/social/SocialLoginFragment;->mStateToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/AsyncToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 446
    const-string v1, "SocialLoginFragment"

    const-string v2, "mWeChatApi.sendReq(req)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090822

    .line 450
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 451
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 452
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private resolveGoogleSignInError()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const-string v0, "resolveGoogleSignInError"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mIntentInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mIntentInProgress:Z

    .line 695
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v7

    .line 700
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    iput-boolean v8, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mIntentInProgress:Z

    .line 701
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private urlEnodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v2, "urlEnodeUTF8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    move-object v1, p1

    .line 184
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public facebookOnResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "facebookOnResume"

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 308
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 312
    :cond_1
    return-void
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method protected getSocialLoginHelper()Lcom/mcdonalds/app/social/SocialLogin;
    .locals 2

    .prologue
    const-string v0, "getSocialLoginHelper"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

    return-object v0
.end method

.method public isSupported(I)Z
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "isSupported"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 777
    packed-switch p1, :pswitch_data_0

    move v2, v3

    .line 787
    :cond_0
    :goto_0
    return v2

    .line 779
    :pswitch_0
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v4

    const v5, 0x7f090a8e

    .line 780
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "weChatAppId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 782
    .local v0, "weChatApi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 783
    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 275
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 280
    iput-boolean v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mIntentInProgress:Z

    .line 281
    if-ne p2, v1, :cond_2

    .line 283
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iput-boolean v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSignInClicked:Z

    goto :goto_0

    .line 293
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 294
    if-ne p2, v1, :cond_1

    .line 298
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireGoogleUserInfo()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onConnected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google+ Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 533
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSignInClicked:Z

    if-eqz v0, :cond_0

    .line 534
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireGoogleUserInfo()V

    .line 539
    :cond_0
    iput-boolean v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSignInClicked:Z

    .line 540
    return-void

    .line 531
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const-string v0, "onConnectionFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mIntentInProgress:Z

    if-nez v0, :cond_0

    .line 555
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 557
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSignInClicked:Z

    if-eqz v0, :cond_0

    .line 560
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->resolveGoogleSignInError()V

    .line 565
    :cond_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "onConnectionSuspended"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 548
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.disableFacebookAndGoogle"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    .line 157
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFaceBookStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, v1, v2}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 170
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "WeChat"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mStateToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 175
    const-string v0, "SocialLoginFragment"

    const-string v1, "mWeChatApi.registerApp(weChatAppId);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getLayoutResourceId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "rootView":Landroid/view/View;
    const v3, 0x7f1102ce

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "socialLoginView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 354
    new-instance v2, Lcom/mcdonalds/app/social/SocialLoginViewHolder;

    invoke-direct {v2, v1}, Lcom/mcdonalds/app/social/SocialLoginViewHolder;-><init>(Landroid/view/View;)V

    .line 355
    .local v2, "socialViewHolder":Lcom/mcdonalds/app/social/SocialLoginViewHolder;
    new-instance v3, Lcom/mcdonalds/app/social/SocialLogin;

    invoke-direct {v3, p0, v2, p0}, Lcom/mcdonalds/app/social/SocialLogin;-><init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;Lcom/mcdonalds/app/social/SocialLoginViewHolder;Lcom/mcdonalds/app/social/SocialLogin$SocialLoginClientCallback;)V

    iput-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

    .line 356
    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-virtual {v3, p0}, Lcom/mcdonalds/app/social/SocialLogin;->setListener(Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;)V

    .line 359
    .end local v2    # "socialViewHolder":Lcom/mcdonalds/app/social/SocialLoginViewHolder;
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 330
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 334
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 318
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 323
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mDisableSocialButtons:Z

    .line 324
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mSocialLoginHelper:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-virtual {v0}, Lcom/mcdonalds/app/social/SocialLogin;->refresh()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_1
    :goto_0
    sget-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->code:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->weChatRequestForToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901ff

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    const-string v0, "SocialLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wechat code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/social/SocialLoginFragment;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->code:Ljava/lang/String;

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 268
    :cond_3
    return-void

    .line 234
    :pswitch_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->facebookOnResume()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mFacebookLifeCycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 3
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const-string v0, "onSocialNetworkSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 365
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mDisableSocialButtons:Z

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .line 370
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mCurrentNetwork:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onGooglePlusSelected()V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onFacebookSelected()V

    goto :goto_0

    .line 389
    :pswitch_2
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onWeChatSelected()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 195
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 199
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 205
    iget-boolean v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->disableFacebookAndGoogle:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    .line 215
    const-string v0, "SocialLoginFragment"

    const-string v1, "mWeChatApi.unregisterApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    return-void
.end method

.method protected weChatRequestForToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const-string v1, "weChatRequestForToken"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 569
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/app/social/SocialLoginFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/social/SocialLoginFragment$3;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 581
    return-void
.end method

.method protected weChatRequestForUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "access_token"    # Ljava/lang/String;
    .param p2, "openid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const-string v2, "weChatRequestForUserInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mcdonalds/app/social/SocialLoginFragment$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/app/social/SocialLoginFragment$4;-><init>(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 655
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 658
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 659
    iget-object v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->nickName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment;->acces_token:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, p2, v3, v4}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onWeChatFlowComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 660
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
