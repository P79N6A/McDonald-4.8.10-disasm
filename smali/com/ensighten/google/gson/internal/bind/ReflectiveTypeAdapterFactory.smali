.class public final Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/ensighten/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;


# direct methods
.method public constructor <init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Lcom/ensighten/google/gson/FieldNamingStrategy;Lcom/ensighten/google/gson/internal/Excluder;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/ensighten/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lcom/ensighten/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lcom/ensighten/google/gson/internal/Excluder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    .line 55
    iput-object p2, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    .line 56
    iput-object p3, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
    .param p1, "x1"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "x2"    # Ljava/lang/reflect/Field;
    .param p3, "x3"    # Lcom/ensighten/google/gson/reflect/TypeToken;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldAdapter(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createBoundField(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/ensighten/google/gson/reflect/TypeToken;ZZ)Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 9
    .param p1, "context"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "fieldType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p4}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 92
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/ensighten/google/gson/reflect/TypeToken;Z)V

    return-object v0
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/ensighten/google/gson/internal/Excluder;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .param p1, "serialize"    # Z
    .param p2, "excluder"    # Lcom/ensighten/google/gson/internal/Excluder;

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/ensighten/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/ensighten/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundFields(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .param p1, "context"    # Lcom/ensighten/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "type":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 160
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 139
    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    .line 140
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 141
    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v2, v10, v8

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 144
    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    .line 147
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/ensighten/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 149
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/ensighten/google/gson/reflect/TypeToken;ZZ)Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v0

    .line 151
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 152
    if-eqz v0, :cond_2

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/ensighten/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 159
    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 160
    goto/16 :goto_0
.end method

.method private getFieldAdapter(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, "fieldType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    const-class v0, Lcom/ensighten/google/gson/annotations/JsonAdapter;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/annotations/JsonAdapter;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p3, v0}, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/annotations/JsonAdapter;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method static getFieldName(Lcom/ensighten/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "fieldNamingPolicy"    # Lcom/ensighten/google/gson/FieldNamingStrategy;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 64
    const-class v0, Lcom/ensighten/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/annotations/SerializedName;

    .line 65
    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lcom/ensighten/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/ensighten/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    invoke-static {v0, p1}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Lcom/ensighten/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 4
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
    .local p2, "type":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 79
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/ensighten/google/gson/internal/ConstructorConstructor;->get(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/internal/ObjectConstructor;

    move-result-object v3

    .line 84
    new-instance v1, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v2}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/ensighten/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/ensighten/google/gson/internal/Excluder;)Z

    move-result v0

    return v0
.end method
