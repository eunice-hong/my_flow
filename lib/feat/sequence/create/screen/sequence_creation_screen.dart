import 'package:flutter/material.dart';

class SequenceCreationScreen extends StatefulWidget {
  const SequenceCreationScreen({super.key});

  @override
  SequenceCreationScreenState createState() => SequenceCreationScreenState();
}

class SequenceCreationScreenState extends State<SequenceCreationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _repetitionsController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _tagController = TextEditingController();

  final List<String> _tags = [];

  void _addTag() {
    final tag = _tagController.text.trim();
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
        _tagController.clear();
      });
      FocusScope.of(context).unfocus(); // Hide keyboard
    }
  }

  void _removeTag(String tag) {
    setState(() {
      _tags.remove(tag);
    });
  }

  void _saveSequence() {
    String name = _nameController.text.trim();
    String repetitions = _repetitionsController.text.trim();
    String time = _timeController.text.trim();

    if (name.isEmpty || repetitions.isEmpty || time.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    // Save logic here
    print(
      'Sequence Saved: $name, Reps: $repetitions, Time: $time, Tags: $_tags',
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Sequence', style: textTheme.titleLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildTextField(_nameController, 'Sequence Name'),
            const SizedBox(height: 10),
            _buildTextField(
              _repetitionsController,
              'Repetitions',
              isNumeric: true,
            ),
            const SizedBox(height: 10),
            _buildTextField(_timeController, 'Time (seconds)', isNumeric: true),
            const SizedBox(height: 20),

            // Tag Input
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    _tagController,
                    'Add Tag',
                    onSubmitted: (_) => _addTag(),
                  ),
                ),
                const SizedBox(width: 10),
                FilledButton(
                  onPressed: _addTag,
                  child: const Text('Add'),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Display added tags
            if (_tags.isNotEmpty)
              Wrap(
                spacing: 8,
                children: _tags
                    .map(
                      (tag) => Chip(
                        label: Text(tag, style: textTheme.bodyMedium),
                        deleteIcon: const Icon(Icons.close),
                        onDeleted: () => _removeTag(tag),
                      ),
                    )
                    .toList(),
              ),

            const SizedBox(height: 20),

            // Save Button
            Center(
              child: FilledButton(
                onPressed: _saveSequence,
                child: const Text('Save Sequence'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    bool isNumeric = false,
    ValueChanged<String>? onSubmitted,
  }) {
    return TextField(
      controller: controller,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onSubmitted: onSubmitted,
    );
  }
}
