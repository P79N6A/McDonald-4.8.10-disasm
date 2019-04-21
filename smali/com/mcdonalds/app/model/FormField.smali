.class public Lcom/mcdonalds/app/model/FormField;
.super Ljava/lang/Object;
.source "FormField.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private options:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation
.end field

.field private required:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "required"
    .end annotation
.end field

.field private show:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doShow()Z
    .locals 2

    .prologue
    const-string v0, "doShow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/FormField;->show:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/model/FormField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getOptions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/model/FormField;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 2

    .prologue
    const-string v0, "isRequired"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/FormField;->required:Z

    return v0
.end method
