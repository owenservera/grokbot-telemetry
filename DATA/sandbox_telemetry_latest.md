# sandbox_telemetry_parse — 2026-10-13 15:12:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1139004 lines=2937
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2234 |
| `chrome_profile_sample` | 695 |
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
| `chromeBrowserPssKb` | {'int': 2234} |
| `chromeGpuPssKb` | {'int': 2234} |
| `chromeOtherPssKb` | {'int': 2234} |
| `chromeProcesses` | {'int': 2234} |
| `chromeProfiles` | {'int': 2234} |
| `chromeRendererMaxPssKb` | {'int': 2234} |
| `chromeRendererPssKb` | {'int': 2234} |
| `chromeRenderers` | {'int': 2234} |
| `chromeTabs` | {'int': 2234} |
| `chromeTabsProbedProfiles` | {'int': 2234} |
| `chromeUtilityPssKb` | {'int': 2234} |
| `desktopPssKb` | {'int': 2234} |
| `hostPssKb` | {'int': 2234} |
| `kind` | {'str': 2234} |
| `memAvailableKb` | {'int': 2234} |
| `memTotalKb` | {'int': 2234} |
| `otherPssKb` | {'int': 2234} |
| `processes` | {'int': 2234} |
| `pssFallbackProcesses` | {'int': 2234} |

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
| `cpuMillicores` | {'int': 694} |
| `display` | {'int': 695} |
| `kind` | {'str': 695} |
| `processes` | {'int': 695} |
| `pssKb` | {'int': 695} |
| `rendererMaxPssKb` | {'int': 695} |
| `renderers` | {'int': 695} |
| `tabs` | {'int': 695} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
