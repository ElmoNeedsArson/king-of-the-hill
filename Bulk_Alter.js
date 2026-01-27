console.log("Running")

// Usage:
// node replace-coords.js ./functions 266=66 267=67
// Usually you will want to run bottomcoord=newbottomcoord, and +1 till +6 and +14

const fs = require("fs");
const path = require("path");
const readline = require("readline");

// ---------- CLI ARGUMENTS ----------
const [, , rootDir, ...mappingArgs] = process.argv;

if (!rootDir || mappingArgs.length === 0) {
    console.error(
        "Usage: node replace-coords.js <folder> <old=new> [old=new ...]"
    );
    process.exit(1);
}

// Parse explicit mapping
const mapping = {};
for (const arg of mappingArgs) {
    const [from, to] = arg.split("=");
    if (!/^[-]?\d+$/.test(from) || !/^[-]?\d+$/.test(to)) {
        console.error(`Invalid mapping: ${arg}`);
        process.exit(1);
    }
    mapping[from] = to;
}

// ---------- READLINE ----------
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

function ask(question) {
    return new Promise((resolve) => {
        rl.question(question, (answer) =>
            resolve(answer.trim().toLowerCase())
        );
    });
}

// ---------- FILE WALK ----------
function walk(dir) {
    let results = [];
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
        const fullPath = path.join(dir, entry.name);
        if (entry.isDirectory()) {
            results = results.concat(walk(fullPath));
        } else if (entry.isFile() && entry.name.endsWith(".mcfunction")) {
            results.push(fullPath);
        }
    }
    return results;
}

// ---------- MAIN ----------
(async function main() {
    const files = walk(rootDir);
    console.log("Found mcfunction files:", files.length);
    //files.forEach(f => console.log(" -", f));

    for (const file of files) {
        let changed = false;
        const lines = fs.readFileSync(file, "utf8").split("\n");

        // for (let i = 0; i < lines.length; i++) {
        //     const line = lines[i];

        //     // Match EXACTLY three space-separated integers
        //     const regex = /(^|\s)(-?\d+)\s(-?\d+)\s(-?\d+)(?=\s|$)/g;
        //     let match;

        //     while ((match = regex.exec(line)) !== null) {
        //         const [full, prefix, x, y, z] = match;

        //         const replaced = [x, y, z].map((n) =>
        //             mapping[n] !== undefined ? mapping[n] : n
        //         );

        //         // Skip if nothing changes
        //         if (replaced[0] === x && replaced[1] === y && replaced[2] === z) {
        //             continue;
        //         }

        //         console.log("\nFile:", file);
        //         console.log(`Line ${i + 1}:`);
        //         console.log("  Original :", line.trim());
        //         console.log(
        //             `  Replace  : ${x} ${y} ${z} → ${replaced.join(" ")}`
        //         );

        //         const answer = await ask("Apply this replacement? (y/n) ");

        //         if (answer === "y") {
        //             const before = line.slice(0, match.index);
        //             const after = line.slice(match.index + full.length);
        //             lines[i] =
        //                 before +
        //                 prefix +
        //                 replaced.join(" ") +
        //                 after;

        //             changed = true;
        //             break; // avoid index drift after modification
        //         }
        //     }
        // }

        //const coordRegex = /(^|\s)(-?\d+)\s(-?\d+)\s(-?\d+)(?=\s|$)/g;
        // const coordRegex = /(?:\s|^)(-?\d+(?:\.\d+)?)\s(-?\d+(?:\.\d+)?)\s(-?\d+(?:\.\d+)?)(?=\s|$)/g;
        const coordRegex =/(^|\s)(-?\d+(?:\.\d+)?)\s(-?\d+(?:\.\d+)?)\s(-?\d+(?:\.\d+)?)(?=\s|$)/g;

        const trustedContexts = [
            "if block",
            "positioned",
            "tp ",
            "teleport",
            "fill ",
            "clone ",
            "summon ",
            "playsound ",
            "setblock "
        ];

        function isTrustedLine(line) {
            return trustedContexts.some(ctx => line.includes(ctx));
        }

        for (let i = 0; i < lines.length; i++) {
            let line = lines[i];
            let offset = 0;
            let match;

            while ((match = coordRegex.exec(line)) !== null) {
                const [full, prefix, x, y, z] = match;
                //console.log("FOUND TRIPLE:", x, y, z, "in", file);
                const replaced = [x, y, z].map(n =>
                    mapping[n] !== undefined ? mapping[n] : n
                );

                if (replaced[0] === x && replaced[1] === y && replaced[2] === z) {
                    continue;
                }

                const autoApprove = isTrustedLine(line);

                if (!autoApprove) {
                    console.log("\nFile:", file);
                    console.log(`Line ${i + 1}:`);
                    console.log("  Original :", line.trim());
                    console.log(
                        `  Replace  : ${x} ${y} ${z} → ${replaced.join(" ")}`
                    );

                    const answer = await ask("Apply this replacement? (y/n) ");
                    if (answer !== "y") continue;
                }

                const start = match.index + prefix.length;
                const end = start + `${x} ${y} ${z}`.length;

                line =
                    line.slice(0, start) +
                    replaced.join(" ") +
                    line.slice(end);

                lines[i] = line;
                coordRegex.lastIndex = start + replaced.join(" ").length;
                changed = true;
            }
        }


        if (changed) {
            fs.writeFileSync(file, lines.join("\n"), "utf8");
            console.log(`✔ Updated ${file}`);
        }

        // if (!changed) {
        //     console.log(`– No changes in ${file}`);
        // }

    }

    rl.close();
    console.log("\nDone.");
})();
