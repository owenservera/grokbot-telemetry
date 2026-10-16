# sandbox_telemetry_parse — 2026-10-16 12:43:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=453791 lines=1696
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1118 |
| `memory_sample` | 569 |
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
| `chromeBrowserPssKb` | {'int': 569} |
| `chromeGpuPssKb` | {'int': 569} |
| `chromeOtherPssKb` | {'int': 569} |
| `chromeProcesses` | {'int': 569} |
| `chromeProfiles` | {'int': 569} |
| `chromeRendererMaxPssKb` | {'int': 569} |
| `chromeRendererPssKb` | {'int': 569} |
| `chromeRenderers` | {'int': 569} |
| `chromeTabs` | {'int': 569} |
| `chromeTabsProbedProfiles` | {'int': 569} |
| `chromeUtilityPssKb` | {'int': 569} |
| `desktopPssKb` | {'int': 569} |
| `hostPssKb` | {'int': 569} |
| `kind` | {'str': 569} |
| `memAvailableKb` | {'int': 569} |
| `memTotalKb` | {'int': 569} |
| `otherPssKb` | {'int': 569} |
| `processes` | {'int': 569} |
| `pssFallbackProcesses` | {'int': 569} |

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
| `cpuMillicores` | {'int': 1115} |
| `display` | {'int': 1118} |
| `kind` | {'str': 1118} |
| `processes` | {'int': 1118} |
| `pssKb` | {'int': 1118} |
| `rendererMaxPssKb` | {'int': 1118} |
| `renderers` | {'int': 1118} |
| `tabs` | {'int': 1117} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
