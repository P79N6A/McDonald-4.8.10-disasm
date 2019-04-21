.class final Lcom/ensighten/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/X;


# direct methods
.method private constructor <init>(Lcom/ensighten/X;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/ensighten/X$a;->a:Lcom/ensighten/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/X;B)V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/ensighten/X$a;-><init>(Lcom/ensighten/X;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/ensighten/X$a;->a:Lcom/ensighten/X;

    .line 1260
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v1

    .line 1480
    iget-boolean v1, v1, Lcom/ensighten/X;->j:Z

    .line 1260
    if-eqz v1, :cond_2

    .line 1261
    iget-boolean v1, v0, Lcom/ensighten/X;->j:Z

    if-eqz v1, :cond_1

    .line 1262
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    const-string v1, "Refreshing configuration due to the refresh interval being exceeded."

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1264
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ensighten/X;->g:Z

    .line 1265
    invoke-virtual {v0}, Lcom/ensighten/X;->c()V

    :cond_1
    :goto_0
    return-void

    .line 1268
    :cond_2
    invoke-virtual {v0}, Lcom/ensighten/X;->a()V

    goto :goto_0
.end method
