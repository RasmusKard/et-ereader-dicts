## Changes made to original structure

1. **Change minOccurs of the following to 0**
   s:K (created by)
   s:KA (time of creation)
1.

## Entry Structure

Each entry is represented by the `<s:A>` element, which can contain the following child elements:

### 1. `<s:P>` (Part of Speech) - **Mandatory**

Contains information about the part of speech for the entry.

**Child Elements**:

- `<s:mg>` (Meaning Group) - **Mandatory**: Represents the meaning of the word.
- `<s:m>` (Meaning) - **Mandatory**: Represents the meaning of the word, with an attribute `s:O` for additional information.
- `<s:hev>` (Additional Information) - **Optional**: Provides additional information about the meaning (e.g., grammatical forms).
- `<s:vk>` (Variant) - **Optional**: Represents variants of the entry.

### 2. `<s:S>` (Sense) - **Mandatory**

Contains references to the grammatical and syntactical structure of the entry.

**Child Elements**:

- `<s:rp>` (Reference Part) - **Mandatory**: Contains references to the grammatical and syntactical structure.
- `<s:tp>` (Type) - **Mandatory**: Specifies the type of the entry.
- `<s:tnr>` (Type Number) - **Mandatory**: Indicates the type number.
- `<s:tg>` (Tagging) - **Mandatory**: Contains tagging information.
- `<s:dg>` (Definition Group) - **Mandatory**: Contains definitions related to the entry.
- `<s:d>` (Definition) - **Mandatory**: Contains the definition of the entry.
- `<s:gki>` (Grammatical Information) - **Optional**: Provides grammatical usage information.
- `<s:v>` (Variant) - **Optional**: Represents variants of the entry.

### 3. `<s:G>` (UUID) - **Mandatory**

Contains a unique identifier for the entry.

---

## Summary of Mandatory and Optional Data

### Mandatory Elements:

- `<s:P>` (Part of Speech)
- `<s:mg>` (Meaning Group)
- `<s:m>` (Meaning)
- `<s:S>` (Sense)
- `<s:rp>` (Reference Part)
- `<s:tp>` (Type)
- `<s:tnr>` (Type Number)
- `<s:tg>` (Tagging)
- `<s:dg>` (Definition Group)
- `<s:d>` (Definition)
- `<s:G>` (UUID)

### Optional Elements:

- `<s:hev>` (Additional Information)
- `<s:vk>` (Variant)
- `<s:gki>` (Grammatical Information)
- `<s:v>` (Variant)

# Kirje Struktuur

Iga kirje on esindatud elemendiga `<s:A>`, mis võib sisaldada järgmisi alam-elemente:

### 1. `<s:P>` (Sõnaliik) - **Kohustuslik**

Sisaldab teavet kirje sõnaliigi kohta.

**Alam-elemendid**:

- `<s:mg>` (Märksõna Grupp) - **Kohustuslik**: Esindab sõna tähendust.
- `<s:m>` (Märksõna) - **Kohustuslik**: Esindab sõna tähendust koos atribuudiga `s:O` täiendava teabe jaoks.
- `<s:hev>` (Täiendav Info) - **Valikuline**: Annab täiendavat teavet tähenduse kohta (nt grammatilised vormid).
- `<s:vk>` (Variant) - **Valikuline**: Esindab kirje variante.

### 2. `<s:S>` (Sisu) - **Kohustuslik**

Sisaldab viiteid kirje grammatika- ja süntaksistruktuurile.

**Alam-elemendid**:

- `<s:rp>` (Rooma Numbri Plokk) - **Kohustuslik**: Sisaldab viiteid grammatika- ja süntaksistruktuurile.
- `<s:tp>` (Tähenduse Plokk) - **Kohustuslik**: Määrab kirje tüübi.
- `<s:tnr>` (Tähendusnumber) - **Kohustuslik**: Näitab tüübinumbrit.
- `<s:tg>` (Tähistamine) - **Kohustuslik**: Sisaldab tähistamise teavet.
- `<s:dg>` (Tähendusgrupp) - **Kohustuslik**: Sisaldab kirje tähendusi.
- `<s:d>` (Seletus) - **Kohustuslik**: Sisaldab kirje seletust.
- `<s:gki>` (Grammatiline Kasutusinfo) - **Valikuline**: Annab grammatilisest kasutusest teavet.
- `<s:v>` (Valdkond) - **Valikuline**: Esindab kirje valdkonda.

