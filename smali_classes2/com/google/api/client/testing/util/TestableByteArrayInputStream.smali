.class public Lcom/google/api/client/testing/util/TestableByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "TestableByteArrayInputStream.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private closed:Z


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;->closed:Z

    .line 59
    return-void
.end method
