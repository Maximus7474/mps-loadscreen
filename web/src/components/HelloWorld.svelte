<script lang="ts">
  interface ReturnData {
    x: number;
    y: number;
    z: number;
  }

  let clientData: ReturnData;

  const handleClientData = () => {
    clientData = { x: 100, y: 100, z: 100 }
  };
</script>

<div class="container">
  <h2>Svelte NUI Popup!</h2>
  <div style="margin: 0.3vh 0;">Player coords: {JSON.stringify(clientData) || ''}</div>
  <div class="btn-wrapper">
    <button on:click={handleClientData}> Get client coords </button>
  </div>
  <span>Or press the escape key!</span>
</div>

<style>
  .container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    align-content: center;
    justify-content: center;
    border-radius: 5px;
    width: 17%;
    height: 17%;
    font-size: 1.5vh;
    color: white;
    background-color: #ff3c04;
    user-select: none;
  }

  .btn-wrapper {
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    align-content: center;
    width: 100%;
  }

  button {
    flex: 0 45%;
    padding: 0.8vh;
    background-color: white;
    color: black;
    font-family: 'Segoe UI';
    border: none;
    border-radius: 5px;
  }

  button:hover {
    background-color: rgb(212, 212, 212);
  }
</style>
