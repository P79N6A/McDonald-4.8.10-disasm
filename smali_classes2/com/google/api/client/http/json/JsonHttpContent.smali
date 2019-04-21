.class public Lcom/google/api/client/http/json/JsonHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "JsonHttpContent.java"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private wrapperKey:Ljava/lang/String;


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    .line 74
    .local v0, "generator":Lcom/google/api/client/json/JsonGenerator;
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->wrapperKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 76
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->wrapperKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->wrapperKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    .line 83
    return-void
.end method
