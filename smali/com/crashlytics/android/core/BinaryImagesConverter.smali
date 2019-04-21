.class Lcom/crashlytics/android/core/BinaryImagesConverter;
.super Ljava/lang/Object;
.source "BinaryImagesConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileIdStrategy"    # Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    .line 31
    return-void
.end method

.method private correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "missingFile"    # Ljava/io/File;

    .prologue
    .line 120
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    move-object v2, p1

    .line 133
    .end local p1    # "missingFile":Ljava/io/File;
    .local v2, "missingFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 124
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 128
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "missingFile":Ljava/io/File;
    .restart local v2    # "missingFile":Ljava/io/File;
    move-object p1, v2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v2, p1

    .line 133
    .end local p1    # "missingFile":Ljava/io/File;
    .restart local v2    # "missingFile":Ljava/io/File;
    goto :goto_0

    .line 129
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error getting ApplicationInfo"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static createBinaryImageJson(Ljava/lang/String;Lcom/crashlytics/android/core/ProcMapEntry;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mapEntry"    # Lcom/crashlytics/android/core/ProcMapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v0, "binaryImage":Lorg/json/JSONObject;
    const-string v1, "base_address"

    iget-wide v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v1, "size"

    iget-wide v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    const-string v1, "name"

    iget-object v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    return-object v0
.end method

.method private static generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B
    .locals 5
    .param p0, "binaryImages"    # Lorg/json/JSONArray;

    .prologue
    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v0, "binaryImagesObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "binary_images"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "binaryImagesObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_1
    return-object v2

    .line 140
    .restart local v0    # "binaryImagesObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Binary images string is null"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_1

    .line 144
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "binaryImagesObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/BinaryImagesConverter;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 116
    :cond_0
    return-object v0
.end method

.method private static isRelevant(Lcom/crashlytics/android/core/ProcMapEntry;)Z
    .locals 3
    .param p0, "mapEntry"    # Lcom/crashlytics/android/core/ProcMapEntry;

    .prologue
    const/4 v2, -0x1

    .line 166
    iget-object v0, p0, Lcom/crashlytics/android/core/ProcMapEntry;->perms:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "mapEntryString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-static {p1}, Lcom/crashlytics/android/core/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/crashlytics/android/core/ProcMapEntry;

    move-result-object v2

    .line 86
    .local v2, "mapInfo":Lcom/crashlytics/android/core/ProcMapEntry;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/crashlytics/android/core/BinaryImagesConverter;->isRelevant(Lcom/crashlytics/android/core/ProcMapEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 90
    :cond_1
    iget-object v3, v2, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    .line 91
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/BinaryImagesConverter;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "binFile":Ljava/io/File;
    :try_start_0
    iget-object v6, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    invoke-interface {v6, v0}, Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;->createId(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 103
    .local v4, "uuid":Ljava/lang/String;
    :try_start_1
    invoke-static {v4, v2}, Lcom/crashlytics/android/core/BinaryImagesConverter;->createBinaryImageJson(Ljava/lang/String;Lcom/crashlytics/android/core/ProcMapEntry;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 96
    .end local v4    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not generate ID for file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "uuid":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    const-string v8, "Could not create a binary image json string"

    invoke-interface {v6, v7, v8, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parseProcMapsJsonFromStream(Ljava/io/BufferedReader;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v0, "binaryImagesJson":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "mapEntryString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 48
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    .local v2, "mapJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 54
    .end local v2    # "mapJson":Lorg/json/JSONObject;
    :cond_1
    return-object v0
.end method

.method private parseProcMapsJsonFromString(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12
    .param p1, "rawProcMapsString"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .local v0, "binaryImagesJson":Lorg/json/JSONArray;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 63
    .local v8, "rawObj":Lorg/json/JSONObject;
    const-string v9, "maps"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 64
    .local v5, "maps":Lorg/json/JSONArray;
    invoke-static {v5}, Lcom/crashlytics/android/core/BinaryImagesConverter;->joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 70
    .local v7, "mapsString":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "mapsEntries":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_1

    .line 73
    aget-object v3, v6, v2

    .line 74
    .local v3, "mapEntryString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/BinaryImagesConverter;->jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    .local v4, "mapJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    .end local v3    # "mapEntryString":Ljava/lang/String;
    .end local v4    # "mapJson":Lorg/json/JSONObject;
    .end local v5    # "maps":Lorg/json/JSONArray;
    .end local v6    # "mapsEntries":[Ljava/lang/String;
    .end local v7    # "mapsString":Ljava/lang/String;
    .end local v8    # "rawObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "CrashlyticsCore"

    const-string v11, "Unable to parse proc maps string"

    invoke-interface {v9, v10, v11, v1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v0
.end method


# virtual methods
.method convert(Ljava/io/BufferedReader;)[B
    .locals 2
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->parseProcMapsJsonFromStream(Ljava/io/BufferedReader;)Lorg/json/JSONArray;

    move-result-object v0

    .line 40
    .local v0, "binaryImagesJson":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/crashlytics/android/core/BinaryImagesConverter;->generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B

    move-result-object v1

    return-object v1
.end method

.method convert(Ljava/lang/String;)[B
    .locals 2
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->parseProcMapsJsonFromString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    .local v0, "binaryImagesJson":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/crashlytics/android/core/BinaryImagesConverter;->generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B

    move-result-object v1

    return-object v1
.end method
