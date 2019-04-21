.class public final Lcom/google/api/client/http/InputStreamContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "InputStreamContent.java"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private length:J

.field private retrySupported:Z


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/api/client/http/InputStreamContent;->retrySupported:Z

    return v0
.end method
