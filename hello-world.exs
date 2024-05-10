defmodule HelloWorld do
  defp email(username, domain) do
    username <> "@" <> domain
  end

  def welcome_message(name, username, domain \\ "example.com")
      when username == "sebby" do
    "Welcome #{name}, HELLO WORLD your email is: #{email(username, domain)}"
  end

  def welcome_message(name, username, domain) do
    "Welcome #{name}, your email is: #{email(username, domain)}"
  end
end
