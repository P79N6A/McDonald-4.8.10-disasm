.class Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/NativeGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeGathererHelper"
.end annotation


# static fields
.field static final synthetic g:Z


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:[Ljava/lang/String;

.field final synthetic h:Lcom/threatmetrix/TrustDefender/NativeGatherer;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/threatmetrix/TrustDefender/NativeGatherer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->h:Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-class v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->i:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    .line 66
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->b:Z

    .line 67
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->c:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->d:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->e:I

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/app"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/system/priv-app"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->f:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    .line 77
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "sharedObjPath"    # Ljava/lang/String;
    .param p3, "infoLoggingStatus"    # I

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-boolean v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v6, :cond_0

    .line 82
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    .line 150
    :goto_0
    return v5

    .line 86
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    iget-boolean v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v6, :cond_1

    .line 88
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 90
    :cond_1
    move-object v4, p2

    .line 92
    .local v4, "shPath":Ljava/lang/String;
    :try_start_1
    const-class v6, Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    instance-of v6, v0, Ldalvik/system/PathClassLoader;

    if-nez v6, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 99
    :cond_2
    instance-of v6, v0, Ldalvik/system/PathClassLoader;

    if-eqz v6, :cond_5

    .line 101
    const-class v6, Ljava/lang/ClassLoader;

    const-string v7, "findLibrary"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 102
    .local v2, "findLib":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "tdm-4.0-90-jni"

    aput-object v8, v6, v7

    invoke-static {v0, v2, v6}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "returned":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_3
    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 111
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->i:Ljava/lang/String;

    .line 112
    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->d:Ljava/lang/String;

    .line 114
    const-string v6, "36a80b06f150a2992b344b46296c9ec471d45caf|f3477b1e7ad0cdcd08e78f5573a7bb22a5db312d|003c121233031073e0ef405c247f3a2df6dd5b54|6391b0a41ca80934ae9df3b825236d78efa69559|8b4fc32b863660b423159d5320028bc04ae0bea6|46488b641dbcdd70a559755dfed006a3bd1a59b4|aee9a1076de5436f2aad09f444cc6642634c8fe4|9aafeaee349c8909dcc88dfe1bb83dc21a50b3e6|7e204bbb780a37fb49c88cd6603b10f30580c7c6|27fe124a88e49203d77859d80d87d2c3b7feda03|5faf2a774672f3ee03b65f386c2f0cb09b9ece16|79e97d903d5edbaa95195b8fa367e2f9497abeb4|f0d896d61f4283a49089acf5ac6d8d86e1fb6563|824513af9ae7006357cbc74678d26a663729a16b"

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 117
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 122
    :cond_4
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v2    # "findLib":Ljava/lang/reflect/Method;
    .end local v3    # "returned":Ljava/lang/Object;
    :cond_5
    :try_start_3
    const-string v5, "tdm-4.0-90-jni"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefenderVersion;->numeric:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, p1, p3}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->init(ILjava/lang/String;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :goto_1
    :try_start_4
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NativeGatherer() complete, found "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 150
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_5
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->i:Ljava/lang/String;

    const-string v6, "Native code:"

    invoke-static {v5, v6, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 147
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v4    # "shPath":Ljava/lang/String;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 140
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v4    # "shPath":Ljava/lang/String;
    :catch_1
    move-exception v5

    const/4 v5, 0x0

    :try_start_6
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoLoggingStatus"    # I

    .prologue
    .line 155
    sget-boolean v5, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->g:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Lcom/threatmetrix/TrustDefender/g$a;

    new-instance v6, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v6}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v5, v6, p1}, Lcom/threatmetrix/TrustDefender/g$a;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/g$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "nativePath":Ljava/lang/String;
    invoke-direct {p0, v4, v3, p2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    new-instance v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper$1;

    invoke-direct {v1, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper$1;-><init>(Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;)V

    .line 171
    .local v1, "filter":Ljava/io/FilenameFilter;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "libDirectory":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v5, v0

    if-eqz v5, :cond_1

    .line 175
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->b:Z

    .line 179
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "filter":Ljava/io/FilenameFilter;
    .end local v2    # "libDirectory":Ljava/io/File;
    :cond_1
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    return v5
.end method

.method native cancel()I
.end method

.method native checkURLs([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->finit()V

    .line 212
    return-void
.end method

.method native findAllProcs()[Ljava/lang/String;
.end method

.method native findInstalledProcs()[Ljava/lang/String;
.end method

.method native findPackages(II[Ljava/lang/String;I)I
.end method

.method native findRunningProcs()[Ljava/lang/String;
.end method

.method native finit()V
.end method

.method native getBinaryArch()Ljava/lang/String;
.end method

.method native getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getFontList(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method native getNetworkInfo()[Ljava/lang/String;
.end method

.method native getRandomString(I)Ljava/lang/String;
.end method

.method native hashFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native init(ILjava/lang/String;I)Z
.end method

.method native md5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native setConfig(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method native setInfoLogging(I)V
.end method

.method native sha1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native urlEncode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native waitUntilCancelled()I
.end method

.method native xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