### 3. `<s:G>` (UUID) - **Kohustuslik**

Sisaldab kirje unikaalset identifikaatorit.

---

## Kohustuslike ja Valikuliste Andmete Kokkuvõte

### Kohustuslikud Elemendid:

- `<s:P>` (Sõnaliik)
- `<s:mg>` (Märksõna Grupp)
- `<s:m>` (Märksõna)
- `<s:S>` (Sisu)
- `<s:rp>` (Rooma Numbri Plokk)
- `<s:tp>` (Tähenduse Plokk)
- `<s:tnr>` (Tähendusnumber)
- `<s:tg>` (Tähistamine)
- `<s:dg>` (Tähendusgrupp)
- `<s:d>` (Seletus)
- `<s:G>` (UUID)

### Valikulised Elemendid:

- `<s:hev>` (Täiendav Info)
- `<s:vk>` (Variant)
- `<s:gki>` (Grammatiline Kasutusinfo)
- `<s:v>` (Valdkond)

## XDXF to EKI XML

<!-- XDXF -->
<ar>
    <k>marry</k>
    <def>
        <def cmt="To join in wedlock or matrimony (...)">
            <def>
                <gr>in pass.</gr>
                <deftext>(with ref. either to the act and ceremony, or to the wedded state as a result).
                </deftext>
            </def>
            <def>
                <deftext>Said of the priest or other functionary who performs the rite. Also absol.</deftext>
            </def>
        </def>
        <def>
            <def>
                <deftext>To give in marriage, cause to be married. Said esp. of a parent or guardian.</deftext>
            </def>
            <def>
                <deftext>With off</deftext>
            </def>
        </def>
    </def>
</ar>

<!-- EKI XML -->

<ar>
    foreach s:m {
        <k><s:m> text content</k>
    }

    <def>
        <def cmt="To join in wedlock or matrimony (...)">
            <def>
                <gr>in pass.</gr>
                <deftext>(with ref. either to the act and ceremony, or to the wedded state as a result).
                </deftext>
            </def>
            <def>
                <deftext>Said of the priest or other functionary who performs the rite. Also absol.</deftext>
            </def>
        </def>
        <def>
            <def>
                <deftext>To give in marriage, cause to be married. Said esp. of a parent or guardian.</deftext>
            </def>
            <def>
                <deftext>With off</deftext>
            </def>
        </def>
    </def>

</ar>

<s:A>

</s:A>

## Data needed from the source XML for xdxf conversion

MAIN TAG - <ar> = <s:A>

s:m = idx:orth (Main word string)
(If word has multiple inflections(kaanded) nest idx:infl inside idx:orth and add inflections inside the idx:infl tag as idx:iform)

<!-- <idx:orth>record

<idx:infl>

<idx:iform value="records" />

<idx:iform value="recording" />

<idx:iform value="recorded" />

</idx:infl>

</idx:orth>  -->

Käänded tulevad läbi s:mv ning s:mt vormide tuletamisest

verb/noun etc definitions are present in s:sl

