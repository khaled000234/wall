class PhotoM {
  String?url;
  SrcMod? src;
  PhotoM({
    this.url , this.src
  });
  factory PhotoM.fromMap(Map<String,dynamic>parsedJson){
    return PhotoM(
url:parsedJson["url"],
src: SrcMod.fromMap(parsedJson["src"])

    );
  }
  
}
class SrcMod{
  String? portrait;
  String? large;
  String? landscape;
  String? medium;
  SrcMod({this.landscape,this.large,this.medium,this.portrait});
  factory SrcMod.fromMap(Map<String,dynamic>srcJson){
    return SrcMod(
      portrait:srcJson["portrait"],
      large:srcJson["large"],
      landscape:srcJson["landscaps"],
      medium:srcJson["medium"]
    );
  }
}