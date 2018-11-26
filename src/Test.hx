import ink.runtime.Story;

class Test {
    static function main() {
        var json: String = sys.io.File.getContent('simple.ink.json');

        var story: Story = new Story(json);

        story.Continue();
        trace(story.currentText);
    }
}
