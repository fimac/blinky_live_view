defmodule UiWeb.LedView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <section class="phx-hero">
        <h1>Blinky</h1>
    </section>

    <section class="row">
        <div class="column on-duration">
            <h1>On Duration</h1>
            <p> Current on duration: <%=@led_on %></p>
                <button phx-click="on-inc">+</button>
                <button phx-click="on-dec">-</button>
        </div>

        <div class="column off-duration">
            <h1>Off Duration</h1>
            <p> Current off duration: <%=@led_off %></p>
                <button phx-click="off-inc">+</button>
                <button phx-click="off-dec">-</button>
        </div>
    </section>
    """
  end

  def mount(_session, socket) do
    {:ok, assign(socket, led_on: 200, led_off: 200)}
  end

  def handle_event("on-inc", _, socket) do
    {:noreply, update(socket, :led_on, &(&1 + 100))}
  end

  def handle_event("on-dec", _, socket) do
    {:noreply, update(socket, :led_on, &(&1 - 100))}
  end

  def handle_event("off-inc", _, socket) do
    {:noreply, update(socket, :led_off, &(&1 + 100))}
  end

  def handle_event("off-dec", _, socket) do
    {:noreply, update(socket, :led_off, &(&1 - 100))}
  end
end
