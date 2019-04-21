.class public Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;
.super Ljava/lang/Object;
.source "MockHttpUnsuccessfulResponseHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private isCalled:Z

.field private successfullyHandleResponse:Z


# virtual methods
.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 1
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p3, "supportsRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->isCalled:Z

    .line 60
    iget-boolean v0, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->successfullyHandleResponse:Z

    return v0
.end method
