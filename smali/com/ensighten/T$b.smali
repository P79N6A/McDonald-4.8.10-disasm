.class final Lcom/ensighten/T$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer$OnPreparedListener;

.field private b:Lcom/ensighten/T;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$OnPreparedListener;Lcom/ensighten/T;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/ensighten/T$b;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 305
    iput-object p2, p0, Lcom/ensighten/T$b;->b:Lcom/ensighten/T;

    .line 306
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ensighten/T$b;->b:Lcom/ensighten/T;

    invoke-static {v0}, Lcom/ensighten/T;->b(Lcom/ensighten/T;)V

    .line 311
    iget-object v0, p0, Lcom/ensighten/T$b;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/ensighten/T$b;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 314
    :cond_0
    return-void
.end method
