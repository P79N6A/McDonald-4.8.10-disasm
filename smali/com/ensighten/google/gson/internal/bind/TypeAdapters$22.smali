.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/ensighten/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/Gson;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p2, "typeToken":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 509
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v1

    .line 510
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v0, p0, v1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/ensighten/google/gson/internal/bind/TypeAdapters$22;Lcom/ensighten/google/gson/TypeAdapter;)V

    goto :goto_0
.end method
