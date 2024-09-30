<App>
  <Button id="button1" marginType="normal" text="Button" />
  <Button id="button2" marginType="normal" text="Button" />
  <Text
    id="text1"
    marginType="normal"
    value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
    verticalAlign="center"
  />
</App>
