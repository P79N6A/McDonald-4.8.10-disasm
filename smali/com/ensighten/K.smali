.class public final Lcom/ensighten/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/J;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "loading"

    iput-object v0, p0, Lcom/ensighten/K;->a:Ljava/lang/String;

    .line 13
    const-string v0, "loading"

    iput-object v0, p0, Lcom/ensighten/K;->b:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ensighten/K$1;

    invoke-direct {v1, p0, p1}, Lcom/ensighten/K$1;-><init>(Lcom/ensighten/K;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ensighten/K;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ensighten/K;->b:Ljava/lang/String;

    return-object v0
.end method
