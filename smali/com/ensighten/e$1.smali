.class final Lcom/ensighten/e$1;
.super Lcom/ensighten/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/e;


# direct methods
.method constructor <init>(Lcom/ensighten/e;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/ensighten/e$1;->a:Lcom/ensighten/e;

    invoke-direct {p0, p2}, Lcom/ensighten/r;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 315
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "Error downloading the module: %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 308
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "Downloaded the module successfully."

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/ensighten/e$1;->a:Lcom/ensighten/e;

    .line 1341
    :try_start_0
    iget-object v0, v1, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1342
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1344
    const-string v3, "Loading module %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1345
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/ensighten/e;->a:Landroid/content/Context;

    const-string v5, "dex"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1346
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1347
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1348
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1350
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1351
    iget-object v3, v1, Lcom/ensighten/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1352
    new-instance v4, Ldalvik/system/DexClassLoader;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/ensighten/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v2, v3, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1358
    const-string v2, "fullName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1361
    const-class v2, Lcom/ensighten/E;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1362
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1363
    const-string v2, "Setting CPU from module."

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1364
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ensighten/f;->a(Ljava/lang/Class;)V

    .line 1368
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/f;->b()V

    .line 1478
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/ensighten/e;->e:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    iget-object v0, v1, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1375
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1376
    const-string v0, "Finished loading modules."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1377
    :cond_4
    :goto_1
    iput-boolean v7, v1, Lcom/ensighten/e;->v:Z

    .line 1379
    :cond_5
    return-void

    .line 1365
    :cond_6
    :try_start_1
    const-class v2, Lcom/ensighten/F;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    :try_start_2
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1372
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1374
    :cond_7
    iget-object v0, v1, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1375
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1376
    const-string v0, "Finished loading modules."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1374
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1375
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1376
    const-string v2, "Finished loading modules."

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1377
    :cond_8
    iput-boolean v7, v1, Lcom/ensighten/e;->v:Z

    .line 1374
    :cond_9
    throw v0
.end method
