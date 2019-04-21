.class Lcom/aps/b$a;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/aps/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/aps/b;


# direct methods
.method constructor <init>(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/aps/b$a;->a:Lcom/aps/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aps/b$a;->a:Lcom/aps/b;

    iput p1, v0, Lcom/aps/b;->b:I

    .line 138
    return-void
.end method
