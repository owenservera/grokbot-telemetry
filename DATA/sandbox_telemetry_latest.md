# sandbox_telemetry_parse — 2026-10-13 08:30:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=949676 lines=2343
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1937 |
| `chrome_profile_sample` | 398 |
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
| `chromeBrowserPssKb` | {'int': 1937} |
| `chromeGpuPssKb` | {'int': 1937} |
| `chromeOtherPssKb` | {'int': 1937} |
| `chromeProcesses` | {'int': 1937} |
| `chromeProfiles` | {'int': 1937} |
| `chromeRendererMaxPssKb` | {'int': 1937} |
| `chromeRendererPssKb` | {'int': 1937} |
| `chromeRenderers` | {'int': 1937} |
| `chromeTabs` | {'int': 1937} |
| `chromeTabsProbedProfiles` | {'int': 1937} |
| `chromeUtilityPssKb` | {'int': 1937} |
| `desktopPssKb` | {'int': 1937} |
| `hostPssKb` | {'int': 1937} |
| `kind` | {'str': 1937} |
| `memAvailableKb` | {'int': 1937} |
| `memTotalKb` | {'int': 1937} |
| `otherPssKb` | {'int': 1937} |
| `processes` | {'int': 1937} |
| `pssFallbackProcesses` | {'int': 1937} |

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
| `cpuMillicores` | {'int': 397} |
| `display` | {'int': 398} |
| `kind` | {'str': 398} |
| `processes` | {'int': 398} |
| `pssKb` | {'int': 398} |
| `rendererMaxPssKb` | {'int': 398} |
| `renderers` | {'int': 398} |
| `tabs` | {'int': 398} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
