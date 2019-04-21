.class Lcom/mcdonalds/app/msa/MsaEditFragment$2;
.super Ljava/lang/Object;
.source "MsaEditFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4
    .param p1, "numberPicker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const-string v0, "onValueChange"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$000(Lcom/mcdonalds/app/msa/MsaEditFragment;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaEditFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->access$000(Lcom/mcdonalds/app/msa/MsaEditFragment;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
