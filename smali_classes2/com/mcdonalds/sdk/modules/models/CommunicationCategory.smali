.class public Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CommunicationCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private communicationCategoryDescription:Ljava/lang/String;

.field private communicationCategoryDetailText:Ljava/lang/String;

.field private communicationCategoryID:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDescription:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDetailText:Ljava/lang/String;

    .line 60
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryID:Ljava/lang/Boolean;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getCommunicationCategoryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicationCategoryDetailText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicationCategoryID()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryID:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCommunicationCategoryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "communicationCategoryDescription"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDescription:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setCommunicationCategoryDetailText(Ljava/lang/String;)V
    .locals 0
    .param p1, "communicationCategoryDetailText"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDetailText:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCommunicationCategoryID(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "communicationCategoryID"    # Ljava/lang/Boolean;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryID:Ljava/lang/Boolean;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryDetailText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->communicationCategoryID:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
