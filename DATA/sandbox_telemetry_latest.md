# sandbox_telemetry_parse — 2026-10-13 19:25:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1200952 lines=3131
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2331 |
| `chrome_profile_sample` | 792 |
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
| `chromeBrowserPssKb` | {'int': 2331} |
| `chromeGpuPssKb` | {'int': 2331} |
| `chromeOtherPssKb` | {'int': 2331} |
| `chromeProcesses` | {'int': 2331} |
| `chromeProfiles` | {'int': 2331} |
| `chromeRendererMaxPssKb` | {'int': 2331} |
| `chromeRendererPssKb` | {'int': 2331} |
| `chromeRenderers` | {'int': 2331} |
| `chromeTabs` | {'int': 2331} |
| `chromeTabsProbedProfiles` | {'int': 2331} |
| `chromeUtilityPssKb` | {'int': 2331} |
| `desktopPssKb` | {'int': 2331} |
| `hostPssKb` | {'int': 2331} |
| `kind` | {'str': 2331} |
| `memAvailableKb` | {'int': 2331} |
| `memTotalKb` | {'int': 2331} |
| `otherPssKb` | {'int': 2331} |
| `processes` | {'int': 2331} |
| `pssFallbackProcesses` | {'int': 2331} |

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
| `cpuMillicores` | {'int': 791} |
| `display` | {'int': 792} |
| `kind` | {'str': 792} |
| `processes` | {'int': 792} |
| `pssKb` | {'int': 792} |
| `rendererMaxPssKb` | {'int': 792} |
| `renderers` | {'int': 792} |
| `tabs` | {'int': 792} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
