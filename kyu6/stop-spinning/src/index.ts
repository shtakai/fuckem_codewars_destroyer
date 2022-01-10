const spinWords = (words: string): string => {
  return words
    .split(" ")
    .map((el) => (el.length >= 5 ? reverse(el) : el))
    .join(" ");
};

const reverse = (str: string): string => {
  return str.split("").reverse().join("");
};

console.log(spinWords("Hey fellow warriors"));
console.log("Hey wollef sroirraw");
