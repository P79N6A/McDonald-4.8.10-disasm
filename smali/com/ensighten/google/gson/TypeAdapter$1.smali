.class Lcom/ensighten/google/gson/TypeAdapter$1;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/google/gson/TypeAdapter;->nullSafe()Lcom/ensighten/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ensighten/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 187
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter$1;, "Lcom/ensighten/google/gson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/ensighten/google/gson/TypeAdapter$1;->this$0:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter$1;, "Lcom/ensighten/google/gson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/TypeAdapter$1;->this$0:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter$1;, "Lcom/ensighten/google/gson/TypeAdapter.1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/TypeAdapter$1;->this$0:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
