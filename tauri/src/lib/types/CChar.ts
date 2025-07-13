export class CChar {
  public constructor(
    public char: string = "",
    public pinyin: string = "",
    public meaning: string = "",
    public example: string = "",
    public pinyin_example: string = "",
  ) {}
}

export class CSentence {
  public constructor(public chars: CChar[]) {}
}

export class CQuestion {
  public constructor(
    public sentence: CSentence,
    public availableChars: CChar[],
  ) {}
}
