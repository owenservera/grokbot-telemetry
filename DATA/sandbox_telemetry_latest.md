# sandbox_telemetry_parse — 2026-10-16 16:55:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=646398 lines=2416
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1598 |
| `memory_sample` | 809 |
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
| `chromeBrowserPssKb` | {'int': 809} |
| `chromeGpuPssKb` | {'int': 809} |
| `chromeOtherPssKb` | {'int': 809} |
| `chromeProcesses` | {'int': 809} |
| `chromeProfiles` | {'int': 809} |
| `chromeRendererMaxPssKb` | {'int': 809} |
| `chromeRendererPssKb` | {'int': 809} |
| `chromeRenderers` | {'int': 809} |
| `chromeTabs` | {'int': 809} |
| `chromeTabsProbedProfiles` | {'int': 809} |
| `chromeUtilityPssKb` | {'int': 809} |
| `desktopPssKb` | {'int': 809} |
| `hostPssKb` | {'int': 809} |
| `kind` | {'str': 809} |
| `memAvailableKb` | {'int': 809} |
| `memTotalKb` | {'int': 809} |
| `otherPssKb` | {'int': 809} |
| `processes` | {'int': 809} |
| `pssFallbackProcesses` | {'int': 809} |

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
| `cpuMillicores` | {'int': 1595} |
| `display` | {'int': 1598} |
| `kind` | {'str': 1598} |
| `processes` | {'int': 1598} |
| `pssKb` | {'int': 1598} |
| `rendererMaxPssKb` | {'int': 1598} |
| `renderers` | {'int': 1598} |
| `tabs` | {'int': 1597} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
