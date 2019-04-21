.class Lcom/mcdonalds/app/msa/MsaEditFragment$1;
.super Ljava/lang/Object;
.source "MsaEditFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

.field final synthetic val$df:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaEditFragment;Ljava/text/DecimalFormat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$1;->val$df:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "format"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$1;->val$df:Ljava/text/DecimalFormat;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
