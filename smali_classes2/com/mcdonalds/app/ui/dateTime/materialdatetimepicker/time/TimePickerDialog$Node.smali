.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .param p1, "legalKeys"    # [I

    .prologue
    .line 1855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 1858
    return-void
.end method


# virtual methods
.method public addChild(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;)V
    .locals 3
    .param p1, "child"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .prologue
    const-string v0, "addChild"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1861
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    return-void
.end method

.method public canReach(I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    const-string v2, "canReach"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1872
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1880
    :goto_0
    return-object v0

    .line 1875
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1876
    .local v0, "child":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "child":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_2
    move-object v0, v1

    .line 1880
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "containsKey"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1865
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, v4, v3

    .line 1866
    .local v0, "legalKey":I
    if-ne v0, p1, :cond_0

    .line 1868
    .end local v0    # "legalKey":I
    :goto_1
    return v1

    .line 1865
    .restart local v0    # "legalKey":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "legalKey":I
    :cond_1
    move v1, v2

    .line 1868
    goto :goto_1
.end method
