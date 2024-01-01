class myHeader extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
    <header class="navbar has-shadow is-black">
      <hgroup class="navbar-brand">
        <h1 class="navbar-item image is-200x200">
          <img src="./image/E-icon.jpg" alt="E-Logo" class="is-rounded" />
        </h1>
        <p class="m-3">Estifanos Taye</p>
        <a class="navbar-burger" id="burger">
          <span></span>
          <span></span>
          <span></span>
        </a>
      </hgroup>

      <ul class="navbar-menu navbar-end" id="nav-links">
        <li class="navbar-item"><a href="./home.html">Home</a></li>
        <li class="navbar-item"><a href="./profile.html">Profile</a></li>
        <li class="navbar-item"><a href="./portfolio.html">Portfolio</a></li>
        <li class="navbar-item"><a href="./scrap_book.html">Scrap Book</a></li>
        <li class="navbar-item"><a href="./contact.html">Contact</a></li>
      </ul>
    </header>
`;
  }
}
class myFooter extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
    <footer class="footer columns has-background-black has-text-white mt-4">
      <section class="column is-one-quarter">
        <h2 class="title has-text-centered is-size-4">Contact me</h2>
        <nav class="columns image is-multiline is-flex-mobile">
          <a href="https://t.me/Elgeneral1" class="column is-6 is-6-mobile"
            ><img
              src="./image/telegram.png"
              alt="telegram"
              class="is-rounded m-3"
          /></a>
          <a
            href="https://www.linkedin.com/in/estifanos-taye-24b917288?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bks55i7scS5yjGwT8NOViUQ%3D%3D"
            class="column is-6 is-6-mobile"
            ><img
              src="./image/linkedin.png"
              alt="linkedin"
              class="m-3 is-rounded"
          /></a>
          <a
            href="https://www.lemlemschool.com/"
            class="column is-6 is-6-mobile"
            ><img src="./image/lemlem.jpg" alt="lemlem" class="m-3 is-rounded"
          /></a>

          <a
            href="https://github.com/EstifanosTaye320"
            class="column is-6 is-6-mobile"
            ><img src="./image/github.png" alt="GitHub" class="m-3 is-rounded"
          /></a>
          <a
            href="https://www.figma.com/files/recents-and-sharing/recently-viewed?fuid=1304515570725595342"
            class="column is-6 is-6-mobile"
            ><img src="./image/figma.jpg" alt="figma" class="m-3 is-rounded"
          /></a>
          <a
            href="https://discord.com/channels/@me"
            class="column is-6 is-6-mobile"
            ><img
              src="./image/discord.jpg"
              alt="discord"
              class="m-3 is-rounded"
          /></a>
        </nav>
      </section>

      <section class="column is-two-quarter">
        <h2 class="title has-text-centered is-size-4">About me</h2>
        <p>
          My name is Estifanos Taye am a 3rd year Software student at AAiT of
          Addis Abeba University, my hobbies include solving problems on
          programming sites like leetcode, hackerrank, and codeforces....
        </p>
        <a href="./profile.html" class="is-flex is-justify-content-center"
          >Show More >></a
        >
      </section>

      <section class="column is-one-quarter">
        <h2 class="title has-text-centered is-size-4">My information</h2>
        <div class="is-flex is-justify-content-center">
          <img src="./image/image-icon.png" alt="Profile picture" class="m-3" />
        </div>
        <ul class="has-text-centered">
          <li>
            Email:
            <a href="mailto:estifanostaye11@gmail.com"
              >estifanostaye11@gmail.com</a
            >
          </li>
          <li>Phone Number: 0925353945</li>
          <li>ID Number: UGR/7285/14</li>
        </ul>
      </section>
    </footer>
`;
  }
}

class mySelection extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
    <section>
    <h2 class="title has-text-centered m-4">Means of selection</h2>
    <ul
      class="columns is-multiline"
      oninput="meansOfSelection(); sorting()"
    >
      <li class="column is-one-third has-text-centered">
        <label
          ><input type="radio" name="select" value="Games" />Games</label
        >
      </li>
      <li class="column is-one-third has-text-centered">
        <label><input type="radio" name="select" value="Math" />Math</label>
      </li>
      <li class="column is-one-third has-text-centered">
        <label
          ><input
            type="radio"
            name="select"
            value="Physics"
          />Physics</label
        >
      </li>
      <li class="column is-one-third has-text-centered">
        <label><input type="radio" name="select" value="Time" />Time</label>
      </li>
      <li class="column is-one-third has-text-centered">
        <label
          ><input type="radio" name="select" value="Other" />Other</label
        >
      </li>
      <li class="column is-one-third has-text-centered">
        <label
          ><input
            type="radio"
            name="select"
            value="All"
            checked
          />All</label
        >
      </li>
    </ul>
  </section>
    `;
  }
}

function sorting() {
  const workspace = document.getElementById("listing-area");
  const sortPara = document.querySelector("input[name='sort']:checked");
  if (sortPara) {
    let allElements, i, switching, shouldSwitch, sortBy;
    switching = true;
    while (switching) {
      switching = false;
      allElements = workspace.getElementsByClassName("all");
      switch (sortPara.value) {
        case "name":
          sortBy = workspace.getElementsByClassName("titleness");
          console.log(sortBy);
          break;
        case "favorite":
          sortBy = workspace.getElementsByClassName("favoriteness");
          console.log(sortBy);
          break;
        case "time":
          sortBy = workspace.getElementsByClassName("dateness");
          console.log(sortBy);
      }
      for (i = 0; i < sortBy.length - 1; i++) {
        shouldSwitch = false;
        if (
          sortBy[i].innerHTML.toLowerCase() >
          sortBy[i + 1].innerHTML.toLowerCase()
        ) {
          shouldSwitch = true;
          break;
        }
      }
      if (shouldSwitch) {
        allElements[i].parentNode.insertBefore(
          allElements[i + 1],
          allElements[i]
        );
        switching = true;
      }
    }
  }
}
function meansOfSelection() {
  const workspace = document.getElementById("listing-area");
  const selectPara = document.querySelector("input[name='select']:checked");
  const allElements = workspace.getElementsByClassName("all");
  const selection = (sortBy) => {
    for (ele of allElements) {
      ele.style.display = "none";
    }

    if (sortBy.length === 0) {
      document.getElementById("message").style.display = "block";
    } else {
      document.getElementById("message").style.display = "none";
      for (item of sortBy) {
        item.style.display = "flex";
      }
    }
  };
  switch (selectPara.value) {
    case "Games":
      const games = workspace.getElementsByClassName("game");
      selection(games);
      break;
    case "Math":
      const maths = workspace.getElementsByClassName("math");
      selection(maths);
      break;
    case "Physics":
      const physics = workspace.getElementsByClassName("physics");
      selection(physics);
      break;
    case "Time":
      const times = workspace.getElementsByClassName("time");
      selection(times);
      break;
    case "Other":
      const others = workspace.getElementsByClassName("other");
      selection(others);
      break;
    case "All":
      selection(allElements);
      break;
  }
}

document.getElementById("message").style.display = "none";
customElements.define("my-header", myHeader);
customElements.define("my-footer", myFooter);
customElements.define("my-selection", mySelection);

const burgerIcon = document.querySelector("#burger");
const burgerMenu = document.querySelector("#nav-links");

burgerIcon.addEventListener("click", () => {
  burgerMenu.classList.toggle("is-active");
});
