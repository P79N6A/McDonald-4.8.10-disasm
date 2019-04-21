.class Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/ensighten/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/ensighten/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/ensighten/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .param p3, "matchRawType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "exactType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    .local p4, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    instance-of v0, p1, Lcom/ensighten/google/gson/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/ensighten/google/gson/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    .line 125
    instance-of v0, p1, Lcom/ensighten/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ensighten/google/gson/JsonDeserializer;

    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :goto_1
    iput-object p1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    .line 128
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/ensighten/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 129
    iput-object p2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ensighten/google/gson/reflect/TypeToken;

    .line 130
    iput-boolean p3, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 131
    iput-object p4, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 132
    return-void

    .restart local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    .line 122
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 125
    goto :goto_1

    .line 128
    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/ensighten/google/gson/reflect/TypeToken;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Lcom/ensighten/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 7
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
    const/4 v6, 0x0

    .line 136
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ensighten/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 139
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/ensighten/google/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/google/gson/TreeTypeAdapter;-><init>(Lcom/ensighten/google/gson/JsonSerializer;Lcom/ensighten/google/gson/JsonDeserializer;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapterFactory;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 139
    goto :goto_1
.end method
