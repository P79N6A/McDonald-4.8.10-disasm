.class final Lcom/crashlytics/android/core/NativeFileUtils;
.super Ljava/lang/Object;
.source "NativeFileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static binaryImagesJsonFromBinaryLibsFile(Ljava/io/File;Landroid/content/Context;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lcom/crashlytics/android/core/NativeFileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    .line 79
    .local v0, "raw":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v1}, Lcom/crashlytics/android/core/NativeFileUtils;->processBinaryImages(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method static binaryImagesJsonFromDirectory(Ljava/io/File;Landroid/content/Context;)[B
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v1, ".maps"

    invoke-static {p0, v1}, Lcom/crashlytics/android/core/NativeFileUtils;->filter(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0, p1}, Lcom/crashlytics/android/core/NativeFileUtils;->binaryImagesJsonFromMapsFile(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 68
    :cond_0
    const-string v1, ".binary_libs"

    invoke-static {p0, v1}, Lcom/crashlytics/android/core/NativeFileUtils;->filter(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {v0, p1}, Lcom/crashlytics/android/core/NativeFileUtils;->binaryImagesJsonFromBinaryLibsFile(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static binaryImagesJsonFromMapsFile(Ljava/io/File;Landroid/content/Context;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 94
    :goto_0
    return-object v2

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Lcom/crashlytics/android/core/BinaryImagesConverter;

    new-instance v3, Lcom/crashlytics/android/core/Sha1FileIdStrategy;

    invoke-direct {v3}, Lcom/crashlytics/android/core/Sha1FileIdStrategy;-><init>()V

    invoke-direct {v2, p1, v3}, Lcom/crashlytics/android/core/BinaryImagesConverter;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;)V

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->convert(Ljava/io/BufferedReader;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 96
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    throw v2

    .line 96
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static filter(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 44
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v0

    .line 43
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static metadataJsonFromDirectory(Ljava/io/File;)[B
    .locals 2
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 101
    const-string v1, ".device_info"

    invoke-static {p0, v1}, Lcom/crashlytics/android/core/NativeFileUtils;->filter(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/core/NativeFileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    goto :goto_0
.end method

.method static minidumpFromDirectory(Ljava/io/File;)[B
    .locals 2
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 53
    const-string v1, ".dmp"

    invoke-static {p0, v1}, Lcom/crashlytics/android/core/NativeFileUtils;->filter(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/core/NativeFileUtils;->minidumpFromFile(Ljava/io/File;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static minidumpFromFile(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/crashlytics/android/core/NativeFileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method private static processBinaryImages(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "binaryImages"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/crashlytics/android/core/BinaryImagesConverter;

    new-instance v1, Lcom/crashlytics/android/core/Sha1FileIdStrategy;

    invoke-direct {v1}, Lcom/crashlytics/android/core/Sha1FileIdStrategy;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/BinaryImagesConverter;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;)V

    .line 110
    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->convert(Ljava/lang/String;)[B

    move-result-object v0

    .line 107
    return-object v0
.end method

.method private static readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 34
    .local v0, "b":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 37
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static readFile(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/NativeFileUtils;->readBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 28
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 26
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 23
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 25
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    throw v3

    .line 28
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 25
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 23
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
