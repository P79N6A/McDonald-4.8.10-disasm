.class Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;->create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;

.field final synthetic val$dateTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;Lcom/ensighten/google/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->this$0:Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;

    iput-object p2, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 514
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    check-cast p2, Ljava/sql/Timestamp;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 520
    return-void
.end method
