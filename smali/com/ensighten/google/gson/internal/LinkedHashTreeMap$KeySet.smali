.class final Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0

    .prologue
    .line 859
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->clear()V

    .line 887
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 876
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 867
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet$1;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 881
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
