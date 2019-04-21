.class final Lcom/ensighten/M$2$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/M$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/M$2$1;


# direct methods
.method constructor <init>(Lcom/ensighten/M$2$1;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/ensighten/M$2$1$1;->a:Lcom/ensighten/M$2$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/ensighten/M$2$1$1;->a:Lcom/ensighten/M$2$1;

    iget-object v0, v0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/ensighten/M$2$1$1;->a:Lcom/ensighten/M$2$1;

    iget-object v0, v0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1074
    :cond_0
    return-void
.end method
