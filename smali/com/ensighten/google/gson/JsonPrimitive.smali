.class public final Lcom/ensighten/google/gson/JsonPrimitive;
.super Lcom/ensighten/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ensighten/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private static isIntegral(Lcom/ensighten/google/gson/JsonPrimitive;)Z
    .locals 3
    .param p0, "primitive"    # Lcom/ensighten/google/gson/JsonPrimitive;

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 109
    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    :cond_2
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 94
    sget-object v4, Lcom/ensighten/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 95
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 99
    goto :goto_0
.end method


# virtual methods
.method final bridge synthetic deepCopy()Lcom/ensighten/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->deepCopy()Lcom/ensighten/google/gson/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method final deepCopy()Lcom/ensighten/google/gson/JsonPrimitive;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    if-ne p0, p1, :cond_1

    .line 339
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 322
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    check-cast p1, Lcom/ensighten/google/gson/JsonPrimitive;

    .line 326
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 327
    iget-object v2, p1, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 329
    :cond_4
    invoke-static {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isIntegral(Lcom/ensighten/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/ensighten/google/gson/JsonPrimitive;->isIntegral(Lcom/ensighten/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 332
    :cond_5
    iget-object v2, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_7

    .line 333
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 336
    invoke-virtual {p1}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 337
    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAsBoolean()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method final getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAsByte()B
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public final getAsCharacter()C
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getAsDouble()D
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public final getAsFloat()F
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public final getAsInt()I
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final getAsLong()J
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;

    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public final getAsShort()S
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 302
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 303
    const/16 v0, 0x1f

    .line 314
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-static {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->isIntegral(Lcom/ensighten/google/gson/JsonPrimitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 308
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 312
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isBoolean()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public final isNumber()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public final isString()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method final setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "primitive":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 131
    :goto_0
    return-void

    .line 127
    .restart local p1    # "primitive":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ensighten/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/ensighten/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 129
    iput-object p1, p0, Lcom/ensighten/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
