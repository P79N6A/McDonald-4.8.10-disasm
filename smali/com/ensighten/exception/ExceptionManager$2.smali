.class public final Lcom/ensighten/exception/ExceptionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/exception/ExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/exception/ExceptionManager;


# direct methods
.method public constructor <init>(Lcom/ensighten/exception/ExceptionManager;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ensighten/exception/ExceptionManager$2;->a:Lcom/ensighten/exception/ExceptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ensighten/exception/ExceptionManager$2;->a:Lcom/ensighten/exception/ExceptionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ensighten/exception/ExceptionManager;->a(Lcom/ensighten/exception/ExceptionManager;Z)Z

    .line 98
    return-void
.end method
