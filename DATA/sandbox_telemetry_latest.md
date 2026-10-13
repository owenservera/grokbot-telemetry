# sandbox_telemetry_parse — 2026-10-13 22:56:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1275665 lines=3365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2448 |
| `chrome_profile_sample` | 909 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2448} |
| `chromeGpuPssKb` | {'int': 2448} |
| `chromeOtherPssKb` | {'int': 2448} |
| `chromeProcesses` | {'int': 2448} |
| `chromeProfiles` | {'int': 2448} |
| `chromeRendererMaxPssKb` | {'int': 2448} |
| `chromeRendererPssKb` | {'int': 2448} |
| `chromeRenderers` | {'int': 2448} |
| `chromeTabs` | {'int': 2448} |
| `chromeTabsProbedProfiles` | {'int': 2448} |
| `chromeUtilityPssKb` | {'int': 2448} |
| `desktopPssKb` | {'int': 2448} |
| `hostPssKb` | {'int': 2448} |
| `kind` | {'str': 2448} |
| `memAvailableKb` | {'int': 2448} |
| `memTotalKb` | {'int': 2448} |
| `otherPssKb` | {'int': 2448} |
| `processes` | {'int': 2448} |
| `pssFallbackProcesses` | {'int': 2448} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 908} |
| `display` | {'int': 909} |
| `kind` | {'str': 909} |
| `processes` | {'int': 909} |
| `pssKb` | {'int': 909} |
| `rendererMaxPssKb` | {'int': 909} |
| `renderers` | {'int': 909} |
| `tabs` | {'int': 909} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
