# Argentum Software License

**(Source-Available, Non-Commercial + Commercial Binary)**

**Version 1.0 – Draft**  
**Licensor:** Kota-Codex LLC (“Licensor”)  
**Software:** Argentum Programming Language (compiler, libraries, and tools)

---

## Preamble — Rationale and Intent

This License introduces a progressive fee structure designed to promote equitable and sustainable software development.  
The Licensor acknowledges that software infrastructure creates significant value across organizations of widely differing scale and internal pay equity.  
Accordingly, this License establishes a model that:

1. **Exempts small and emerging entities** (with annual revenue under USD 1 billion) to foster innovation, research, and early-stage development;  
2. **Encourages internal pay equity and workforce stability** by linking commercial license fees to the gap between the highest and median employee compensation, with discounts for organizations maintaining employment continuity;  
3. **Discourages excessive executive-to-employee pay disparities** and workforce reductions during profitable periods;  
4. **Discourages offshoring or relocation** undertaken solely to cut costs or increase margins where such actions materially erode equitable pay or domestic employment opportunities;  
5. **Ensures accountability and fairness** by consolidating affiliated entities and preventing artificial restructuring intended to evade license fees.

The intent is not to penalize success, but to align contribution with capacity, ethical stewardship, and responsible employment—ensuring that the benefits of technological progress are shared broadly and sustainably across the global ecosystem.

---

## 1. Grant of License

### **1.1 Non-Commercial License**

The Licensor grants any individual, nonprofit, academic institution, or for-profit entity a worldwide, royalty-free, non-exclusive, non-transferable license to:

* Copy, view, and modify the Software in **source form only**;  
* Distribute the Software **in source form only**, including modified versions, provided that this License and its Preamble remain intact and unaltered;
* Use the Software strictly for **non-commercial purposes** (including research, education, personal experimentation, or evaluation).

### **1.2 Commercial License**

The Licensor grants any individual, nonprofit, academic institution, or for-profit entity a worldwide, royalty-free, non-exclusive, non-transferable license for **commercial use**, including internal production and distribution of compiled Argetnum applications, provided that such use:

* Employs an official **binary distribution** of Argentum from Kota-Codex LLC; or  
* Uses a compiler built from **unaltered official source code**; or  
* Uses source code modified solely for platform or library integration that **does not affect** the **syntax or semantics** of the Argentum programming language as officially documented.

The annual commercial license fee for use of the Argentum compiler libraries or tools is determined in **Section 6**.

---

## **2\. Patent Protection**

### **2.1 Software Patents**

The Licensee may **not** create, distribute, or assist in creating any software that implements, reproduces, or derives from the patented concepts underlying Argentum’s memory-management system or other patent-protected elements.

### **2.2 Documentation and Educational Materials**

Documentation and educational materials may be created, copied, modified, and distributed for **any purpose, including commercial use**, provided that:

* All materials clearly state that they are based on Argentum source and/or documentation;
* A prominent notice of **“Patent Pending / Patent-Protected”** is included;  
* The documentation does **not** provide instructions or enable the creation of a competing implementation of Argentum’s patented memory-management system.

---

## 3. Contributions

### **3.1 Contribution Agreement**

By submitting any code, documentation, or other material to the Argentum project, each Contributor agrees that:

* All contributions are licensed to the Licensor under the **Argentum Software License**;  
* The Contributor retains no ownership or royalty rights;  
* The Contributor’s name may be listed in public acknowledgments;  
* The Licensor may relicense or commercialize contributions under future versions of this License.

### **3.2 Bounty and Recognition Program**

If the project generates revenue or receives external funding, the Licensor intends (but is not obligated) to establish a **bounty or reward program** to recognize and compensate notable contributions proportionally to available resources.

---

## 4. Restrictions

The Licensee may **not**:

* Use the Software or modified versions for commercial purposes unless licensed under **Section 1.2**;  
* Circumvent or replicate Argentum’s patents or design concepts in derivative works;  
* Use the Software to train machine-learning models intended to reproduce Argentum’s behavior.

**Note:** Redistribution, SaaS hosting, or rental of the Software is permitted **only when fully compliant with this License**.

---

## 5. Ownership

All rights not expressly granted remain with the Licensor.  
Argentum and its components are protected by copyright, trademark, and patent law.  
Patent coverage includes, but is not limited to, the memory-ownership and reference-management methods described in Argentum technical documentation.

---

## 6. Licensing Fee Determination

### **6.1 Definitions**

* **Annual Revenue:** Consolidated worldwide revenue of the Licensee and all entities under common control;  
* **Max Annual Employee Compensation:** Highest total annual compensation paid to any employee of the Licensee or entities under common control;  
* **Median Employee Compensation:** Median total annual compensation for all employees of the Licensee or entities under common control;  
* **Layoffs:** Any involuntary termination affecting ten (10) or more employees of the Licensee or entities under common control during the current calendar year.

### **6.2 Calculation**

* **If annual revenue** is **below USD 1 billion** → License Fee = 0  
* **Base Fee:** `(Max Annual Employee Compensation ÷ 20) − Median Employee Compensation`
* **Minimum Threshold:** If Base Fee ≤ 0 → License Fee = 0  
* **Layoff Adjustment:**  
  * If layoffs occurred → License Fee = Base Fee  
  * If no layoffs → License Fee = 50% of Base Fee

### **6.3 Aggregation and Anti-Avoidance**

* All entities under common ownership or control are treated as a single Licensee.  
* Attempts to restructure, divert profits, or evade the Fee may result in recalculation on a consolidated basis at the Licensor’s discretion.

### **6.4 Reporting and Verification**

* Enterprise Licensees must annually provide certified financial and compensation data.  
* The Licensor may audit or request supporting documentation.  
  Discrepancies exceeding 10% may be adjusted and charged to the Licensee.

---

## 7. Termination

Any breach of **Sections 1, 2, 4, or 6** immediately terminates the License.  
Upon termination, the Licensee must cease all use and destroy all copies of the Software.

---

## 8. Disclaimer of Warranty

THE SOFTWARE IS PROVIDED “AS IS,” WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

---

## 9. Limitation of Liability

IN NO EVENT SHALL THE LICENSOR BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY ARISING FROM THE USE OF THE SOFTWARE OR ANY COMMERCIAL DECISIONS BASED ON IT.

---

## 10. Governing Law

This License is governed by the laws of the **State of Delaware, United States**.  
All disputes shall be resolved exclusively in the competent courts of Delaware.

---

## **11\. Notice**

This License is **not open source**.  
Source code is made available for transparency, collaboration, and non-commercial use only.  
Commercial rights to compile or distribute binary forms are reserved exclusively to **Kota-Codex LLC**.