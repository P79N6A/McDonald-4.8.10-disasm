.class Lcom/ensighten/google/gson/internal/Excluder$1;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/google/gson/internal/Excluder;->create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
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
.field private delegate:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ensighten/google/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/ensighten/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/ensighten/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/Excluder;ZZLcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->this$0:Lcom/ensighten/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$gson:Lcom/ensighten/google/gson/Gson;

    iput-object p5, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$type:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/ensighten/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 145
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$gson:Lcom/ensighten/google/gson/Gson;

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->this$0:Lcom/ensighten/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$type:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/google/gson/Gson;->getDelegateAdapter(Lcom/ensighten/google/gson/TypeAdapterFactory;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
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
    .line 127
    iget-boolean v0, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->skipValue()V

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/internal/Excluder$1;->delegate()Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

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
    .line 136
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/ensighten/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/internal/Excluder$1;->delegate()Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
