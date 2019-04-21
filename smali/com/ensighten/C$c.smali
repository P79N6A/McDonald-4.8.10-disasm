.class final Lcom/ensighten/C$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/ensighten/C;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/ensighten/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ensighten/C;-><init>(B)V

    sput-object v0, Lcom/ensighten/C$c;->a:Lcom/ensighten/C;

    return-void
.end method
