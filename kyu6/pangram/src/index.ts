const ALPHABET_ARRAY = [..."abcdefghijklmnopqrstuvwxyz"];

type AlphabetCount = {
  [key: string]: number;
};

const isPangram = (phrase: string): boolean => {
  // 正規化
  // 小文字化＋trimspace
  const normalizedPhase = phrase.toLowerCase().trim().replace(/\W/g, "");
  // 結果の初期化
  // { 'a': 0, 'b': 1, 'c': 2, 'd': 3 }
  const results: AlphabetCount = {};
  for (const el of ALPHABET_ARRAY) {
    results[el] = 0;
  }

  // objectに突っ込む
  [...normalizedPhase].forEach((el) => {
    results[el] += 1;
  });
  // a-zみてカウントが1であればOK
  // console.log({ results });
  for (const el of ALPHABET_ARRAY) {
    if (results[el] === 0) return false;
  }
  return true;
};

console.log(isPangram("The quick brown fox jumps over the lazy dog."));
console.log("true");
console.log("---");
console.log(isPangram("This is not a pangram."));
console.log("false");
