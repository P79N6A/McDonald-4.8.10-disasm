.class public Lcom/mcdonalds/sdk/services/data/DiskCacheManager;
.super Ljava/lang/Object;
.source "DiskCacheManager.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0xfa00000

.field private static final DEFAULT_CACHE_SIZE_ECP3:I = 0xa00000

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x14

.field private static final HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final KEY_DISK_CACHE_SIZE:Ljava/lang/String; = "diskCacheMaxSize"

.field private static final KEY_SET_CACHE_KEY:Ljava/lang/String; = "key_set_cache_key"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MB_UNIT:I = 0x100000

.field private static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final VALUE_COUNT:I = 0x1

.field private static sInstance:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;


# instance fields
.field private final mCacheDirectory:Ljava/io/File;

.field private mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final mGson:Lcom/google/gson/Gson;

.field private mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemCache:Landroid/support/v4/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "/objectcache"

    invoke-static {p1, v0}, Lcom/mcdonalds/sdk/services/network/CacheUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mCacheDirectory:Ljava/io/File;

    .line 71
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mGson:Lcom/google/gson/Gson;

    .line 74
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->open()V

    .line 75
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->initializeKeySet()V

    .line 76
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->sInstance:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->sInstance:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    .line 65
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->sInstance:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    return-object v0
.end method

.method private initializeKeySet()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    const-string v1, "key_set_cache_key"

    new-instance v2, Lcom/mcdonalds/sdk/services/data/DiskCacheManager$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager$1;-><init>(Lcom/mcdonalds/sdk/services/data/DiskCacheManager;)V

    .line 248
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 247
    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    .line 249
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    goto :goto_0
.end method

.method private open()V
    .locals 8

    .prologue
    .line 81
    const-wide/32 v0, 0xfa00000

    .line 83
    .local v0, "cacheSize":J
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "diskCacheMaxSize"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "diskCacheMaxSize"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    mul-long v0, v4, v6

    .line 92
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mCacheDirectory:Ljava/io/File;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-wide/32 v0, 0xa00000

    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error creating object cache"

    invoke-static {v3, v4, v2}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateKeySetInCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v0, "key_set_cache_key"

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->open()V

    .line 103
    return-void
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    const-string v0, "key_set_cache_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->updateKeySetInCache()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getHashOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "ob":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 128
    .end local v0    # "ob":Ljava/lang/Object;, "TT;"
    .local v1, "ob":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .line 123
    .end local v1    # "ob":Ljava/lang/Object;, "TT;"
    .restart local v0    # "ob":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getHashOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2

    .line 124
    .local v2, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-eqz v2, :cond_1

    .line 125
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mGson:Lcom/google/gson/Gson;

    instance-of v5, v4, Lcom/google/gson/Gson;

    if-nez v5, :cond_2

    invoke-virtual {v4, v3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v1, v0

    .line 128
    .end local v0    # "ob":Ljava/lang/Object;, "TT;"
    .restart local v1    # "ob":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 126
    .end local v1    # "ob":Ljava/lang/Object;, "TT;"
    .restart local v0    # "ob":Ljava/lang/Object;, "TT;"
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v3, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p3, :cond_1

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "ob":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 141
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getHashOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v3

    .line 142
    .local v3, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-eqz v3, :cond_0

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 144
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .local v1, "jsonReader":Lcom/google/gson/stream/JsonReader;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 146
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mGson:Lcom/google/gson/Gson;

    instance-of v5, v4, Lcom/google/gson/Gson;

    if-nez v5, :cond_2

    invoke-virtual {v4, v1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    goto :goto_0

    :cond_2
    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method protected getHashOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 235
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 236
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 237
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 239
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 241
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 240
    .restart local p1    # "string":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method public hasObjectForKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_start_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getHashOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 157
    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mGson:Lcom/google/gson/Gson;

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_2

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->writeValueToCache(Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V

    .line 163
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :goto_2
    :try_start_3
    const-string v2, "key_set_cache_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->updateKeySetInCache()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :cond_2
    :try_start_4
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 165
    :cond_3
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 170
    :try_start_5
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 173
    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "serialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    if-nez p3, :cond_1

    .line 184
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mKeySet:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_start_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getHashOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_0

    .line 197
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mGson:Lcom/google/gson/Gson;

    instance-of v4, v3, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v3, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 199
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 200
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 201
    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    .line 202
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :try_start_3
    const-string v3, "key_set_cache_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->updateKeySetInCache()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 198
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :cond_2
    :try_start_4
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, p2, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 204
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 206
    :try_start_5
    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 209
    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected writeValueToCache(Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 228
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 223
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v2

    .line 223
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method
