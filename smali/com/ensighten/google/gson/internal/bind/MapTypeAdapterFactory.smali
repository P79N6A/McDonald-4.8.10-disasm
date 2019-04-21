.class public final Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Z)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/ensighten/google/gson/internal/ConstructorConstructor;
    .param p2, "complexMapKeySerialization"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    .line 113
    iput-boolean p2, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method private getKeyAdapter(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .param p1, "context"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/ensighten/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 8
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
    .local p2, "typeToken":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 120
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/ensighten/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/ensighten/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 126
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v4

    .line 127
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v6

    .line 128
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/ensighten/google/gson/internal/ConstructorConstructor;->get(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/internal/ObjectConstructor;

    move-result-object v7

    .line 132
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/TypeAdapter;Lcom/ensighten/google/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
