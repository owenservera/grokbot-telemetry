# sandbox_telemetry_parse — 2026-10-13 14:11:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1128780 lines=2905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2218 |
| `chrome_profile_sample` | 679 |
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
| `chromeBrowserPssKb` | {'int': 2218} |
| `chromeGpuPssKb` | {'int': 2218} |
| `chromeOtherPssKb` | {'int': 2218} |
| `chromeProcesses` | {'int': 2218} |
| `chromeProfiles` | {'int': 2218} |
| `chromeRendererMaxPssKb` | {'int': 2218} |
| `chromeRendererPssKb` | {'int': 2218} |
| `chromeRenderers` | {'int': 2218} |
| `chromeTabs` | {'int': 2218} |
| `chromeTabsProbedProfiles` | {'int': 2218} |
| `chromeUtilityPssKb` | {'int': 2218} |
| `desktopPssKb` | {'int': 2218} |
| `hostPssKb` | {'int': 2218} |
| `kind` | {'str': 2218} |
| `memAvailableKb` | {'int': 2218} |
| `memTotalKb` | {'int': 2218} |
| `otherPssKb` | {'int': 2218} |
| `processes` | {'int': 2218} |
| `pssFallbackProcesses` | {'int': 2218} |

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
| `cpuMillicores` | {'int': 678} |
| `display` | {'int': 679} |
| `kind` | {'str': 679} |
| `processes` | {'int': 679} |
| `pssKb` | {'int': 679} |
| `rendererMaxPssKb` | {'int': 679} |
| `renderers` | {'int': 679} |
| `tabs` | {'int': 679} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
