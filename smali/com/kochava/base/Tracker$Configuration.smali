.class public Lcom/kochava/base/Tracker$Configuration;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/kochava/base/AttributionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/kochava/base/AttributionUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/kochava/base/ConsentStatusChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/kochava/base/Tracker$IdentityLink;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final sdkVersionDeclaration:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "!SDK-VERSION-STRING!:com.kochava:tracker:release:3.4.0"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->sdkVersionDeclaration:Ljava/lang/String;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->e:Lcom/kochava/base/AttributionListener;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->i:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->j:Lcom/kochava/base/Tracker$IdentityLink;

    iput-object v1, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionListener;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->e:Lcom/kochava/base/AttributionListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    return-object v0
.end method

.method static synthetic g(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/ConsentStatusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    return-object v0
.end method

.method static synthetic h(Lcom/kochava/base/Tracker$Configuration;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic i(Lcom/kochava/base/Tracker$Configuration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->j:Lcom/kochava/base/Tracker$IdentityLink;

    return-object v0
.end method


# virtual methods
.method public final addCustom(Ljava/lang/String;Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Lorg/json/JSONObject;)Lcom/kochava/base/Tracker$Configuration;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    return-object p0
.end method

.method public final setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setAppLimitAdTracking(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAttributionListener(Lcom/kochava/base/AttributionListener;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/AttributionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->e:Lcom/kochava/base/AttributionListener;

    return-object p0
.end method

.method public final setAttributionUpdateListener(Lcom/kochava/base/AttributionUpdateListener;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    return-object p0
.end method

.method public final setConsentStatusChangeListener(Lcom/kochava/base/ConsentStatusChangeListener;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    return-object p0
.end method

.method public final setIdentityLink(Lcom/kochava/base/Tracker$IdentityLink;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->j:Lcom/kochava/base/Tracker$IdentityLink;

    return-object p0
.end method

.method public final setIntelligentConsentManagement(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    return-object p0
.end method

.method public final setLogLevel(I)Lcom/kochava/base/Tracker$Configuration;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setPartnerName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    return-object p0
.end method
