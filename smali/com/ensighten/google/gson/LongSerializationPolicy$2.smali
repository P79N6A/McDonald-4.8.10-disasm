.class final enum Lcom/ensighten/google/gson/LongSerializationPolicy$2;
.super Lcom/ensighten/google/gson/LongSerializationPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ensighten/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/ensighten/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcom/ensighten/google/gson/JsonElement;
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 46
    new-instance v0, Lcom/ensighten/google/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method