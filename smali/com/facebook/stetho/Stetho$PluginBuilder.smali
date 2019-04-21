.class Lcom/facebook/stetho/Stetho$PluginBuilder;
.super Ljava/lang/Object;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/Stetho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFinished:Z

.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mProvidedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/Stetho$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/Stetho$1;

    .prologue
    .line 169
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    invoke-direct {p0}, Lcom/facebook/stetho/Stetho$PluginBuilder;-><init>()V

    return-void
.end method

.method private throwIfFinished()V
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not continue to build after finish()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mFinished:Z

    .line 205
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public provide(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    .local p2, "plugin":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/facebook/stetho/Stetho$PluginBuilder;->throwIfFinished()V

    .line 179
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public provideIfDesired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    .local p2, "plugin":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/facebook/stetho/Stetho$PluginBuilder;->throwIfFinished()V

    .line 185
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 193
    .local p0, "this":Lcom/facebook/stetho/Stetho$PluginBuilder;, "Lcom/facebook/stetho/Stetho$PluginBuilder<TT;>;"
    invoke-direct {p0}, Lcom/facebook/stetho/Stetho$PluginBuilder;->throwIfFinished()V

    .line 194
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
