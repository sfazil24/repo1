class model
{
  String? image;
  String? text;
  model(this.image,this.text);

}
List liss = data.map((e)=>model(e["image"], e["text"])).toList();

var data=[
  {"image":"assets/heads.jpg","text":"bluetooth"},
  {"image":"assets/ph.jpg","text":"Galaxy"},
  {"image":"assets/panda.jpg","text":"toys"},
  {"image":"assets/jack.jpg","text":"t-shirt"},
  {"image":"assets/dress.jpg","text":"dress"},
  {"image":"assets/water.jpg","text":"bottle"},
];
