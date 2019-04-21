.class public Lcom/mcdonalds/app/model/Register;
.super Ljava/lang/Object;
.source "Register.java"


# instance fields
.field private chooseSignInMethod:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chooseEmailOrPhoneAsUsername"
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private phoneLength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneMaxNumberOfDigits"
    .end annotation
.end field

.field private semanticErrors:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showMessageErrorOnView"
    .end annotation
.end field

.field private singleFieldName:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nameIsSingleField"
    .end annotation
.end field

.field private toggles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toggles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/RegisterToggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSignInMethodEnabled()Z
    .locals 2

    .prologue
    const-string v0, "chooseSignInMethodEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/Register;->chooseSignInMethod:Z

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/FormField;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFields"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/model/Register;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/RegisterToggle;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getToggles"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/model/Register;->toggles:Ljava/util/List;

    return-object v0
.end method

.method public isSingleFieldName()Z
    .locals 2

    .prologue
    const-string v0, "isSingleFieldName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/Register;->singleFieldName:Z

    return v0
.end method
