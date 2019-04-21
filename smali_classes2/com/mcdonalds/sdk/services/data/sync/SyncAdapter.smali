.class public Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"


# static fields
.field public static final PREF_LAST_ACTIVE:Ljava/lang/String; = "last_active"

.field public static final SYNC_OPTION_SOCIAL_NETWORK:Ljava/lang/String; = "sync_option_social_network"

.field public static final SYNC_OPTION_STORE_ID:Ljava/lang/String; = "sync_option_store_id"

.field public static final SYNC_OPTION_STORE_INFO_REQUIRED:Ljava/lang/String; = "sync_option_store_info_required"

.field public static final SYNC_PREFERENCES:Ljava/lang/String; = "sync_prefs"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "allowParallelSyncs"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v3, "sync_option_social_network"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, "isSocialSync":Z
    const-string v3, "sync_option_store_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "storeId":I
    const-string v3, "sync_option_store_info_required"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 58
    .local v1, "isStoreInformationRequired":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateCatalog(ILandroid/content/Context;Z)V

    .line 60
    return-void
.end method
