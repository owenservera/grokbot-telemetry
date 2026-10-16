# sandbox_telemetry_parse — 2026-10-16 16:18:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=619120 lines=2314
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1530 |
| `memory_sample` | 775 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 775} |
| `chromeGpuPssKb` | {'int': 775} |
| `chromeOtherPssKb` | {'int': 775} |
| `chromeProcesses` | {'int': 775} |
| `chromeProfiles` | {'int': 775} |
| `chromeRendererMaxPssKb` | {'int': 775} |
| `chromeRendererPssKb` | {'int': 775} |
| `chromeRenderers` | {'int': 775} |
| `chromeTabs` | {'int': 775} |
| `chromeTabsProbedProfiles` | {'int': 775} |
| `chromeUtilityPssKb` | {'int': 775} |
| `desktopPssKb` | {'int': 775} |
| `hostPssKb` | {'int': 775} |
| `kind` | {'str': 775} |
| `memAvailableKb` | {'int': 775} |
| `memTotalKb` | {'int': 775} |
| `otherPssKb` | {'int': 775} |
| `processes` | {'int': 775} |
| `pssFallbackProcesses` | {'int': 775} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1527} |
| `display` | {'int': 1530} |
| `kind` | {'str': 1530} |
| `processes` | {'int': 1530} |
| `pssKb` | {'int': 1530} |
| `rendererMaxPssKb` | {'int': 1530} |
| `renderers` | {'int': 1530} |
| `tabs` | {'int': 1529} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
