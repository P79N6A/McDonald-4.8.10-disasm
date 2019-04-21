.class public Lcom/mcdonalds/sdk/services/network/MCDImageCache;
.super Ljava/lang/Object;
.source "MCDImageCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
    }
.end annotation


# static fields
.field public static final APP_VERSION:I = 0x1

.field public static final CACHE_PATH:Ljava/lang/String; = ".images"

.field public static final CACHE_SIZE:J = 0x3200000L

.field public static final IO_BUFFER_SIZE:I = 0x2000

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final RUNNING_TASKS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_COUNT:I = 0x1


# instance fields
.field private hashBuilder:Ljava/util/zip/CRC32;

.field private mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private mLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->LOG_TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->RUNNING_TASKS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v4, ".images"

    invoke-static {p1, v4}, Lcom/mcdonalds/sdk/services/network/CacheUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 55
    .local v3, "maxMemory":I
    div-int/lit8 v1, v3, 0x8

    .line 57
    .local v1, "cacheSize":I
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->hashBuilder:Ljava/util/zip/CRC32;

    .line 58
    new-instance v4, Landroid/support/v4/util/LruCache;

    invoke-direct {v4, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v4, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mLruCache:Landroid/support/v4/util/LruCache;

    .line 61
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0x3200000

    :try_start_0
    invoke-static {v0, v4, v5, v6, v7}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Could not create disk cache"

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->RUNNING_TASKS:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/network/MCDImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/MCDImageCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->putBitmapInDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v5, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 103
    .local v4, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-eqz v4, :cond_0

    .line 104
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 105
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 106
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v0, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 107
    .local v0, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    move-object v5, v1

    .line 114
    .end local v4    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :goto_0
    return-object v5

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->hashBuilder:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->hashBuilder:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putBitmapInDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v3, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 122
    .local v1, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    if-nez v1, :cond_0

    .line 138
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :goto_0
    return v2

    .line 126
    .restart local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V

    .line 128
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    .line 138
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 151
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 147
    :cond_0
    return v2

    .line 151
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v2

    .line 151
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "hash":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .end local v1    # "hash":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v3, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "hash":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    sget-object v3, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->RUNNING_TASKS:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 89
    .local v1, "running":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;-><init>(Lcom/mcdonalds/sdk/services/network/MCDImageCache;Landroid/graphics/Bitmap;)V

    .line 91
    .local v2, "task":Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    instance-of v5, v2, Landroid/os/AsyncTask;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "running":Ljava/lang/Boolean;
    .end local v2    # "task":Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
    :cond_1
    :goto_0
    return-void

    .line 91
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "running":Ljava/lang/Boolean;
    .restart local v2    # "task":Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
    :cond_2
    check-cast v2, Landroid/os/AsyncTask;

    .end local v2    # "task":Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