1. Get main word by getting text content of element s:A[s:P][s:mg][s:m][s:0] (Remove chars '|', '\' and '-' (Used to separate compound words?))
1. Add main word into <k> (Need to also handle words with multiple meanings, denoted in the source XML as (word1,word2,word3...))
1. (IF) s:A[s:P][s:mg][s:grg][s:mtg] has children [s:mv] and [s:mt] split [s:mv] on comma into a list and iterate over list, each element is added into new <k>
1. Create def blocks by looping over s:A[s:S][s:rp] children [s:tp]
1. Create defs inside the blocks by looping over [s:tg] of [s:tp]

## EKI explanatory dictionary 2009 XML structure

Explanation of the Structure
<s:A>: Represents a dictionary entry. The attribute s:Al can indicate additional information about the entry.
<s:P>: Contains part of speech and morphological information.
<s:mg>: Represents the morphological group.
<s:m>: The main word or phrase (head
word), with attributes for morphological information.
<s:hev>: Additional morphological information.
<s:S>: Contains semantic information related to the entry.
<s:rp>: Reference part for the entry.
<s:tp>: Type reference for the entry.
<s:tg>: Tagging information for the entry.
<s:dg>: Definition group containing the definition.
<s:d>: The actual definition text.
<s:np>: Noun phrase containing example usage.
<s:ng>: Noun group containing example usage.
<s:n>: Example usage of the headword.
<s:G>: A unique identifier for the entry.

Documentation for Simple Types in ss\_\_tyybid.xsd.xml

1. src_tyyp
   Description: Represents the source type of a dictionary entry.
   Possible Values:
   leksm: LEKS headword (LEKS märksõna)
   lekstp: LEKS sense (LEKS tähendus)
2. mliik_tyyp
   Description: Represents the type of a new headword.
   Possible Values:
   uus: New headword (uus märksõna)
3. sa_tyyp
   Description: Represents the type of an obsolete entry.
   Possible Values:
   van: Obsolete (vananenud)
4. tliik_tyyp
   Description: Represents the type of a new sense.
   Possible Values:
   uus: New sense (uus tähendus)
5. seta_tyyp
   Description: Represents the type of an entry without a specific attribute.
   Possible Values:
   0: No kvm (ilma kvm-ita)
6. Al_tyyp
   Description: Represents the type of an article.
   Possible Values:
   all: Run-on (allartikkel)
7. mvtl_tyyp
   Description: Represents the type of a comparative reference.
   Possible Values:
   vrd: Compare with (võrdle)
   vt: Look at (vaata)
8. liik_tyyp
   Description: Represents the type of a phrase or name.
   Possible Values:
   f: Phrase (fraseologism)
   p: Proper name (pärisnimi)
   z: Loanword (tsitaatsõna)
   y: Connection (ühend)
   d: Cosubordinative subsense (kaasalluvussuhtes alltähendus)
9. v_tyyp
   Description: Represents various fields of study or categories.
   Possible Values:
   aj: History (ajalugu)
   anat: Anatomy (anatoomia)
   antr: Anthropology (antropoloogia)
   arheol: Archeology (arheoloogia)
   astr: Astronomy (astronoomia)
   bibl: Bibliography (bibliograafia)
   maj: Economics (majandus, majandusteadus)
   mat: Mathematics (matemaatika)
   med: Medicine (meditsiin)
   mer: Nautical (merendus)
   meteor: Meteorology (meteoroloogia)
   mets: Forestry (metsandus)
   muus: Music (muusika)
   müt: Mythology (mütoloogia)
   nõuk: Soviet (nõukogulik)
   paleont: Paleontology (paleontoloogia)
   ped: Education (pedagoogika)
   pol: Politics (poliitika)
   psühh: Psychology (psühholoogia)
   põll: Agriculture (põllumajandus)
10. vk_tyyp
    Description: Represents various grammatical cases.
    Possible Values:
    as: Abstract substantive (abstract substantive)
    dem: Diminutive (deminutiiv, vähendussõna)
    gen: Genitive (genitiiv, omastav)
    illat: Illative (illatiiv, sisseütlev)
    imperf: Imperfect (imperfekt, lihtminevik)
    impers: Impersonal (impersonaal, umbisikuline tegumood)
    indekl: Indefinite (indekleerimata)
    iness: Inessive (inessiiv, seesütlev)
    komp: Comparative (komparatiiv, keskvõrre)
    part: Partitive (partitiiv, osastav)
    partits: Participle (partitsiip, kesksõna)
    pl: Plural (pluural, mitmus)
    pl elat: Plural elative (pluurali elatiiv, mitmuse seestütlev)
    pl gen: Plural genitive (pluurali genitiiv, mitmuse omastav)
    pl illat: Plural illative (pluurali illatiiv, mitmuse sisseütlev)
    pl iness: Plural inessive (pluurali inessiiv, mitmuse seesütlev)
    pl nom: Plural nominative (pluurali nominatiiv, mitmuse nimetav)
    pl part: Plural partitive (pluurali partitiiv, mitmuse osastav)
    pl term: Plural terminative (pluurali terminatiiv, mitmuse rajav)
    superl: Superlative (superlatiiv, ülivõrre)
    tgn: Substantive suffix -ja = actor (tegijanimi)
    tn: Substantive suffix -mine = act, process (teonimi)
