.class public final Lcom/ensighten/google/gson/JsonArray;
.super Lcom/ensighten/google/gson/JsonElement;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ensighten/google/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/ensighten/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public final add(Lcom/ensighten/google/gson/JsonElement;)V
    .locals 1
    .param p1, "element"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public final addAll(Lcom/ensighten/google/gson/JsonArray;)V
    .locals 2
    .param p1, "array"    # Lcom/ensighten/google/gson/JsonArray;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method

.method public final contains(Lcom/ensighten/google/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final deepCopy()Lcom/ensighten/google/gson/JsonArray;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lcom/ensighten/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/ensighten/google/gson/JsonArray;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    .line 47
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->deepCopy()Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ensighten/google/gson/JsonArray;->add(Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method final bridge synthetic deepCopy()Lcom/ensighten/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonArray;->deepCopy()Lcom/ensighten/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 334
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/ensighten/google/gson/JsonArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ensighten/google/gson/JsonArray;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(I)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    return-object v0
.end method

.method public final getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsBoolean()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsByte()B
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsCharacter()C
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsDouble()D
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsFloat()F
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsInt()I
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsLong()J
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsShort()S
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/ensighten/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    return-object v0
.end method

.method public final remove(Lcom/ensighten/google/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final set(ILcom/ensighten/google/gson/JsonElement;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
