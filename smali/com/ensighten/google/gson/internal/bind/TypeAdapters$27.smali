.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/ensighten/google/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/ensighten/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/ensighten/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
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
    .line 723
    .local p2, "typeToken":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
