.class public final Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    .line 38
    return-void
.end method

.method static getTypeAdapter(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/annotations/JsonAdapter;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 2
    .param p0, "constructorConstructor"    # Lcom/ensighten/google/gson/internal/ConstructorConstructor;
    .param p1, "gson"    # Lcom/ensighten/google/gson/Gson;
    .param p3, "annotation"    # Lcom/ensighten/google/gson/annotations/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/ConstructorConstructor;",
            "Lcom/ensighten/google/gson/Gson;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/ensighten/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "fieldType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    invoke-interface {p3}, Lcom/ensighten/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    .line 44
    const-class v1, Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/internal/ConstructorConstructor;->get(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcom/ensighten/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/TypeAdapter;

    .line 50
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-class v1, Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/internal/ConstructorConstructor;->get(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcom/ensighten/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapterFactory;->create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 61
    .local p2, "targetType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ensighten/google/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/annotations/JsonAdapter;

    .line 62
    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p2, v0}, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/annotations/JsonAdapter;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method
