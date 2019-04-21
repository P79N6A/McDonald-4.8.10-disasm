.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;
.super Ljava/util/LinkedHashMap;
.source "MWCustomerSecurityUrlQueryArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "http"


# instance fields
.field private final builder:Landroid/net/Uri$Builder;

.field private final mConfigBaseHost:Ljava/lang/String;

.field private final mConfigBaseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V
    .locals 2
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->builder:Landroid/net/Uri$Builder;

    .line 25
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getConfigBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->mConfigBaseUrl:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->mConfigBaseUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->mConfigBaseHost:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->builder:Landroid/net/Uri$Builder;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->mConfigBaseHost:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->loadDefaults()V

    .line 36
    return-void
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "fullQueryPath":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 51
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 57
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
