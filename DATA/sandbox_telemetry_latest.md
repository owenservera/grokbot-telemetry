# sandbox_telemetry_parse — 2026-10-16 03:38:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=51136 lines=190
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 114 |
| `memory_sample` | 67 |
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
| `chromeBrowserPssKb` | {'int': 67} |
| `chromeGpuPssKb` | {'int': 67} |
| `chromeOtherPssKb` | {'int': 67} |
| `chromeProcesses` | {'int': 67} |
| `chromeProfiles` | {'int': 67} |
| `chromeRendererMaxPssKb` | {'int': 67} |
| `chromeRendererPssKb` | {'int': 67} |
| `chromeRenderers` | {'int': 67} |
| `chromeTabs` | {'int': 67} |
| `chromeTabsProbedProfiles` | {'int': 67} |
| `chromeUtilityPssKb` | {'int': 67} |
| `desktopPssKb` | {'int': 67} |
| `hostPssKb` | {'int': 67} |
| `kind` | {'str': 67} |
| `memAvailableKb` | {'int': 67} |
| `memTotalKb` | {'int': 67} |
| `otherPssKb` | {'int': 67} |
| `processes` | {'int': 67} |
| `pssFallbackProcesses` | {'int': 67} |

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
| `cpuMillicores` | {'int': 111} |
| `display` | {'int': 114} |
| `kind` | {'str': 114} |
| `processes` | {'int': 114} |
| `pssKb` | {'int': 114} |
| `rendererMaxPssKb` | {'int': 114} |
| `renderers` | {'int': 114} |
| `tabs` | {'int': 113} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
