class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Menyambut Keanekaragaman Melalui Upacara Adat',
    image: 'assets/upacara.png',
    discription: "Sambutlah keberagaman budaya Indonesia melalui upacara adat yang kaya akan makna dan tradisi. Di setiap langkahnya, upacara adat mengajarkan kita tentang kearifan lokal dan hubungan yang erat dengan alam serta leluhur kita."
  ),
  UnbordingContent(
    title: 'Eksplorasi Tarian Adat Indonesia',
    image: 'assets/tari.png',
    discription: "Jelajahi keindahan tari-tarian adat Indonesia yang memesona. Tiap gerakan, tiap irama, menandakan harmoni antara manusia dan alam. Melalui tarian, kita merasakan kekayaan budaya dan spiritualitas yang terkandung dalam setiap gerakannya."
  ),
  UnbordingContent(
    title: 'Kehikmatan dalam Pantun Tradisional',
    image: 'assets/pantun.png',
    discription: "Dalam kehidupan sehari-hari, pantun menjadi bagian tak terpisahkan dari budaya kita. Lebih dari sekadar puisi, pantun mengandung hikmah dan nasihat dari nenek moyang. Lewat pantun, kita menghargai kearifan lokal dan tradisi lisan yang telah terjaga ratusan tahun lamanya."
  ),
];