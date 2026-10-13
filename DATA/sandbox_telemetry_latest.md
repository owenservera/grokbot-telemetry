# sandbox_telemetry_parse — 2026-10-13 03:36:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=789921 lines=1841
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1686 |
| `chrome_profile_sample` | 147 |
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
| `chromeBrowserPssKb` | {'int': 1686} |
| `chromeGpuPssKb` | {'int': 1686} |
| `chromeOtherPssKb` | {'int': 1686} |
| `chromeProcesses` | {'int': 1686} |
| `chromeProfiles` | {'int': 1686} |
| `chromeRendererMaxPssKb` | {'int': 1686} |
| `chromeRendererPssKb` | {'int': 1686} |
| `chromeRenderers` | {'int': 1686} |
| `chromeTabs` | {'int': 1686} |
| `chromeTabsProbedProfiles` | {'int': 1686} |
| `chromeUtilityPssKb` | {'int': 1686} |
| `desktopPssKb` | {'int': 1686} |
| `hostPssKb` | {'int': 1686} |
| `kind` | {'str': 1686} |
| `memAvailableKb` | {'int': 1686} |
| `memTotalKb` | {'int': 1686} |
| `otherPssKb` | {'int': 1686} |
| `processes` | {'int': 1686} |
| `pssFallbackProcesses` | {'int': 1686} |

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
| `cpuMillicores` | {'int': 146} |
| `display` | {'int': 147} |
| `kind` | {'str': 147} |
| `processes` | {'int': 147} |
| `pssKb` | {'int': 147} |
| `rendererMaxPssKb` | {'int': 147} |
| `renderers` | {'int': 147} |
| `tabs` | {'int': 147} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
