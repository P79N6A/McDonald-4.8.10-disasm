.class public final Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseFilesProvider.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getDatabaseFiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "databaseFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 33
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "filename":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
