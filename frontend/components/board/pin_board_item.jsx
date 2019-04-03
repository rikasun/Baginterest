const PinBoardItem = (pin) => (
  <div className="gallery-item">
    <button
      onClick={() => { this.handleDelete() }}
      className="delete-button"
    >Delete</button>
    <img className="pin-photo" src={pin.photoUrl} />
  </div>
);
