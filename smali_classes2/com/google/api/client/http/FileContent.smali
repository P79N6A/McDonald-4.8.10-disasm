.class public final Lcom/google/api/client/http/FileContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "FileContent.java"


# instance fields
.field private final file:Ljava/io/File;


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
