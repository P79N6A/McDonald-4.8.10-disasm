.class Lcom/ensighten/google/gson/internal/ConstructorConstructor$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/ensighten/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ensighten/google/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ensighten/google/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/ConstructorConstructor$9;->this$0:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
