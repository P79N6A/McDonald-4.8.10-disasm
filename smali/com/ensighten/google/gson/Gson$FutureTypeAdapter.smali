.class Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
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
    .line 909
    .local p0, "this":Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;, "Lcom/ensighten/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/ensighten/google/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 901
    .local p0, "this":Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;, "Lcom/ensighten/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 904
    :cond_0
    iput-object p1, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 905
    return-void
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
    .line 917
    .local p0, "this":Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;, "Lcom/ensighten/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 921
    return-void
.end method